module UART_TX_TOP
# (parameter DATA_WIDTH = 8)
(
    input   wire                        clk, rst,
    input   wire                        parity_enable,
    input   wire                        parity_type,
    input   wire    [DATA_WIDTH-1:0]    parallel_data,
    input   wire                        data_valid,
    output  wire                        tx_out,
    output  wire                        busy
);

localparam  START_BIT = 1'b0,
            STOP_BIT = 1'b1,
            IDLE_BIT = 1'b1;

wire ser_done, ser_en, par_calc_en, ser_data, parity_bit;
wire [2:0] sel;
reg [DATA_WIDTH-1:0] DATA;
reg flag;
wire tx_busy;

always @(posedge clk or negedge rst)
begin
    if (!rst)
    begin
        DATA <= 0;
        flag <= 0;
    end
    else if (data_valid && !tx_busy)
    begin
        DATA <= parallel_data;
        flag <= 1;
    end
    else
        flag <= 0;
end

UART_TX_FSM F1
(
    .CLK(clk),
    .RST(rst),
    .PAR_EN(parity_enable),
    .SER_DONE(ser_done),
    .SER_EN(ser_en),
    .PAR_CALC_EN(par_calc_en),
    .DATA_VALID(flag),
    .MUX_SELECT(sel),
    .BUSY(tx_busy)    
);

UART_TX_Serializer S1 
(
    .CLK(clk),
    .RST(rst),
    .DATA_VALID(flag),
    .P_DATA(DATA),
    .EN(ser_en),
    .S_DATA(ser_data),
    .DONE(ser_done)
);

UART_TX_Parity_Calculator P1
(
    .CLK(clk),
    .RST(rst),
    .DATA(DATA),
    .TYPE(parity_type),
    .EN(par_calc_en),
    .PARITY_BIT(parity_bit)
);

UART_TX_MUX M1
(
    .SELECT(sel),
    .FIRST(START_BIT),
    .LAST(STOP_BIT),
    .DATA(ser_data),
    .PARITY(parity_bit),
    .IDLE(IDLE_BIT),
    .OUT(tx_out)
);

assign busy = tx_busy;

endmodule