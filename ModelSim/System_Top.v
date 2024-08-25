module System_Top
#(parameter OPSIZE = 8, OUT_SIZE = 16, DSIZE = 8, ASIZE = 4, NUM_STAGES = 2)
(
    input   wire    REF_CLK, UART_CLK, RST, RX_IN,
    output  wire    Stop_Error, Parity_Error, TX_OUT
);

wire RX_CLK, TX_CLK;
reg [DSIZE-1:0] rx_div_ratio;
wire fifo_w_inc, fifo_r_inc, fifo_full, fifo_empty;
wire alu_en, out_valid, gate_en, gated_clk;
wire sync_rst_1, sync_rst_2, rx_valid, sync_valid;
wire [DSIZE-1:0] rx_data, sync_data, tx_data;
wire [OUT_SIZE-1:0] alu_out;
wire [3:0] alu_fun;
wire rd_en, wr_en, rd_data_valid, tx_busy;
wire [ASIZE-1:0] address;
wire [DSIZE-1:0] rd_data, wr_data, fifo_wr_data;
wire [DSIZE-1:0] reg0, reg1, reg2, reg3;


always @ (*)
begin
    case (reg2[7:2])
        'd32 : rx_div_ratio = 'd1;
        'd16 : rx_div_ratio = 'd2;
        'd8  : rx_div_ratio = 'd4;
        default: rx_div_ratio = 'd1;
    endcase
end

RST_SYNC #(.NUM_STAGES(NUM_STAGES)) RST_SYNC_1
(
    .RST(RST), .CLK(REF_CLK),
    .SYNC_RST(sync_rst_1)
);

RST_SYNC #(.NUM_STAGES(NUM_STAGES)) RST_SYNC_2
(
    .RST(RST), .CLK(UART_CLK),
    .SYNC_RST(sync_rst_2)
);

DATA_SYNC #(.NUM_STAGES(NUM_STAGES), .BUS_WIDTH(DSIZE)) DATA_SYNC
(
    .RST(sync_rst_1), .CLK(REF_CLK),
    .unsync_bus(rx_data), .bus_enable(rx_valid),
    .sync_bus(sync_data), .enable_pulse_d(sync_valid)
);

ALU #(.OPSIZE(OPSIZE), .OUT_SIZE(OUT_SIZE)) ALU
(
    .CLK(gated_clk), .RST(sync_rst_1), .EN(alu_en),
    .A(reg0), .B(reg1), .ALU_FUN(alu_fun),
    .ALU_OUT(alu_out), .OUT_VALID(out_valid)
);

RegFile #(.DSIZE(DSIZE), .ASIZE(ASIZE)) RegFile
(
    .CLK(REF_CLK), .RST(sync_rst_1),
    .WrData(wr_data), .Address(address),
    .WrEn(wr_en), .RdEn(rd_en),
    .RdData(rd_data), .RdData_Valid(rd_data_valid),
    .REG0(reg0), .REG1(reg1), .REG2(reg2), .REG3(reg3)
);

CLK_GATE CLK_GATE
(
    .CLK(REF_CLK), .EN(gate_en),
    .GATED_CLK(gated_clk)
);

ClkDiv TX_CLK_DIV
(
    .i_ref_clk(UART_CLK), .i_rst_n(sync_rst_2),
    .i_clk_en(1'b1), .i_div_ratio(reg3),
    .o_div_clk(TX_CLK)
);

ClkDiv RX_CLK_DIV
(
    .i_ref_clk(UART_CLK), .i_rst_n(sync_rst_2),
    .i_clk_en(1'b1), .i_div_ratio(rx_div_ratio),
    .o_div_clk(RX_CLK)
);

SYS_CTRL #(.OPSIZE(OPSIZE), .OUT_SIZE(OUT_SIZE), .DSIZE(DSIZE), .ASIZE(ASIZE)) SYS_CTRL
(
    .CLK(REF_CLK), .RST(sync_rst_1),
    .ALU_OUT(alu_out), .RX_P_DATA(sync_data),
    .OUT_VALID(out_valid),
    .RX_D_VLD(sync_valid),
    .ALU_EN(alu_en), .GATE_EN(gate_en),
    .ALU_FUN(alu_fun), .FIFO_WR_DATA(fifo_wr_data),
    .Address(address), .WrEn(wr_en), .RdEn(rd_en),
    .FIFO_W_INC(fifo_w_inc), .WrData(wr_data), .RdData(rd_data), 
    .RdData_Valid(rd_data_valid), .FIFO_FULL(fifo_full)
);

FIFO_TOP #(.DSIZE(DSIZE), .PTR_SIZE(4)) FIFO_TOP
(
    .wclk(REF_CLK), .rclk(TX_CLK),
    .wrst_n(sync_rst_1), .rrst_n(sync_rst_2),
    .winc(fifo_w_inc), .rinc(fifo_r_inc),
    .wdata(fifo_wr_data),
    .rdata(tx_data),
    .wfull(fifo_full), .rempty(fifo_empty)
);

UART_RX_TOP #(.DSIZE(DSIZE)) UART_RX_TOP
(
    .CLK(RX_CLK), .RST(sync_rst_2),
    .PAR_EN(reg2[0]), .PAR_TYP(reg2[1]),
    .RX_IN(RX_IN),
    .PRESCALE(reg2[7:2]),
    .DATA_VALID(rx_valid), .Stop_Error(Stop_Error), .Parity_Error(Parity_Error),
    .P_DATA(rx_data)
);

UART_TX_TOP #(.DATA_WIDTH(DSIZE)) UART_TX_TOP
(
    .clk(TX_CLK), .rst(sync_rst_2),
    .parity_enable(reg2[0]), .parity_type(reg2[1]),
    .parallel_data(tx_data),
    .data_valid(!fifo_empty),
    .tx_out(TX_OUT), .busy(tx_busy)
);

PULSE_GEN PULSE_GEN
(
    .CLK(TX_CLK), .RST(sync_rst_2),
    .LVL_SIG(tx_busy), .PULSE_SIG(fifo_r_inc)
);

    
endmodule
