module System_Top (
	SE, 
	scan_clk, 
	scan_rst, 
	test_mode, 
	SI, 
	REF_CLK, 
	UART_CLK, 
	RST, 
	RX_IN, 
	Stop_Error, 
	Parity_Error, 
	TX_OUT, 
	SO);
   input SE;
   input scan_clk;
   input scan_rst;
   input test_mode;
   input [3:0] SI;
   input REF_CLK;
   input UART_CLK;
   input RST;
   input RX_IN;
   output Stop_Error;
   output Parity_Error;
   output TX_OUT;
   output [3:0] SO;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_clk__L6_N1;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N1;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N1;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N1;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N2;
   wire scan_clk__L2_N1;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire REF_SCAN_CLK__L2_N1;
   wire REF_SCAN_CLK__L2_N0;
   wire REF_SCAN_CLK__L1_N0;
   wire UART_SCAN_CLK__L7_N0;
   wire UART_SCAN_CLK__L6_N0;
   wire UART_SCAN_CLK__L5_N1;
   wire UART_SCAN_CLK__L5_N0;
   wire UART_SCAN_CLK__L4_N1;
   wire UART_SCAN_CLK__L4_N0;
   wire UART_SCAN_CLK__L3_N1;
   wire UART_SCAN_CLK__L3_N0;
   wire UART_SCAN_CLK__L2_N1;
   wire UART_SCAN_CLK__L2_N0;
   wire UART_SCAN_CLK__L1_N1;
   wire UART_SCAN_CLK__L1_N0;
   wire UART_RX_SCAN_CLK__L1_N0;
   wire UART_TX_SCAN_CLK__L1_N0;
   wire FE_OFN6_SE;
   wire FE_OFN2_SYNC_UART_SCAN_RST;
   wire FE_OFN1_SYNC_REF_SCAN_RST;
   wire FE_OFN0_SYNC_REF_SCAN_RST;
   wire REF_SCAN_CLK;
   wire UART_SCAN_CLK;
   wire RX_CLK;
   wire UART_RX_SCAN_CLK;
   wire TX_CLK;
   wire UART_TX_SCAN_CLK;
   wire RSTN_SCAN_RST;
   wire SYNC_REF_RST;
   wire SYNC_REF_SCAN_RST;
   wire SYNC_UART_RST;
   wire SYNC_UART_SCAN_RST;
   wire rx_valid;
   wire sync_valid;
   wire gated_clk;
   wire alu_en;
   wire out_valid;
   wire wr_en;
   wire rd_en;
   wire rd_data_valid;
   wire _0_net_;
   wire gate_en;
   wire fifo_w_inc;
   wire fifo_full;
   wire fifo_r_inc;
   wire fifo_empty;
   wire tx_busy;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n8;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n18;
   wire n19;
   wire n20;
   wire n23;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire [7:0] reg2;
   wire [2:0] rx_div_ratio;
   wire [7:0] rx_data;
   wire [7:0] sync_data;
   wire [7:0] reg0;
   wire [7:0] reg1;
   wire [3:0] alu_fun;
   wire [15:0] alu_out;
   wire [7:0] wr_data;
   wire [3:0] address;
   wire [7:0] rd_data;
   wire [7:0] reg3;
   wire [7:0] fifo_wr_data;
   wire [7:0] tx_data;

   assign SO[2] = reg3[0] ;

   CLKINVX40M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX40M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   INVX2M scan_clk__L6_I1 (.Y(scan_clk__L6_N1), 
	.A(scan_clk__L5_N1));
   INVX2M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX1M scan_clk__L5_I1 (.Y(scan_clk__L5_N1), 
	.A(scan_clk__L4_N1));
   INVXLM scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX1M scan_clk__L4_I1 (.Y(scan_clk__L4_N1), 
	.A(scan_clk__L3_N1));
   INVXLM scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX1M scan_clk__L3_I1 (.Y(scan_clk__L3_N1), 
	.A(scan_clk__L2_N2));
   CLKBUFX1M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N1));
   BUFX3M scan_clk__L2_I2 (.Y(scan_clk__L2_N2), 
	.A(scan_clk__L1_N0));
   BUFX5M scan_clk__L2_I1 (.Y(scan_clk__L2_N1), 
	.A(scan_clk__L1_N0));
   INVX2M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX40M REF_SCAN_CLK__L2_I1 (.Y(REF_SCAN_CLK__L2_N1), 
	.A(REF_SCAN_CLK__L1_N0));
   CLKINVX40M REF_SCAN_CLK__L2_I0 (.Y(REF_SCAN_CLK__L2_N0), 
	.A(REF_SCAN_CLK__L1_N0));
   CLKINVX40M REF_SCAN_CLK__L1_I0 (.Y(REF_SCAN_CLK__L1_N0), 
	.A(REF_SCAN_CLK));
   CLKINVX32M UART_SCAN_CLK__L7_I0 (.Y(UART_SCAN_CLK__L7_N0), 
	.A(UART_SCAN_CLK__L6_N0));
   CLKINVX40M UART_SCAN_CLK__L6_I0 (.Y(UART_SCAN_CLK__L6_N0), 
	.A(UART_SCAN_CLK__L5_N1));
   CLKBUFX40M UART_SCAN_CLK__L5_I1 (.Y(UART_SCAN_CLK__L5_N1), 
	.A(UART_SCAN_CLK__L4_N1));
   CLKINVX32M UART_SCAN_CLK__L5_I0 (.Y(UART_SCAN_CLK__L5_N0), 
	.A(UART_SCAN_CLK__L4_N0));
   INVXLM UART_SCAN_CLK__L4_I1 (.Y(UART_SCAN_CLK__L4_N1), 
	.A(UART_SCAN_CLK__L3_N1));
   CLKINVX40M UART_SCAN_CLK__L4_I0 (.Y(UART_SCAN_CLK__L4_N0), 
	.A(UART_SCAN_CLK__L3_N0));
   INVXLM UART_SCAN_CLK__L3_I1 (.Y(UART_SCAN_CLK__L3_N1), 
	.A(UART_SCAN_CLK__L2_N1));
   CLKBUFX40M UART_SCAN_CLK__L3_I0 (.Y(UART_SCAN_CLK__L3_N0), 
	.A(UART_SCAN_CLK__L2_N0));
   CLKBUFX1M UART_SCAN_CLK__L2_I1 (.Y(UART_SCAN_CLK__L2_N1), 
	.A(UART_SCAN_CLK__L1_N1));
   CLKBUFX40M UART_SCAN_CLK__L2_I0 (.Y(UART_SCAN_CLK__L2_N0), 
	.A(UART_SCAN_CLK__L1_N0));
   BUFX10M UART_SCAN_CLK__L1_I1 (.Y(UART_SCAN_CLK__L1_N1), 
	.A(UART_SCAN_CLK));
   CLKBUFX40M UART_SCAN_CLK__L1_I0 (.Y(UART_SCAN_CLK__L1_N0), 
	.A(UART_SCAN_CLK));
   CLKBUFX40M UART_RX_SCAN_CLK__L1_I0 (.Y(UART_RX_SCAN_CLK__L1_N0), 
	.A(UART_RX_SCAN_CLK));
   CLKBUFX40M UART_TX_SCAN_CLK__L1_I0 (.Y(UART_TX_SCAN_CLK__L1_N0), 
	.A(UART_TX_SCAN_CLK));
   BUFX4M FE_OFC6_SE (.Y(FE_OFN6_SE), 
	.A(SE));
   BUFX4M FE_OFC2_SYNC_UART_SCAN_RST (.Y(FE_OFN2_SYNC_UART_SCAN_RST), 
	.A(SYNC_UART_SCAN_RST));
   CLKBUFX8M FE_OFC1_SYNC_REF_SCAN_RST (.Y(FE_OFN1_SYNC_REF_SCAN_RST), 
	.A(FE_OFN0_SYNC_REF_SCAN_RST));
   CLKBUFX8M FE_OFC0_SYNC_REF_SCAN_RST (.Y(FE_OFN0_SYNC_REF_SCAN_RST), 
	.A(SYNC_REF_SCAN_RST));
   AND2X2M U11 (.Y(rx_div_ratio[1]), 
	.B(n4), 
	.A(n3));
   AND2X2M U12 (.Y(rx_div_ratio[2]), 
	.B(n3), 
	.A(n2));
   OAI21X2M U13 (.Y(rx_div_ratio[0]), 
	.B0(n3), 
	.A1(n4), 
	.A0(n2));
   OR2X2M U14 (.Y(_0_net_), 
	.B(n5), 
	.A(gate_en));
   NOR3BX2M U15 (.Y(n4), 
	.C(reg2[7]), 
	.B(reg2[5]), 
	.AN(reg2[6]));
   NOR3BX2M U16 (.Y(n2), 
	.C(reg2[7]), 
	.B(reg2[6]), 
	.AN(reg2[5]));
   NOR3X2M U17 (.Y(n3), 
	.C(reg2[2]), 
	.B(reg2[3]), 
	.A(reg2[4]));
   INVX2M U18 (.Y(n8), 
	.A(fifo_empty));
   BUFX2M U21 (.Y(n5), 
	.A(test_mode));
   DLY1X4M U23 (.Y(n26), 
	.A(n34));
   DLY1X4M U24 (.Y(n27), 
	.A(n33));
   INVXLM U25 (.Y(n28), 
	.A(n40));
   CLKINVX2M U26 (.Y(n29), 
	.A(n28));
   CLKINVX2M U27 (.Y(n30), 
	.A(n28));
   CLKINVX2M U28 (.Y(n31), 
	.A(n28));
   INVXLM U29 (.Y(n32), 
	.A(n41));
   INVXLM U30 (.Y(n33), 
	.A(n32));
   INVXLM U31 (.Y(n34), 
	.A(n32));
   CLKINVX2M U32 (.Y(n35), 
	.A(n32));
   INVXLM U33 (.Y(n36), 
	.A(n39));
   INVXLM U34 (.Y(n37), 
	.A(n36));
   INVXLM U35 (.Y(n38), 
	.A(FE_OFN6_SE));
   INVXLM U36 (.Y(n39), 
	.A(n38));
   INVXLM U37 (.Y(n40), 
	.A(n38));
   INVXLM U38 (.Y(n41), 
	.A(n38));
   mux2X1_1 U0_mux2X1 (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk__L6_N0), 
	.SEL(n5), 
	.OUT(REF_SCAN_CLK));
   mux2X1_4 U1_mux2X1 (.IN_0(UART_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N0), 
	.SEL(n5), 
	.OUT(UART_SCAN_CLK));
   mux2X1_3 U2_mux2X1 (.IN_0(RX_CLK), 
	.IN_1(scan_clk__L6_N1), 
	.SEL(n5), 
	.OUT(UART_RX_SCAN_CLK));
   mux2X1_2 U3_mux2X1 (.IN_0(TX_CLK), 
	.IN_1(scan_clk__L6_N1), 
	.SEL(n5), 
	.OUT(UART_TX_SCAN_CLK));
   mux2X1_0 U4_mux2X1 (.IN_0(RST), 
	.IN_1(scan_rst), 
	.SEL(n5), 
	.OUT(RSTN_SCAN_RST));
   mux2X1_6 U5_mux2X1 (.IN_0(SYNC_REF_RST), 
	.IN_1(scan_rst), 
	.SEL(n5), 
	.OUT(SYNC_REF_SCAN_RST));
   mux2X1_5 U6_mux2X1 (.IN_0(SYNC_UART_RST), 
	.IN_1(scan_rst), 
	.SEL(n5), 
	.OUT(SYNC_UART_SCAN_RST));
   RST_SYNC_test_0 RST_SYNC_1 (.RST(RSTN_SCAN_RST), 
	.CLK(REF_SCAN_CLK__L2_N0), 
	.SYNC_RST(SYNC_REF_RST), 
	.test_si(n19), 
	.test_se(n37));
   RST_SYNC_test_1 RST_SYNC_2 (.RST(RSTN_SCAN_RST), 
	.CLK(UART_SCAN_CLK__L7_N0), 
	.SYNC_RST(SYNC_UART_RST), 
	.test_si(SYNC_REF_RST), 
	.test_se(n37));
   DATA_SYNC_test_1 DATA_SYNC (.CLK(REF_SCAN_CLK__L2_N0), 
	.RST(SYNC_REF_SCAN_RST), 
	.unsync_bus({ rx_data[7],
		rx_data[6],
		rx_data[5],
		rx_data[4],
		rx_data[3],
		rx_data[2],
		rx_data[1],
		rx_data[0] }), 
	.bus_enable(rx_valid), 
	.sync_bus({ sync_data[7],
		sync_data[6],
		sync_data[5],
		sync_data[4],
		sync_data[3],
		sync_data[2],
		sync_data[1],
		sync_data[0] }), 
	.enable_pulse_d(sync_valid), 
	.test_si(out_valid), 
	.test_so(n23), 
	.test_se(n35));
   ALU_test_1 ALU (.CLK(gated_clk), 
	.RST(FE_OFN1_SYNC_REF_SCAN_RST), 
	.EN(alu_en), 
	.A({ reg0[7],
		reg0[6],
		reg0[5],
		reg0[4],
		reg0[3],
		reg0[2],
		reg0[1],
		reg0[0] }), 
	.B({ reg1[7],
		reg1[6],
		reg1[5],
		reg1[4],
		reg1[3],
		reg1[2],
		reg1[1],
		reg1[0] }), 
	.ALU_FUN({ alu_fun[3],
		alu_fun[2],
		alu_fun[1],
		alu_fun[0] }), 
	.ALU_OUT({ alu_out[15],
		alu_out[14],
		alu_out[13],
		alu_out[12],
		alu_out[11],
		alu_out[10],
		alu_out[9],
		alu_out[8],
		alu_out[7],
		alu_out[6],
		alu_out[5],
		alu_out[4],
		alu_out[3],
		alu_out[2],
		alu_out[1],
		alu_out[0] }), 
	.OUT_VALID(out_valid), 
	.test_si(SI[3]), 
	.test_se(n30));
   RegFile_test_1 RegFile (.CLK(REF_SCAN_CLK__L2_N0), 
	.RST(SYNC_REF_SCAN_RST), 
	.WrData({ wr_data[7],
		wr_data[6],
		wr_data[5],
		wr_data[4],
		wr_data[3],
		wr_data[2],
		wr_data[1],
		wr_data[0] }), 
	.Address({ address[3],
		address[2],
		address[1],
		address[0] }), 
	.WrEn(wr_en), 
	.RdEn(rd_en), 
	.RdData({ rd_data[7],
		rd_data[6],
		rd_data[5],
		rd_data[4],
		rd_data[3],
		rd_data[2],
		rd_data[1],
		rd_data[0] }), 
	.RdData_Valid(rd_data_valid), 
	.REG0({ reg0[7],
		reg0[6],
		reg0[5],
		reg0[4],
		reg0[3],
		reg0[2],
		reg0[1],
		reg0[0] }), 
	.REG1({ reg1[7],
		reg1[6],
		reg1[5],
		reg1[4],
		reg1[3],
		reg1[2],
		reg1[1],
		reg1[0] }), 
	.REG2({ reg2[7],
		reg2[6],
		reg2[5],
		reg2[4],
		reg2[3],
		reg2[2],
		reg2[1],
		reg2[0] }), 
	.REG3({ reg3[7],
		reg3[6],
		reg3[5],
		reg3[4],
		reg3[3],
		reg3[2],
		reg3[1],
		reg3[0] }), 
	.test_si3(SI[0]), 
	.test_si2(SI[1]), 
	.test_si1(n18), 
	.test_so2(n14), 
	.test_so1(SO[1]), 
	.test_se(FE_OFN6_SE), 
	.FE_OFN0_SYNC_REF_SCAN_RST(FE_OFN0_SYNC_REF_SCAN_RST), 
	.FE_OFN1_SYNC_REF_SCAN_RST(FE_OFN1_SYNC_REF_SCAN_RST));
   CLK_GATE CLK_GATE (.CLK(REF_SCAN_CLK__L2_N1), 
	.EN(_0_net_), 
	.GATED_CLK(gated_clk));
   ClkDiv_test_1 TX_CLK_DIV (.i_ref_clk(UART_SCAN_CLK), 
	.i_rst_n(SYNC_UART_SCAN_RST), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ reg3[7],
		reg3[6],
		reg3[5],
		reg3[4],
		reg3[3],
		reg3[2],
		reg3[1],
		reg3[0] }), 
	.o_div_clk(TX_CLK), 
	.test_si(n13), 
	.test_so(n12), 
	.test_se(n29), 
	.UART_SCAN_CLK__L5_N0(UART_SCAN_CLK__L5_N0), 
	.UART_SCAN_CLK__L7_N0(UART_SCAN_CLK__L7_N0));
   ClkDiv_test_0 RX_CLK_DIV (.i_ref_clk(UART_SCAN_CLK), 
	.i_rst_n(SYNC_UART_SCAN_RST), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		rx_div_ratio[2],
		rx_div_ratio[1],
		rx_div_ratio[0] }), 
	.o_div_clk(RX_CLK), 
	.test_si(SYNC_UART_RST), 
	.test_so(n18), 
	.test_se(n29), 
	.UART_SCAN_CLK__L5_N0(UART_SCAN_CLK__L5_N0), 
	.UART_SCAN_CLK__L7_N0(UART_SCAN_CLK__L7_N0));
   SYS_CTRL_test_1 SYS_CTRL (.CLK(REF_SCAN_CLK__L2_N0), 
	.RST(FE_OFN1_SYNC_REF_SCAN_RST), 
	.ALU_OUT({ alu_out[15],
		alu_out[14],
		alu_out[13],
		alu_out[12],
		alu_out[11],
		alu_out[10],
		alu_out[9],
		alu_out[8],
		alu_out[7],
		alu_out[6],
		alu_out[5],
		alu_out[4],
		alu_out[3],
		alu_out[2],
		alu_out[1],
		alu_out[0] }), 
	.RdData({ rd_data[7],
		rd_data[6],
		rd_data[5],
		rd_data[4],
		rd_data[3],
		rd_data[2],
		rd_data[1],
		rd_data[0] }), 
	.RX_P_DATA({ sync_data[7],
		sync_data[6],
		sync_data[5],
		sync_data[4],
		sync_data[3],
		sync_data[2],
		sync_data[1],
		sync_data[0] }), 
	.OUT_VALID(out_valid), 
	.RX_D_VLD(sync_valid), 
	.RdData_Valid(rd_data_valid), 
	.FIFO_FULL(fifo_full), 
	.ALU_EN(alu_en), 
	.GATE_EN(gate_en), 
	.ALU_FUN({ alu_fun[3],
		alu_fun[2],
		alu_fun[1],
		alu_fun[0] }), 
	.FIFO_WR_DATA({ fifo_wr_data[7],
		fifo_wr_data[6],
		fifo_wr_data[5],
		fifo_wr_data[4],
		fifo_wr_data[3],
		fifo_wr_data[2],
		fifo_wr_data[1],
		fifo_wr_data[0] }), 
	.WrData({ wr_data[7],
		wr_data[6],
		wr_data[5],
		wr_data[4],
		wr_data[3],
		wr_data[2],
		wr_data[1],
		wr_data[0] }), 
	.Address({ address[3],
		address[2],
		address[1],
		address[0] }), 
	.WrEn(wr_en), 
	.RdEn(rd_en), 
	.FIFO_W_INC(fifo_w_inc), 
	.test_si(n14), 
	.test_so(n13), 
	.test_se(n31));
   FIFO_TOP_test_1 FIFO_TOP (.wclk(REF_SCAN_CLK__L2_N0), 
	.rclk(UART_TX_SCAN_CLK__L1_N0), 
	.wrst_n(FE_OFN1_SYNC_REF_SCAN_RST), 
	.rrst_n(SYNC_UART_SCAN_RST), 
	.rinc(fifo_r_inc), 
	.winc(fifo_w_inc), 
	.wdata({ fifo_wr_data[7],
		fifo_wr_data[6],
		fifo_wr_data[5],
		fifo_wr_data[4],
		fifo_wr_data[3],
		fifo_wr_data[2],
		fifo_wr_data[1],
		fifo_wr_data[0] }), 
	.rdata({ tx_data[7],
		tx_data[6],
		tx_data[5],
		tx_data[4],
		tx_data[3],
		tx_data[2],
		tx_data[1],
		tx_data[0] }), 
	.wfull(fifo_full), 
	.rempty(fifo_empty), 
	.test_si2(SI[2]), 
	.test_si1(n23), 
	.test_so2(n20), 
	.test_so1(SO[3]), 
	.test_se(FE_OFN6_SE), 
	.FE_OFN2_SYNC_UART_SCAN_RST(FE_OFN2_SYNC_UART_SCAN_RST));
   UART_RX_TOP_test_1 UART_RX_TOP (.CLK(UART_RX_SCAN_CLK__L1_N0), 
	.RST(SYNC_UART_SCAN_RST), 
	.PAR_EN(reg2[0]), 
	.PAR_TYP(reg2[1]), 
	.RX_IN(RX_IN), 
	.PRESCALE({ reg2[7],
		reg2[6],
		reg2[5],
		reg2[4],
		reg2[3],
		reg2[2] }), 
	.DATA_VALID(rx_valid), 
	.Stop_Error(SO[0]), 
	.Parity_Error(Parity_Error), 
	.P_DATA({ rx_data[7],
		rx_data[6],
		rx_data[5],
		rx_data[4],
		rx_data[3],
		rx_data[2],
		rx_data[1],
		rx_data[0] }), 
	.test_si2(n10), 
	.test_si1(n12), 
	.test_so1(n11), 
	.test_se(n26), 
	.FE_PT1_n3(n3));
   UART_TX_TOP_test_1 UART_TX_TOP (.clk(UART_TX_SCAN_CLK__L1_N0), 
	.rst(FE_OFN2_SYNC_UART_SCAN_RST), 
	.parity_enable(reg2[0]), 
	.parity_type(reg2[1]), 
	.parallel_data({ tx_data[7],
		tx_data[6],
		tx_data[5],
		tx_data[4],
		tx_data[3],
		tx_data[2],
		tx_data[1],
		tx_data[0] }), 
	.data_valid(n8), 
	.tx_out(TX_OUT), 
	.busy(tx_busy), 
	.test_si(n11), 
	.test_so(n10), 
	.test_se(n27));
   PULSE_GEN_test_1 PULSE_GEN (.CLK(UART_TX_SCAN_CLK__L1_N0), 
	.RST(SYNC_UART_SCAN_RST), 
	.LVL_SIG(tx_busy), 
	.PULSE_SIG(fifo_r_inc), 
	.test_si(n20), 
	.test_so(n19), 
	.test_se(n31));
   BUFX2M U22 (.Y(Stop_Error), 
	.A(SO[0]));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Aug 19 03:34:03 2024
/////////////////////////////////////////////////////////////
module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X2M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X2M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   MX2X2M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN6_scan_rst;
   wire FE_PHN3_scan_rst;
   wire FE_PHN2_RST;
   wire FE_PHN1_RST;
   wire FE_PHN0_RST;

   DLY4X1M FE_PHC6_scan_rst (.Y(FE_PHN6_scan_rst), 
	.A(FE_PHN3_scan_rst));
   DLY4X1M FE_PHC3_scan_rst (.Y(FE_PHN3_scan_rst), 
	.A(IN_1));
   DLY4X1M FE_PHC2_RST (.Y(FE_PHN2_RST), 
	.A(FE_PHN1_RST));
   DLY4X1M FE_PHC1_RST (.Y(FE_PHN1_RST), 
	.A(FE_PHN0_RST));
   DLY4X1M FE_PHC0_RST (.Y(FE_PHN0_RST), 
	.A(IN_0));
   MX2X2M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(FE_PHN6_scan_rst), 
	.A(FE_PHN2_RST));
endmodule

module mux2X1_6 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN8_scan_rst;
   wire FE_PHN5_scan_rst;

   DLY4X1M FE_PHC8_scan_rst (.Y(FE_PHN8_scan_rst), 
	.A(FE_PHN5_scan_rst));
   DLY4X1M FE_PHC5_scan_rst (.Y(FE_PHN5_scan_rst), 
	.A(IN_1));
   CLKMX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(FE_PHN8_scan_rst), 
	.A(IN_0));
endmodule

module mux2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN7_scan_rst;
   wire FE_PHN4_scan_rst;

   DLY4X1M FE_PHC7_scan_rst (.Y(FE_PHN7_scan_rst), 
	.A(FE_PHN4_scan_rst));
   DLY4X1M FE_PHC4_scan_rst (.Y(FE_PHN4_scan_rst), 
	.A(IN_1));
   MX2X8M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(FE_PHN7_scan_rst), 
	.A(IN_0));
endmodule

module RST_SYNC_test_0 (
	RST, 
	CLK, 
	SYNC_RST, 
	test_si, 
	test_se);
   input RST;
   input CLK;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[1]  (.SI(\sync_reg[0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\sync_reg[0] ), 
	.CK(CLK));
endmodule

module RST_SYNC_test_1 (
	RST, 
	CLK, 
	SYNC_RST, 
	test_si, 
	test_se);
   input RST;
   input CLK;
   output SYNC_RST;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[1]  (.SI(\sync_reg[0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_RST), 
	.D(\sync_reg[0] ), 
	.CK(CLK));
endmodule

module DATA_SYNC_test_1 (
	CLK, 
	RST, 
	unsync_bus, 
	bus_enable, 
	sync_bus, 
	enable_pulse_d, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input [7:0] unsync_bus;
   input bus_enable;
   output [7:0] sync_bus;
   output enable_pulse_d;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire enable_flop;
   wire n1;
   wire n4;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n22;
   wire [1:0] sync_reg;

   assign test_so = sync_reg[1] ;

   SDFFRQX2M enable_flop_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_flop), 
	.D(sync_reg[1]), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[7]), 
	.D(n18), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[1]  (.SI(sync_reg[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_reg[1]), 
	.D(sync_reg[0]), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[3]), 
	.D(n10), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[6]), 
	.D(n16), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[5]), 
	.D(n14), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[4]), 
	.D(n12), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[2]), 
	.D(n8), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[1]), 
	.D(n6), 
	.CK(CLK));
   SDFFRQX2M \sync_bus_reg[0]  (.SI(enable_pulse_d), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(n4), 
	.CK(CLK));
   SDFFRQX2M enable_pulse_d_reg (.SI(enable_flop), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_pulse_d), 
	.D(n22), 
	.CK(CLK));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(sync_bus[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_reg[0]), 
	.D(bus_enable), 
	.CK(CLK));
   INVX2M U3 (.Y(n22), 
	.A(n1));
   NAND2BX2M U4 (.Y(n1), 
	.B(sync_reg[1]), 
	.AN(enable_flop));
   AO22X1M U5 (.Y(n4), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n22), 
	.A0(unsync_bus[0]));
   AO22X1M U6 (.Y(n6), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n22), 
	.A0(unsync_bus[1]));
   AO22X1M U7 (.Y(n8), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n22), 
	.A0(unsync_bus[2]));
   AO22X1M U8 (.Y(n10), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n22), 
	.A0(unsync_bus[3]));
   AO22X1M U9 (.Y(n12), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n22), 
	.A0(unsync_bus[4]));
   AO22X1M U10 (.Y(n14), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n22), 
	.A0(unsync_bus[5]));
   AO22X1M U11 (.Y(n16), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n22), 
	.A0(unsync_bus[6]));
   AO22X1M U12 (.Y(n18), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n22), 
	.A0(unsync_bus[7]));
endmodule

module ALU_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n162, 
	n182, 
	n189, 
	n187, 
	n183, 
	n179, 
	n161, 
	n188, 
	n164, 
	n180, 
	n186, 
	n185, 
	n184, 
	n181);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n162;
   input n182;
   input n189;
   input n187;
   input n183;
   input n179;
   input n161;
   input n188;
   input n164;
   input n180;
   input n186;
   input n185;
   input n184;
   input n181;

   // Internal wires
   wire \u_div/SumTmp[1][0] ;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][3] ;
   wire \u_div/SumTmp[1][4] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[1][6] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][0] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][0] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][0] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/SumTmp[7][0] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][2] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[6][2] ;
   wire \u_div/CryTmp[7][1] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[3][1] ;
   wire \u_div/PartRem[3][2] ;
   wire \u_div/PartRem[3][3] ;
   wire \u_div/PartRem[3][4] ;
   wire \u_div/PartRem[3][5] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[4][2] ;
   wire \u_div/PartRem[4][3] ;
   wire \u_div/PartRem[4][4] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[5][2] ;
   wire \u_div/PartRem[5][3] ;
   wire \u_div/PartRem[6][1] ;
   wire \u_div/PartRem[6][2] ;
   wire \u_div/PartRem[7][1] ;
   wire n1;
   wire n2;
   wire n3;
   wire n5;
   wire n7;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;

   ADDFX2M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(n14), 
	.A(\u_div/PartRem[3][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_3  (.S(\u_div/SumTmp[4][3] ), 
	.CO(\u_div/CryTmp[4][4] ), 
	.CI(\u_div/CryTmp[4][3] ), 
	.B(n16), 
	.A(\u_div/PartRem[5][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_2  (.S(\u_div/SumTmp[5][2] ), 
	.CO(\u_div/CryTmp[5][3] ), 
	.CI(\u_div/CryTmp[5][2] ), 
	.B(n17), 
	.A(\u_div/PartRem[6][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_6_1  (.S(\u_div/SumTmp[6][1] ), 
	.CO(\u_div/CryTmp[6][2] ), 
	.CI(\u_div/CryTmp[6][1] ), 
	.B(n18), 
	.A(\u_div/PartRem[7][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_4  (.S(\u_div/SumTmp[3][4] ), 
	.CO(\u_div/CryTmp[3][5] ), 
	.CI(\u_div/CryTmp[3][4] ), 
	.B(n15), 
	.A(\u_div/PartRem[4][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(n14), 
	.A(\u_div/PartRem[1][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n13), 
	.A(\u_div/PartRem[1][6] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(n12), 
	.A(\u_div/PartRem[1][7] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/CryTmp[0][1] ), 
	.B(n18), 
	.A(\u_div/PartRem[1][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(n18), 
	.A(\u_div/PartRem[2][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(n18), 
	.A(\u_div/PartRem[3][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(n18), 
	.A(\u_div/PartRem[4][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_1  (.S(\u_div/SumTmp[4][1] ), 
	.CO(\u_div/CryTmp[4][2] ), 
	.CI(\u_div/CryTmp[4][1] ), 
	.B(n18), 
	.A(\u_div/PartRem[5][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_5_1  (.S(\u_div/SumTmp[5][1] ), 
	.CO(\u_div/CryTmp[5][2] ), 
	.CI(\u_div/CryTmp[5][1] ), 
	.B(n18), 
	.A(\u_div/PartRem[6][1] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(n17), 
	.A(\u_div/PartRem[1][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(n16), 
	.A(\u_div/PartRem[1][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(n15), 
	.A(\u_div/PartRem[1][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(n14), 
	.A(\u_div/PartRem[2][5] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_4  (.S(\u_div/SumTmp[1][4] ), 
	.CO(\u_div/CryTmp[1][5] ), 
	.CI(\u_div/CryTmp[1][4] ), 
	.B(n15), 
	.A(\u_div/PartRem[2][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_3  (.S(\u_div/SumTmp[1][3] ), 
	.CO(\u_div/CryTmp[1][4] ), 
	.CI(\u_div/CryTmp[1][3] ), 
	.B(n16), 
	.A(\u_div/PartRem[2][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(n15), 
	.A(\u_div/PartRem[3][4] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(n17), 
	.A(\u_div/PartRem[2][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(n16), 
	.A(\u_div/PartRem[3][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_2_2  (.S(\u_div/SumTmp[2][2] ), 
	.CO(\u_div/CryTmp[2][3] ), 
	.CI(\u_div/CryTmp[2][2] ), 
	.B(n17), 
	.A(\u_div/PartRem[3][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(n16), 
	.A(\u_div/PartRem[4][3] ));
   ADDFX2M \u_div/u_fa_PartRem_0_3_2  (.S(\u_div/SumTmp[3][2] ), 
	.CO(\u_div/CryTmp[3][3] ), 
	.CI(\u_div/CryTmp[3][2] ), 
	.B(n17), 
	.A(\u_div/PartRem[4][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_4_2  (.S(\u_div/SumTmp[4][2] ), 
	.CO(\u_div/CryTmp[4][3] ), 
	.CI(\u_div/CryTmp[4][2] ), 
	.B(n17), 
	.A(\u_div/PartRem[5][2] ));
   ADDFX2M \u_div/u_fa_PartRem_0_1_6  (.S(\u_div/SumTmp[1][6] ), 
	.CO(\u_div/CryTmp[1][7] ), 
	.CI(\u_div/CryTmp[1][6] ), 
	.B(n13), 
	.A(\u_div/PartRem[2][6] ));
   INVX2M U1 (.Y(n19), 
	.A(b[0]));
   XNOR2X2M U2 (.Y(\u_div/SumTmp[7][0] ), 
	.B(a[7]), 
	.A(n19));
   XNOR2X2M U3 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(n19));
   XNOR2X2M U4 (.Y(\u_div/SumTmp[5][0] ), 
	.B(a[5]), 
	.A(n19));
   XNOR2X2M U5 (.Y(\u_div/SumTmp[4][0] ), 
	.B(a[4]), 
	.A(n19));
   XNOR2X2M U6 (.Y(\u_div/SumTmp[3][0] ), 
	.B(a[3]), 
	.A(n19));
   XNOR2X2M U7 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(n19));
   OR2X2M U8 (.Y(\u_div/CryTmp[7][1] ), 
	.B(a[7]), 
	.A(n19));
   XNOR2X2M U9 (.Y(\u_div/SumTmp[1][0] ), 
	.B(a[1]), 
	.A(n19));
   INVX2M U10 (.Y(n18), 
	.A(b[1]));
   NAND2X2M U11 (.Y(\u_div/CryTmp[5][1] ), 
	.B(n3), 
	.A(n2));
   INVX2M U12 (.Y(n3), 
	.A(a[5]));
   INVX2M U13 (.Y(n2), 
	.A(n19));
   NAND2X2M U14 (.Y(\u_div/CryTmp[4][1] ), 
	.B(n5), 
	.A(n2));
   INVX2M U15 (.Y(n5), 
	.A(a[4]));
   NAND2X2M U17 (.Y(\u_div/CryTmp[3][1] ), 
	.B(n7), 
	.A(n2));
   INVX2M U18 (.Y(n7), 
	.A(a[3]));
   NAND2X2M U20 (.Y(\u_div/CryTmp[2][1] ), 
	.B(n9), 
	.A(n2));
   INVX2M U21 (.Y(n9), 
	.A(a[2]));
   NAND2X2M U23 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n10), 
	.A(n2));
   INVX2M U24 (.Y(n10), 
	.A(a[1]));
   NAND2X2M U25 (.Y(\u_div/CryTmp[0][1] ), 
	.B(n11), 
	.A(n2));
   INVX2M U26 (.Y(n11), 
	.A(a[0]));
   NAND2X2M U27 (.Y(\u_div/CryTmp[6][1] ), 
	.B(n1), 
	.A(n2));
   INVX2M U28 (.Y(n1), 
	.A(a[6]));
   INVX2M U29 (.Y(n13), 
	.A(b[6]));
   INVX2M U30 (.Y(n17), 
	.A(b[2]));
   INVX2M U31 (.Y(n16), 
	.A(b[3]));
   INVX2M U32 (.Y(n15), 
	.A(b[4]));
   INVX2M U33 (.Y(n14), 
	.A(b[5]));
   INVX2M U34 (.Y(n12), 
	.A(b[7]));
   CLKMX2X2M U35 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][6] ), 
	.A(\u_div/PartRem[2][6] ));
   CLKMX2X2M U36 (.Y(\u_div/PartRem[2][6] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(\u_div/PartRem[3][5] ));
   CLKMX2X2M U37 (.Y(\u_div/PartRem[3][5] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(\u_div/PartRem[4][4] ));
   CLKMX2X2M U38 (.Y(\u_div/PartRem[4][4] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(\u_div/PartRem[5][3] ));
   CLKMX2X2M U39 (.Y(\u_div/PartRem[5][3] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(\u_div/PartRem[6][2] ));
   CLKMX2X2M U40 (.Y(\u_div/PartRem[6][2] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][1] ), 
	.A(\u_div/PartRem[7][1] ));
   CLKMX2X2M U41 (.Y(\u_div/PartRem[7][1] ), 
	.S0(quotient[7]), 
	.B(\u_div/SumTmp[7][0] ), 
	.A(a[7]));
   CLKMX2X2M U42 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][5] ), 
	.A(\u_div/PartRem[2][5] ));
   CLKMX2X2M U43 (.Y(\u_div/PartRem[2][5] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(\u_div/PartRem[3][4] ));
   CLKMX2X2M U44 (.Y(\u_div/PartRem[3][4] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(\u_div/PartRem[4][3] ));
   CLKMX2X2M U45 (.Y(\u_div/PartRem[4][3] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(\u_div/PartRem[5][2] ));
   CLKMX2X2M U46 (.Y(\u_div/PartRem[5][2] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][1] ), 
	.A(\u_div/PartRem[6][1] ));
   CLKMX2X2M U47 (.Y(\u_div/PartRem[6][1] ), 
	.S0(quotient[6]), 
	.B(\u_div/SumTmp[6][0] ), 
	.A(a[6]));
   CLKMX2X2M U48 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   CLKMX2X2M U49 (.Y(\u_div/PartRem[2][4] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(\u_div/PartRem[3][3] ));
   CLKMX2X2M U50 (.Y(\u_div/PartRem[3][3] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(\u_div/PartRem[4][2] ));
   CLKMX2X2M U51 (.Y(\u_div/PartRem[4][2] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][1] ), 
	.A(\u_div/PartRem[5][1] ));
   CLKMX2X2M U52 (.Y(\u_div/PartRem[5][1] ), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][0] ), 
	.A(a[5]));
   CLKMX2X2M U53 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   CLKMX2X2M U54 (.Y(\u_div/PartRem[2][3] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(\u_div/PartRem[3][2] ));
   CLKMX2X2M U55 (.Y(\u_div/PartRem[3][2] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   CLKMX2X2M U56 (.Y(\u_div/PartRem[4][1] ), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][0] ), 
	.A(a[4]));
   CLKMX2X2M U57 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][2] ), 
	.A(\u_div/PartRem[2][2] ));
   CLKMX2X2M U58 (.Y(\u_div/PartRem[2][2] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(\u_div/PartRem[3][1] ));
   CLKMX2X2M U59 (.Y(\u_div/PartRem[3][1] ), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][0] ), 
	.A(a[3]));
   CLKMX2X2M U60 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][1] ), 
	.A(\u_div/PartRem[2][1] ));
   CLKMX2X2M U61 (.Y(\u_div/PartRem[2][1] ), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   CLKMX2X2M U62 (.Y(\u_div/PartRem[1][1] ), 
	.S0(quotient[1]), 
	.B(\u_div/SumTmp[1][0] ), 
	.A(a[1]));
   AND4X1M U63 (.Y(quotient[7]), 
	.D(n17), 
	.C(n18), 
	.B(n20), 
	.A(\u_div/CryTmp[7][1] ));
   AND3X1M U64 (.Y(quotient[6]), 
	.C(\u_div/CryTmp[6][2] ), 
	.B(n17), 
	.A(n20));
   AND2X1M U65 (.Y(quotient[5]), 
	.B(n20), 
	.A(\u_div/CryTmp[5][3] ));
   AND2X1M U66 (.Y(n20), 
	.B(n16), 
	.A(n21));
   AND2X1M U67 (.Y(quotient[4]), 
	.B(n21), 
	.A(\u_div/CryTmp[4][4] ));
   AND3X1M U68 (.Y(n21), 
	.C(n14), 
	.B(n15), 
	.A(n22));
   AND3X1M U69 (.Y(quotient[3]), 
	.C(\u_div/CryTmp[3][5] ), 
	.B(n14), 
	.A(n22));
   AND2X1M U70 (.Y(quotient[2]), 
	.B(n22), 
	.A(\u_div/CryTmp[2][6] ));
   NOR2X1M U71 (.Y(n22), 
	.B(b[7]), 
	.A(b[6]));
   AND2X1M U72 (.Y(quotient[1]), 
	.B(n12), 
	.A(\u_div/CryTmp[1][7] ));
endmodule

module ALU_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n162, 
	n189, 
	n187, 
	n161, 
	n188, 
	n186, 
	n185, 
	n184);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n162;
   input n189;
   input n187;
   input n161;
   input n188;
   input n186;
   input n185;
   input n184;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire [9:0] carry;

   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n5), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n6), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n7), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n8), 
	.A(A[2]));
   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n3), 
	.A(A[7]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n9), 
	.A(A[1]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n4), 
	.A(A[6]));
   INVX2M U1 (.Y(DIFF[8]), 
	.A(carry[8]));
   XNOR2X2M U2 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n10));
   INVX2M U3 (.Y(n4), 
	.A(B[6]));
   INVX2M U4 (.Y(n9), 
	.A(B[1]));
   NAND2X2M U5 (.Y(carry[1]), 
	.B(n1), 
	.A(B[0]));
   INVX2M U6 (.Y(n1), 
	.A(A[0]));
   INVX2M U7 (.Y(n10), 
	.A(B[0]));
   INVX2M U8 (.Y(n3), 
	.A(B[7]));
   INVX2M U9 (.Y(n8), 
	.A(B[2]));
   INVX2M U10 (.Y(n7), 
	.A(B[3]));
   INVX2M U11 (.Y(n6), 
	.A(B[4]));
   INVX2M U12 (.Y(n5), 
	.A(B[5]));
endmodule

module ALU_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [8:1] carry;

   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire \A[5] ;
   wire \A[4] ;
   wire \A[3] ;
   wire \A[2] ;
   wire \A[1] ;
   wire \A[0] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;

   assign SUM[6] = A[6] ;
   assign SUM[5] = \A[5]  ;
   assign \A[5]  = A[5] ;
   assign SUM[4] = \A[4]  ;
   assign \A[4]  = A[4] ;
   assign SUM[3] = \A[3]  ;
   assign \A[3]  = A[3] ;
   assign SUM[2] = \A[2]  ;
   assign \A[2]  = A[2] ;
   assign SUM[1] = \A[1]  ;
   assign \A[1]  = A[1] ;
   assign SUM[0] = \A[0]  ;
   assign \A[0]  = A[0] ;

   NAND2X2M U2 (.Y(n8), 
	.B(B[7]), 
	.A(A[7]));
   AOI21BX2M U3 (.Y(n1), 
	.B0N(n12), 
	.A1(A[12]), 
	.A0(n11));
   XNOR2X2M U4 (.Y(SUM[7]), 
	.B(n2), 
	.A(A[7]));
   INVX2M U5 (.Y(n2), 
	.A(B[7]));
   XNOR2X2M U6 (.Y(SUM[13]), 
	.B(n1), 
	.A(B[13]));
   XNOR2X1M U7 (.Y(SUM[9]), 
	.B(n4), 
	.A(n3));
   NOR2X1M U8 (.Y(n4), 
	.B(n6), 
	.A(n5));
   CLKXOR2X2M U9 (.Y(SUM[8]), 
	.B(n8), 
	.A(n7));
   NAND2BX1M U10 (.Y(n7), 
	.B(n10), 
	.AN(n9));
   OAI21X1M U11 (.Y(n12), 
	.B0(B[12]), 
	.A1(n11), 
	.A0(A[12]));
   XOR3XLM U12 (.Y(SUM[12]), 
	.C(n11), 
	.B(A[12]), 
	.A(B[12]));
   OAI21BX1M U13 (.Y(n11), 
	.B0N(n15), 
	.A1(n14), 
	.A0(n13));
   XNOR2X1M U14 (.Y(SUM[11]), 
	.B(n16), 
	.A(n14));
   NOR2X1M U15 (.Y(n16), 
	.B(n13), 
	.A(n15));
   NOR2X1M U16 (.Y(n13), 
	.B(A[11]), 
	.A(B[11]));
   AND2X1M U17 (.Y(n15), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U18 (.Y(n14), 
	.B0(n19), 
	.A1(n18), 
	.A0(n17));
   CLKXOR2X2M U19 (.Y(SUM[10]), 
	.B(n18), 
	.A(n20));
   AOI2BB1X1M U20 (.Y(n18), 
	.B0(n5), 
	.A1N(n6), 
	.A0N(n3));
   AND2X1M U21 (.Y(n5), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X1M U22 (.Y(n6), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U23 (.Y(n3), 
	.B0(n10), 
	.A1(n9), 
	.A0(n8));
   CLKNAND2X2M U24 (.Y(n10), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X1M U25 (.Y(n9), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U26 (.Y(n20), 
	.B(n19), 
	.AN(n17));
   CLKNAND2X2M U27 (.Y(n19), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X1M U28 (.Y(n17), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n162, 
	n182, 
	n178, 
	n189, 
	n187, 
	n183, 
	n179, 
	n161, 
	n188, 
	n164, 
	n180, 
	n186, 
	n185, 
	n184, 
	n181);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n162;
   input n182;
   input n178;
   input n189;
   input n187;
   input n183;
   input n179;
   input n161;
   input n188;
   input n164;
   input n180;
   input n186;
   input n185;
   input n184;
   input n181;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;

   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n8), 
	.A(\ab[2][6] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n9), 
	.A(\ab[2][0] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n7), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n6), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n5), 
	.A(\ab[2][2] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n4), 
	.A(\ab[2][5] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n3), 
	.A(\ab[2][1] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   INVX2M U10 (.Y(n22), 
	.A(\ab[0][6] ));
   INVX2M U11 (.Y(n17), 
	.A(\SUMB[7][1] ));
   CLKXOR2X2M U12 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U13 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   CLKXOR2X2M U14 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   CLKXOR2X2M U15 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U16 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U17 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   CLKXOR2X2M U18 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   INVX2M U19 (.Y(n23), 
	.A(\ab[0][7] ));
   INVX2M U20 (.Y(n20), 
	.A(\ab[0][4] ));
   INVX2M U21 (.Y(n21), 
	.A(\ab[0][5] ));
   INVX2M U22 (.Y(n19), 
	.A(\ab[0][3] ));
   INVX2M U23 (.Y(n18), 
	.A(\ab[0][2] ));
   XNOR2X2M U24 (.Y(\SUMB[1][2] ), 
	.B(n19), 
	.A(\ab[1][2] ));
   AND2X2M U25 (.Y(n11), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   AND2X2M U26 (.Y(n12), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   AND2X2M U27 (.Y(n13), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U28 (.Y(n14), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   AND2X2M U29 (.Y(n15), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   AND2X2M U30 (.Y(n16), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   XNOR2X2M U31 (.Y(\SUMB[1][6] ), 
	.B(n23), 
	.A(\ab[1][6] ));
   XNOR2X2M U32 (.Y(\SUMB[1][3] ), 
	.B(n20), 
	.A(\ab[1][3] ));
   XNOR2X2M U33 (.Y(\SUMB[1][4] ), 
	.B(n21), 
	.A(\ab[1][4] ));
   XNOR2X2M U34 (.Y(\SUMB[1][5] ), 
	.B(n22), 
	.A(\ab[1][5] ));
   XNOR2X2M U35 (.Y(\SUMB[1][1] ), 
	.B(n18), 
	.A(\ab[1][1] ));
   INVX2M U36 (.Y(n30), 
	.A(A[1]));
   INVX2M U37 (.Y(n25), 
	.A(A[6]));
   INVX2M U38 (.Y(n24), 
	.A(A[7]));
   INVX2M U39 (.Y(n31), 
	.A(A[0]));
   INVX2M U40 (.Y(n29), 
	.A(A[2]));
   INVX2M U41 (.Y(n28), 
	.A(A[3]));
   INVX2M U42 (.Y(n27), 
	.A(A[4]));
   INVX2M U43 (.Y(n26), 
	.A(A[5]));
   INVX2M U44 (.Y(n33), 
	.A(B[6]));
   INVX2M U45 (.Y(n38), 
	.A(B[1]));
   XNOR2X2M U46 (.Y(\A1[6] ), 
	.B(n17), 
	.A(\CARRYB[7][0] ));
   INVX2M U47 (.Y(n39), 
	.A(B[0]));
   INVX2M U48 (.Y(n37), 
	.A(B[2]));
   INVX2M U49 (.Y(n36), 
	.A(B[3]));
   INVX2M U50 (.Y(n32), 
	.A(B[7]));
   INVX2M U51 (.Y(n34), 
	.A(B[5]));
   INVX2M U52 (.Y(n35), 
	.A(B[4]));
   NOR2X1M U54 (.Y(\ab[7][7] ), 
	.B(n32), 
	.A(n24));
   NOR2X1M U55 (.Y(\ab[7][6] ), 
	.B(n33), 
	.A(n24));
   NOR2X1M U56 (.Y(\ab[7][5] ), 
	.B(n34), 
	.A(n24));
   NOR2X1M U57 (.Y(\ab[7][4] ), 
	.B(n35), 
	.A(n24));
   NOR2X1M U58 (.Y(\ab[7][3] ), 
	.B(n36), 
	.A(n24));
   NOR2X1M U59 (.Y(\ab[7][2] ), 
	.B(n37), 
	.A(n24));
   NOR2X1M U60 (.Y(\ab[7][1] ), 
	.B(n38), 
	.A(n24));
   NOR2X1M U61 (.Y(\ab[7][0] ), 
	.B(n39), 
	.A(n24));
   NOR2X1M U62 (.Y(\ab[6][7] ), 
	.B(n25), 
	.A(n32));
   NOR2X1M U63 (.Y(\ab[6][6] ), 
	.B(n25), 
	.A(n33));
   NOR2X1M U64 (.Y(\ab[6][5] ), 
	.B(n25), 
	.A(n34));
   NOR2X1M U65 (.Y(\ab[6][4] ), 
	.B(n25), 
	.A(n35));
   NOR2X1M U66 (.Y(\ab[6][3] ), 
	.B(n25), 
	.A(n36));
   NOR2X1M U67 (.Y(\ab[6][2] ), 
	.B(n25), 
	.A(n37));
   NOR2X1M U68 (.Y(\ab[6][1] ), 
	.B(n25), 
	.A(n38));
   NOR2X1M U69 (.Y(\ab[6][0] ), 
	.B(n25), 
	.A(n39));
   NOR2X1M U70 (.Y(\ab[5][7] ), 
	.B(n26), 
	.A(n32));
   NOR2X1M U71 (.Y(\ab[5][6] ), 
	.B(n26), 
	.A(n33));
   NOR2X1M U72 (.Y(\ab[5][5] ), 
	.B(n26), 
	.A(n34));
   NOR2X1M U73 (.Y(\ab[5][4] ), 
	.B(n26), 
	.A(n35));
   NOR2X1M U74 (.Y(\ab[5][3] ), 
	.B(n26), 
	.A(n36));
   NOR2X1M U75 (.Y(\ab[5][2] ), 
	.B(n26), 
	.A(n37));
   NOR2X1M U76 (.Y(\ab[5][1] ), 
	.B(n26), 
	.A(n38));
   NOR2X1M U77 (.Y(\ab[5][0] ), 
	.B(n26), 
	.A(n39));
   NOR2X1M U78 (.Y(\ab[4][7] ), 
	.B(n27), 
	.A(n32));
   NOR2X1M U79 (.Y(\ab[4][6] ), 
	.B(n27), 
	.A(n33));
   NOR2X1M U80 (.Y(\ab[4][5] ), 
	.B(n27), 
	.A(n34));
   NOR2X1M U81 (.Y(\ab[4][4] ), 
	.B(n27), 
	.A(n35));
   NOR2X1M U82 (.Y(\ab[4][3] ), 
	.B(n27), 
	.A(n36));
   NOR2X1M U83 (.Y(\ab[4][2] ), 
	.B(n27), 
	.A(n37));
   NOR2X1M U84 (.Y(\ab[4][1] ), 
	.B(n27), 
	.A(n38));
   NOR2X1M U85 (.Y(\ab[4][0] ), 
	.B(n27), 
	.A(n39));
   NOR2X1M U86 (.Y(\ab[3][7] ), 
	.B(n28), 
	.A(n32));
   NOR2X1M U87 (.Y(\ab[3][6] ), 
	.B(n28), 
	.A(n33));
   NOR2X1M U88 (.Y(\ab[3][5] ), 
	.B(n28), 
	.A(n34));
   NOR2X1M U89 (.Y(\ab[3][4] ), 
	.B(n28), 
	.A(n35));
   NOR2X1M U90 (.Y(\ab[3][3] ), 
	.B(n28), 
	.A(n36));
   NOR2X1M U91 (.Y(\ab[3][2] ), 
	.B(n28), 
	.A(n37));
   NOR2X1M U92 (.Y(\ab[3][1] ), 
	.B(n28), 
	.A(n38));
   NOR2X1M U93 (.Y(\ab[3][0] ), 
	.B(n28), 
	.A(n39));
   NOR2X1M U94 (.Y(\ab[2][7] ), 
	.B(n29), 
	.A(n32));
   NOR2X1M U95 (.Y(\ab[2][6] ), 
	.B(n29), 
	.A(n33));
   NOR2X1M U96 (.Y(\ab[2][5] ), 
	.B(n29), 
	.A(n34));
   NOR2X1M U97 (.Y(\ab[2][4] ), 
	.B(n29), 
	.A(n35));
   NOR2X1M U98 (.Y(\ab[2][3] ), 
	.B(n29), 
	.A(n36));
   NOR2X1M U99 (.Y(\ab[2][2] ), 
	.B(n29), 
	.A(n37));
   NOR2X1M U100 (.Y(\ab[2][1] ), 
	.B(n29), 
	.A(n38));
   NOR2X1M U101 (.Y(\ab[2][0] ), 
	.B(n29), 
	.A(n39));
   NOR2X1M U102 (.Y(\ab[1][7] ), 
	.B(n30), 
	.A(n32));
   NOR2X1M U103 (.Y(\ab[1][6] ), 
	.B(n30), 
	.A(n33));
   NOR2X1M U104 (.Y(\ab[1][5] ), 
	.B(n30), 
	.A(n34));
   NOR2X1M U105 (.Y(\ab[1][4] ), 
	.B(n30), 
	.A(n35));
   NOR2X1M U106 (.Y(\ab[1][3] ), 
	.B(n30), 
	.A(n36));
   NOR2X1M U107 (.Y(\ab[1][2] ), 
	.B(n30), 
	.A(n37));
   NOR2X1M U108 (.Y(\ab[1][1] ), 
	.B(n30), 
	.A(n38));
   NOR2X1M U109 (.Y(\ab[1][0] ), 
	.B(n30), 
	.A(n39));
   NOR2X1M U110 (.Y(\ab[0][7] ), 
	.B(n31), 
	.A(n32));
   NOR2X1M U111 (.Y(\ab[0][6] ), 
	.B(n31), 
	.A(n33));
   NOR2X1M U112 (.Y(\ab[0][5] ), 
	.B(n31), 
	.A(n34));
   NOR2X1M U113 (.Y(\ab[0][4] ), 
	.B(n31), 
	.A(n35));
   NOR2X1M U114 (.Y(\ab[0][3] ), 
	.B(n31), 
	.A(n36));
   NOR2X1M U115 (.Y(\ab[0][2] ), 
	.B(n31), 
	.A(n37));
   NOR2X1M U116 (.Y(\ab[0][1] ), 
	.B(n31), 
	.A(n38));
   NOR2X1M U117 (.Y(PRODUCT[0]), 
	.B(n31), 
	.A(n39));
   ALU_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n14,
		n16,
		n13,
		n15,
		n12,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module ALU_test_1 (
	CLK, 
	RST, 
	EN, 
	A, 
	B, 
	ALU_FUN, 
	ALU_OUT, 
	OUT_VALID, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input EN;
   input [7:0] A;
   input [7:0] B;
   input [3:0] ALU_FUN;
   output [15:0] ALU_OUT;
   output OUT_VALID;
   input test_si;
   input test_se;

   // Internal wires
   wire FE_OFN5_n31;
   wire FE_OFN4_n26;
   wire FE_OFN3_n27;
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N118;
   wire N119;
   wire N120;
   wire N121;
   wire N122;
   wire N124;
   wire N125;
   wire N126;
   wire N127;
   wire N128;
   wire N129;
   wire N130;
   wire N131;
   wire N164;
   wire N165;
   wire N166;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n18;
   wire n19;
   wire n20;
   wire n23;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n30;
   wire n31;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n58;
   wire n60;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n69;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n77;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n85;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n93;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n107;
   wire n108;
   wire n109;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n124;
   wire n126;
   wire n128;
   wire n130;
   wire n132;
   wire n134;
   wire n136;
   wire n138;
   wire n140;
   wire n142;
   wire n144;
   wire n146;
   wire n148;
   wire n150;
   wire n152;
   wire n154;
   wire n33;
   wire n34;
   wire n35;
   wire n44;
   wire n52;
   wire n57;
   wire n59;
   wire n61;
   wire n62;
   wire n68;
   wire n70;
   wire n76;
   wire n78;
   wire n84;
   wire n86;
   wire n92;
   wire n94;
   wire n105;
   wire n106;
   wire n110;
   wire n111;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;

   BUFX2M FE_OFC5_n31 (.Y(FE_OFN5_n31), 
	.A(n31));
   BUFX2M FE_OFC4_n26 (.Y(FE_OFN4_n26), 
	.A(n26));
   BUFX2M FE_OFC3_n27 (.Y(FE_OFN3_n27), 
	.A(n27));
   SDFFRQX2M OUT_VALID_reg (.SI(ALU_OUT[15]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(OUT_VALID), 
	.D(EN), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[7]  (.SI(ALU_OUT[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[7]), 
	.D(n138), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[6]  (.SI(ALU_OUT[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[6]), 
	.D(n136), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[5]  (.SI(ALU_OUT[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[5]), 
	.D(n134), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[4]  (.SI(ALU_OUT[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[4]), 
	.D(n132), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[3]  (.SI(ALU_OUT[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[3]), 
	.D(n130), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[2]  (.SI(ALU_OUT[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[2]), 
	.D(n128), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[1]  (.SI(ALU_OUT[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[1]), 
	.D(n126), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[0]), 
	.D(n124), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[14]  (.SI(ALU_OUT[13]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[14]), 
	.D(n152), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[10]  (.SI(ALU_OUT[9]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[10]), 
	.D(n144), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[12]  (.SI(ALU_OUT[11]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[12]), 
	.D(n148), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[15]  (.SI(ALU_OUT[14]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[15]), 
	.D(n154), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[11]  (.SI(ALU_OUT[10]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[11]), 
	.D(n146), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[13]  (.SI(ALU_OUT[12]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[13]), 
	.D(n150), 
	.CK(CLK));
   SDFFRQX2M \ALU_OUT_reg[9]  (.SI(ALU_OUT[8]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[9]), 
	.D(n142), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[8]), 
	.D(n140), 
	.CK(CLK));
   INVX2M U8 (.Y(n167), 
	.A(n30));
   NOR3X2M U9 (.Y(n95), 
	.C(n177), 
	.B(n171), 
	.A(n45));
   NOR2X2M U10 (.Y(n25), 
	.B(n47), 
	.A(n171));
   NOR2X2M U11 (.Y(n41), 
	.B(n170), 
	.A(n107));
   NAND2X2M U12 (.Y(n30), 
	.B(n174), 
	.A(n95));
   INVX2M U13 (.Y(n170), 
	.A(n18));
   AND2X2M U14 (.Y(n14), 
	.B(n177), 
	.A(n115));
   INVX2M U15 (.Y(n172), 
	.A(n28));
   INVX2M U16 (.Y(n168), 
	.A(n51));
   INVX2M U17 (.Y(n169), 
	.A(FE_OFN4_n26));
   NOR4X1M U18 (.Y(n27), 
	.D(ALU_FUN[3]), 
	.C(ALU_FUN[0]), 
	.B(n171), 
	.A(n107));
   NOR3X2M U19 (.Y(n49), 
	.C(n177), 
	.B(ALU_FUN[2]), 
	.A(n174));
   NOR3X2M U20 (.Y(n18), 
	.C(n171), 
	.B(ALU_FUN[0]), 
	.A(n174));
   NOR3BX2M U21 (.Y(n15), 
	.C(n45), 
	.B(n170), 
	.AN(N166));
   OAI2BB2X1M U22 (.Y(n50), 
	.B1(n45), 
	.B0(ALU_FUN[3]), 
	.A1N(n49), 
	.A0N(n176));
   NAND2X2M U23 (.Y(n107), 
	.B(ALU_FUN[2]), 
	.A(ALU_FUN[1]));
   AOI2BB2XLM U24 (.Y(n47), 
	.B1(n49), 
	.B0(n176), 
	.A1N(n107), 
	.A0N(ALU_FUN[3]));
   INVX2M U25 (.Y(n171), 
	.A(EN));
   NAND3X2M U26 (.Y(n104), 
	.C(EN), 
	.B(n174), 
	.A(n175));
   NAND2X2M U27 (.Y(n51), 
	.B(ALU_FUN[3]), 
	.A(n95));
   INVX2M U28 (.Y(n177), 
	.A(ALU_FUN[0]));
   NAND2X2M U29 (.Y(n45), 
	.B(n176), 
	.A(ALU_FUN[2]));
   INVX2M U30 (.Y(n174), 
	.A(ALU_FUN[3]));
   INVX2M U31 (.Y(n176), 
	.A(ALU_FUN[1]));
   NAND2X2M U32 (.Y(n28), 
	.B(n50), 
	.A(EN));
   NOR2X2M U33 (.Y(n115), 
	.B(ALU_FUN[1]), 
	.A(n104));
   AND2X2M U34 (.Y(n20), 
	.B(ALU_FUN[0]), 
	.A(n115));
   INVX2M U35 (.Y(n175), 
	.A(ALU_FUN[2]));
   NOR3X2M U37 (.Y(n26), 
	.C(n170), 
	.B(ALU_FUN[2]), 
	.A(ALU_FUN[1]));
   NOR3X2M U39 (.Y(n31), 
	.C(n104), 
	.B(ALU_FUN[0]), 
	.A(n176));
   AND4X2M U40 (.Y(n16), 
	.D(ALU_FUN[1]), 
	.C(n18), 
	.B(n175), 
	.A(N164));
   NAND4X2M U41 (.Y(n126), 
	.D(n39), 
	.C(n38), 
	.B(n37), 
	.A(n36));
   AOI221XLM U42 (.Y(n39), 
	.C0(n42), 
	.B1(A[0]), 
	.B0(n41), 
	.A1(n40), 
	.A0(B[1]));
   AOI222X1M U43 (.Y(n38), 
	.C1(n20), 
	.C0(N99), 
	.B1(n14), 
	.B0(N90), 
	.A1(n46), 
	.A0(EN));
   AOI222X1M U44 (.Y(n37), 
	.C1(n173), 
	.C0(N125), 
	.B1(n168), 
	.B0(A[2]), 
	.A1(FE_OFN5_n31), 
	.A0(N108));
   NAND4BX1M U45 (.Y(n136), 
	.D(n90), 
	.C(n89), 
	.B(n88), 
	.AN(n87));
   OAI222X1M U46 (.Y(n87), 
	.C1(n178), 
	.C0(n51), 
	.B1(n93), 
	.B0(B[6]), 
	.A1(n186), 
	.A0(n91));
   AOI222X1M U47 (.Y(n90), 
	.C1(FE_OFN5_n31), 
	.C0(N113), 
	.B1(n173), 
	.B0(N130), 
	.A1(n179), 
	.A0(FE_OFN3_n27));
   AOI222X1M U48 (.Y(n88), 
	.C1(n14), 
	.C0(N95), 
	.B1(n41), 
	.B0(A[5]), 
	.A1(n20), 
	.A0(N104));
   AOI21X2M U49 (.Y(n112), 
	.B0(n25), 
	.A1(n20), 
	.A0(N106));
   AOI221XLM U50 (.Y(n108), 
	.C0(n167), 
	.B1(n172), 
	.B0(A[7]), 
	.A1(n178), 
	.A0(FE_OFN4_n26));
   AOI221XLM U51 (.Y(n109), 
	.C0(FE_OFN3_n27), 
	.B1(n178), 
	.B0(n25), 
	.A1(FE_OFN4_n26), 
	.A0(A[7]));
   AOI221XLM U52 (.Y(n58), 
	.C0(n167), 
	.B1(n172), 
	.B0(A[2]), 
	.A1(n183), 
	.A0(FE_OFN4_n26));
   AOI221XLM U53 (.Y(n67), 
	.C0(n167), 
	.B1(n172), 
	.B0(A[3]), 
	.A1(n182), 
	.A0(FE_OFN4_n26));
   AOI221XLM U54 (.Y(n75), 
	.C0(n167), 
	.B1(n172), 
	.B0(A[4]), 
	.A1(n181), 
	.A0(FE_OFN4_n26));
   AOI221XLM U55 (.Y(n83), 
	.C0(n167), 
	.B1(n172), 
	.B0(A[5]), 
	.A1(n180), 
	.A0(FE_OFN4_n26));
   AOI221XLM U56 (.Y(n91), 
	.C0(n167), 
	.B1(n172), 
	.B0(A[6]), 
	.A1(n179), 
	.A0(FE_OFN4_n26));
   AOI221XLM U57 (.Y(n60), 
	.C0(FE_OFN3_n27), 
	.B1(n183), 
	.B0(n25), 
	.A1(FE_OFN4_n26), 
	.A0(A[2]));
   AOI221XLM U58 (.Y(n69), 
	.C0(FE_OFN3_n27), 
	.B1(n182), 
	.B0(n25), 
	.A1(FE_OFN4_n26), 
	.A0(A[3]));
   AOI221XLM U59 (.Y(n77), 
	.C0(FE_OFN3_n27), 
	.B1(n181), 
	.B0(n25), 
	.A1(FE_OFN4_n26), 
	.A0(A[4]));
   AOI221XLM U60 (.Y(n85), 
	.C0(FE_OFN3_n27), 
	.B1(n180), 
	.B0(n25), 
	.A1(FE_OFN4_n26), 
	.A0(A[5]));
   AOI221XLM U61 (.Y(n93), 
	.C0(FE_OFN3_n27), 
	.B1(n179), 
	.B0(n25), 
	.A1(FE_OFN4_n26), 
	.A0(A[6]));
   OAI31X1M U62 (.Y(n46), 
	.B0(n48), 
	.A2(A[1]), 
	.A1(B[1]), 
	.A0(n47));
   AOI33X2M U63 (.Y(n48), 
	.B2(B[1]), 
	.B1(n50), 
	.B0(A[1]), 
	.A2(N165), 
	.A1(ALU_FUN[1]), 
	.A0(n49));
   OAI221X1M U64 (.Y(n19), 
	.C0(n30), 
	.B1(n169), 
	.B0(A[0]), 
	.A1(n28), 
	.A0(n184));
   INVX2M U65 (.Y(n163), 
	.A(n33));
   INVX2M U66 (.Y(n165), 
	.A(n76));
   NAND4BX1M U67 (.Y(n102), 
	.D(n162), 
	.C(n189), 
	.B(n161), 
	.AN(B[1]));
   OAI21BX1M U68 (.Y(n42), 
	.B0N(n15), 
	.A1(n43), 
	.A0(B[1]));
   AOI21X2M U69 (.Y(n43), 
	.B0(FE_OFN3_n27), 
	.A1(FE_OFN4_n26), 
	.A0(A[1]));
   OAI21X2M U70 (.Y(n40), 
	.B0(n30), 
	.A1(n169), 
	.A0(A[1]));
   INVX2M U71 (.Y(N165), 
	.A(n160));
   INVX2M U72 (.Y(n173), 
	.A(n100));
   OAI211X2M U73 (.Y(n100), 
	.C0(n103), 
	.B0(ALU_FUN[1]), 
	.A1(n102), 
	.A0(n101));
   NAND4X2M U74 (.Y(n101), 
	.D(n185), 
	.C(n186), 
	.B(n187), 
	.A(n188));
   NOR2X2M U75 (.Y(n103), 
	.B(n177), 
	.A(n104));
   INVX2M U76 (.Y(n166), 
	.A(n23));
   AOI221XLM U77 (.Y(n23), 
	.C0(FE_OFN3_n27), 
	.B1(A[0]), 
	.B0(FE_OFN4_n26), 
	.A1(n25), 
	.A0(n184));
   INVX2M U78 (.Y(n178), 
	.A(A[7]));
   INVX2M U79 (.Y(n179), 
	.A(A[6]));
   INVX2M U80 (.Y(n182), 
	.A(A[3]));
   INVX2M U81 (.Y(n181), 
	.A(A[4]));
   INVX2M U82 (.Y(n180), 
	.A(A[5]));
   INVX2M U83 (.Y(n186), 
	.A(B[6]));
   INVX2M U84 (.Y(n183), 
	.A(A[2]));
   INVX2M U85 (.Y(n184), 
	.A(A[0]));
   INVX2M U86 (.Y(n164), 
	.A(A[1]));
   AOI222X1M U87 (.Y(n10), 
	.C1(A[0]), 
	.C0(n167), 
	.B1(n184), 
	.B0(FE_OFN3_n27), 
	.A1(n171), 
	.A0(ALU_OUT[0]));
   AOI222X1M U88 (.Y(n36), 
	.C1(A[1]), 
	.C0(n167), 
	.B1(n164), 
	.B0(FE_OFN3_n27), 
	.A1(n171), 
	.A0(ALU_OUT[1]));
   AOI22X1M U89 (.Y(n55), 
	.B1(n171), 
	.B0(ALU_OUT[2]), 
	.A1(n167), 
	.A0(A[2]));
   AOI22X1M U90 (.Y(n65), 
	.B1(n171), 
	.B0(ALU_OUT[3]), 
	.A1(n167), 
	.A0(A[3]));
   AOI22X1M U91 (.Y(n73), 
	.B1(n171), 
	.B0(ALU_OUT[4]), 
	.A1(n167), 
	.A0(A[4]));
   AOI22X1M U92 (.Y(n81), 
	.B1(n171), 
	.B0(ALU_OUT[5]), 
	.A1(n167), 
	.A0(A[5]));
   AOI22X1M U93 (.Y(n89), 
	.B1(n171), 
	.B0(ALU_OUT[6]), 
	.A1(n167), 
	.A0(A[6]));
   AOI22X1M U94 (.Y(n98), 
	.B1(n171), 
	.B0(ALU_OUT[7]), 
	.A1(n167), 
	.A0(A[7]));
   NAND4X2M U95 (.Y(n124), 
	.D(n13), 
	.C(n12), 
	.B(n11), 
	.A(n10));
   AOI211X2M U96 (.Y(n13), 
	.C0(n16), 
	.B0(n15), 
	.A1(n14), 
	.A0(N89));
   AOI222X1M U97 (.Y(n12), 
	.C1(n161), 
	.C0(n166), 
	.B1(n20), 
	.B0(N98), 
	.A1(n19), 
	.A0(B[0]));
   AOI222X1M U98 (.Y(n11), 
	.C1(n173), 
	.C0(N124), 
	.B1(n168), 
	.B0(A[1]), 
	.A1(FE_OFN5_n31), 
	.A0(N107));
   NAND2X2M U99 (.Y(n142), 
	.B(n112), 
	.A(n116));
   AOI22X1M U100 (.Y(n116), 
	.B1(n171), 
	.B0(ALU_OUT[9]), 
	.A1(FE_OFN5_n31), 
	.A0(N116));
   NAND2X2M U101 (.Y(n144), 
	.B(n112), 
	.A(n117));
   AOI22X1M U102 (.Y(n117), 
	.B1(n171), 
	.B0(ALU_OUT[10]), 
	.A1(FE_OFN5_n31), 
	.A0(N117));
   NAND2X2M U103 (.Y(n146), 
	.B(n112), 
	.A(n118));
   AOI22X1M U104 (.Y(n118), 
	.B1(n171), 
	.B0(ALU_OUT[11]), 
	.A1(FE_OFN5_n31), 
	.A0(N118));
   NAND2X2M U105 (.Y(n148), 
	.B(n112), 
	.A(n119));
   AOI22X1M U106 (.Y(n119), 
	.B1(n171), 
	.B0(ALU_OUT[12]), 
	.A1(FE_OFN5_n31), 
	.A0(N119));
   NAND2X2M U107 (.Y(n150), 
	.B(n112), 
	.A(n120));
   AOI22X1M U108 (.Y(n120), 
	.B1(n171), 
	.B0(ALU_OUT[13]), 
	.A1(FE_OFN5_n31), 
	.A0(N120));
   NAND2X2M U109 (.Y(n152), 
	.B(n112), 
	.A(n121));
   AOI22X1M U110 (.Y(n121), 
	.B1(n171), 
	.B0(ALU_OUT[14]), 
	.A1(FE_OFN5_n31), 
	.A0(N121));
   NAND2X2M U111 (.Y(n154), 
	.B(n112), 
	.A(n122));
   AOI22X1M U112 (.Y(n122), 
	.B1(n171), 
	.B0(ALU_OUT[15]), 
	.A1(FE_OFN5_n31), 
	.A0(N122));
   NAND4BX1M U113 (.Y(n128), 
	.D(n56), 
	.C(n55), 
	.B(n54), 
	.AN(n53));
   OAI222X1M U114 (.Y(n53), 
	.C1(n182), 
	.C0(n51), 
	.B1(n60), 
	.B0(B[2]), 
	.A1(n189), 
	.A0(n58));
   AOI222X1M U115 (.Y(n56), 
	.C1(FE_OFN5_n31), 
	.C0(N109), 
	.B1(n173), 
	.B0(N126), 
	.A1(n183), 
	.A0(FE_OFN3_n27));
   AOI222X1M U116 (.Y(n54), 
	.C1(n14), 
	.C0(N91), 
	.B1(A[1]), 
	.B0(n41), 
	.A1(n20), 
	.A0(N100));
   NAND4BX1M U117 (.Y(n130), 
	.D(n66), 
	.C(n65), 
	.B(n64), 
	.AN(n63));
   OAI222X1M U118 (.Y(n63), 
	.C1(n181), 
	.C0(n51), 
	.B1(n69), 
	.B0(B[3]), 
	.A1(n162), 
	.A0(n67));
   AOI222X1M U119 (.Y(n66), 
	.C1(FE_OFN5_n31), 
	.C0(N110), 
	.B1(n173), 
	.B0(N127), 
	.A1(n182), 
	.A0(FE_OFN3_n27));
   AOI222X1M U120 (.Y(n64), 
	.C1(n14), 
	.C0(N92), 
	.B1(n41), 
	.B0(A[2]), 
	.A1(n20), 
	.A0(N101));
   NAND4BX1M U121 (.Y(n132), 
	.D(n74), 
	.C(n73), 
	.B(n72), 
	.AN(n71));
   OAI222X1M U122 (.Y(n71), 
	.C1(n180), 
	.C0(n51), 
	.B1(n77), 
	.B0(B[4]), 
	.A1(n188), 
	.A0(n75));
   AOI222X1M U123 (.Y(n74), 
	.C1(FE_OFN5_n31), 
	.C0(N111), 
	.B1(n173), 
	.B0(N128), 
	.A1(n181), 
	.A0(FE_OFN3_n27));
   AOI222X1M U124 (.Y(n72), 
	.C1(n14), 
	.C0(N93), 
	.B1(n41), 
	.B0(A[3]), 
	.A1(n20), 
	.A0(N102));
   NAND4BX1M U125 (.Y(n134), 
	.D(n82), 
	.C(n81), 
	.B(n80), 
	.AN(n79));
   OAI222X1M U126 (.Y(n79), 
	.C1(n179), 
	.C0(n51), 
	.B1(n85), 
	.B0(B[5]), 
	.A1(n187), 
	.A0(n83));
   AOI222X1M U127 (.Y(n82), 
	.C1(FE_OFN5_n31), 
	.C0(N112), 
	.B1(n173), 
	.B0(N129), 
	.A1(n180), 
	.A0(FE_OFN3_n27));
   AOI222X1M U128 (.Y(n80), 
	.C1(n14), 
	.C0(N94), 
	.B1(n41), 
	.B0(A[4]), 
	.A1(n20), 
	.A0(N103));
   NAND4BX1M U129 (.Y(n138), 
	.D(n99), 
	.C(n98), 
	.B(n97), 
	.AN(n96));
   OAI22X1M U130 (.Y(n96), 
	.B1(n109), 
	.B0(B[7]), 
	.A1(n185), 
	.A0(n108));
   AOI222X1M U131 (.Y(n99), 
	.C1(FE_OFN5_n31), 
	.C0(N114), 
	.B1(n173), 
	.B0(N131), 
	.A1(n178), 
	.A0(FE_OFN3_n27));
   AOI222X1M U132 (.Y(n97), 
	.C1(n14), 
	.C0(N96), 
	.B1(n41), 
	.B0(A[6]), 
	.A1(n20), 
	.A0(N105));
   OAI2B11X2M U133 (.Y(n140), 
	.C0(n113), 
	.B0(n112), 
	.A1N(ALU_OUT[8]), 
	.A0(EN));
   AOI221XLM U134 (.Y(n113), 
	.C0(n114), 
	.B1(n14), 
	.B0(N97), 
	.A1(FE_OFN5_n31), 
	.A0(N115));
   NOR4X1M U152 (.Y(n114), 
	.D(n178), 
	.C(n107), 
	.B(n171), 
	.A(ALU_FUN[0]));
   INVX2M U159 (.Y(n185), 
	.A(B[7]));
   INVX2M U161 (.Y(n188), 
	.A(B[4]));
   INVX2M U162 (.Y(n187), 
	.A(B[5]));
   INVX2M U164 (.Y(n189), 
	.A(B[2]));
   INVX2M U165 (.Y(n161), 
	.A(B[0]));
   INVX2M U166 (.Y(n162), 
	.A(B[3]));
   NOR2X1M U167 (.Y(n157), 
	.B(B[7]), 
	.A(n178));
   NAND2BX1M U168 (.Y(n92), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U169 (.Y(n52), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U170 (.Y(n105), 
	.B(n52), 
	.A(n92));
   NOR2X1M U171 (.Y(n78), 
	.B(A[3]), 
	.A(n162));
   NOR2X1M U172 (.Y(n44), 
	.B(A[2]), 
	.A(n189));
   NOR2X1M U173 (.Y(n33), 
	.B(A[0]), 
	.A(n161));
   CLKNAND2X2M U174 (.Y(n86), 
	.B(n189), 
	.A(A[2]));
   NAND2BX1M U175 (.Y(n68), 
	.B(n86), 
	.AN(n44));
   AOI21X1M U176 (.Y(n34), 
	.B0(B[1]), 
	.A1(n164), 
	.A0(n33));
   AOI211X1M U177 (.Y(n35), 
	.C0(n34), 
	.B0(n68), 
	.A1(n163), 
	.A0(A[1]));
   CLKNAND2X2M U178 (.Y(n84), 
	.B(n162), 
	.A(A[3]));
   OAI31X1M U179 (.Y(n57), 
	.B0(n84), 
	.A2(n35), 
	.A1(n44), 
	.A0(n78));
   NAND2BX1M U180 (.Y(n111), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U181 (.Y(n59), 
	.C0(n111), 
	.B0(n52), 
	.A1(n57), 
	.A0(n105));
   NAND2BX1M U182 (.Y(n94), 
	.B(A[5]), 
	.AN(B[5]));
   XNOR2X1M U183 (.Y(n110), 
	.B(B[6]), 
	.A(A[6]));
   AOI32X1M U184 (.Y(n61), 
	.B1(n179), 
	.B0(B[6]), 
	.A2(n110), 
	.A1(n94), 
	.A0(n59));
   CLKNAND2X2M U185 (.Y(n158), 
	.B(n178), 
	.A(B[7]));
   OAI21X1M U186 (.Y(N166), 
	.B0(n158), 
	.A1(n61), 
	.A0(n157));
   CLKNAND2X2M U187 (.Y(n70), 
	.B(n161), 
	.A(A[0]));
   OA21X1M U188 (.Y(n62), 
	.B0(B[1]), 
	.A1(n164), 
	.A0(n70));
   AOI211X1M U189 (.Y(n76), 
	.C0(n62), 
	.B0(n68), 
	.A1(n164), 
	.A0(n70));
   AOI31X1M U190 (.Y(n106), 
	.B0(n78), 
	.A2(n84), 
	.A1(n86), 
	.A0(n165));
   OAI2B11X1M U191 (.Y(n156), 
	.C0(n92), 
	.B0(n94), 
	.A1N(n106), 
	.A0(n105));
   AOI32X1M U192 (.Y(n159), 
	.B1(n186), 
	.B0(A[6]), 
	.A2(n110), 
	.A1(n111), 
	.A0(n156));
   AOI2B1X1M U193 (.Y(n160), 
	.B0(n157), 
	.A1N(n159), 
	.A0(n158));
   NOR2X1M U194 (.Y(N164), 
	.B(N165), 
	.A(N166));
   ALU_DW_div_uns_0 div_41 (.a({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N131,
		N130,
		N129,
		N128,
		N127,
		N126,
		N125,
		N124 }), 
	.n162(n162), 
	.n182(n182), 
	.n189(n189), 
	.n187(n187), 
	.n183(n183), 
	.n179(n179), 
	.n161(n161), 
	.n188(n188), 
	.n164(n164), 
	.n180(n180), 
	.n186(n186), 
	.n185(n185), 
	.n184(n184), 
	.n181(n181));
   ALU_DW01_sub_0 sub_35 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N106,
		N105,
		N104,
		N103,
		N102,
		N101,
		N100,
		N99,
		N98 }), 
	.n162(n162), 
	.n189(n189), 
	.n187(n187), 
	.n161(n161), 
	.n188(n188), 
	.n186(n186), 
	.n185(n185), 
	.n184(n184));
   ALU_DW01_add_0 add_34 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N97,
		N96,
		N95,
		N94,
		N93,
		N92,
		N91,
		N90,
		N89 }));
   ALU_DW02_mult_0 mult_36 (.A({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N122,
		N121,
		N120,
		N119,
		N118,
		N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111,
		N110,
		N109,
		N108,
		N107 }), 
	.n162(n162), 
	.n182(n182), 
	.n178(n178), 
	.n189(n189), 
	.n187(n187), 
	.n183(n183), 
	.n179(n179), 
	.n161(n161), 
	.n188(n188), 
	.n164(n164), 
	.n180(n180), 
	.n186(n186), 
	.n185(n185), 
	.n184(n184), 
	.n181(n181));
endmodule

module RegFile_test_1 (
	CLK, 
	RST, 
	WrData, 
	Address, 
	WrEn, 
	RdEn, 
	RdData, 
	RdData_Valid, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_SYNC_REF_SCAN_RST, 
	FE_OFN1_SYNC_REF_SCAN_RST);
   input CLK;
   input RST;
   input [7:0] WrData;
   input [3:0] Address;
   input WrEn;
   input RdEn;
   output [7:0] RdData;
   output RdData_Valid;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si3;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_SYNC_REF_SCAN_RST;
   input FE_OFN1_SYNC_REF_SCAN_RST;

   // Internal wires
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire \registers[4][7] ;
   wire \registers[4][6] ;
   wire \registers[4][5] ;
   wire \registers[4][4] ;
   wire \registers[4][3] ;
   wire \registers[4][2] ;
   wire \registers[4][1] ;
   wire \registers[4][0] ;
   wire \registers[5][7] ;
   wire \registers[5][6] ;
   wire \registers[5][5] ;
   wire \registers[5][4] ;
   wire \registers[5][3] ;
   wire \registers[5][2] ;
   wire \registers[5][1] ;
   wire \registers[5][0] ;
   wire \registers[6][7] ;
   wire \registers[6][6] ;
   wire \registers[6][5] ;
   wire \registers[6][4] ;
   wire \registers[6][3] ;
   wire \registers[6][2] ;
   wire \registers[6][1] ;
   wire \registers[6][0] ;
   wire \registers[7][7] ;
   wire \registers[7][6] ;
   wire \registers[7][5] ;
   wire \registers[7][4] ;
   wire \registers[7][3] ;
   wire \registers[7][2] ;
   wire \registers[7][1] ;
   wire \registers[7][0] ;
   wire \registers[8][7] ;
   wire \registers[8][6] ;
   wire \registers[8][5] ;
   wire \registers[8][4] ;
   wire \registers[8][3] ;
   wire \registers[8][2] ;
   wire \registers[8][1] ;
   wire \registers[8][0] ;
   wire \registers[9][7] ;
   wire \registers[9][6] ;
   wire \registers[9][5] ;
   wire \registers[9][4] ;
   wire \registers[9][3] ;
   wire \registers[9][2] ;
   wire \registers[9][1] ;
   wire \registers[9][0] ;
   wire \registers[10][7] ;
   wire \registers[10][6] ;
   wire \registers[10][5] ;
   wire \registers[10][4] ;
   wire \registers[10][3] ;
   wire \registers[10][2] ;
   wire \registers[10][1] ;
   wire \registers[10][0] ;
   wire \registers[11][7] ;
   wire \registers[11][6] ;
   wire \registers[11][5] ;
   wire \registers[11][4] ;
   wire \registers[11][3] ;
   wire \registers[11][2] ;
   wire \registers[11][1] ;
   wire \registers[11][0] ;
   wire \registers[12][7] ;
   wire \registers[12][6] ;
   wire \registers[12][5] ;
   wire \registers[12][4] ;
   wire \registers[12][3] ;
   wire \registers[12][2] ;
   wire \registers[12][1] ;
   wire \registers[12][0] ;
   wire \registers[13][7] ;
   wire \registers[13][6] ;
   wire \registers[13][5] ;
   wire \registers[13][4] ;
   wire \registers[13][3] ;
   wire \registers[13][2] ;
   wire \registers[13][1] ;
   wire \registers[13][0] ;
   wire \registers[14][7] ;
   wire \registers[14][6] ;
   wire \registers[14][5] ;
   wire \registers[14][4] ;
   wire \registers[14][3] ;
   wire \registers[14][2] ;
   wire \registers[14][1] ;
   wire \registers[14][0] ;
   wire \registers[15][7] ;
   wire \registers[15][6] ;
   wire \registers[15][5] ;
   wire \registers[15][4] ;
   wire \registers[15][3] ;
   wire \registers[15][2] ;
   wire \registers[15][1] ;
   wire \registers[15][0] ;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n336;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n372;
   wire n373;
   wire n374;
   wire n375;

   assign N11 = Address[0] ;
   assign N12 = Address[1] ;
   assign N13 = Address[2] ;
   assign N14 = Address[3] ;
   assign test_so1 = \registers[14][0]  ;
   assign test_so2 = \registers[15][7]  ;

   SDFFRQX2M \RdData_reg[7]  (.SI(RdData[6]), 
	.SE(n374), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(RdData[7]), 
	.D(n187), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[6]  (.SI(RdData[5]), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(RdData[6]), 
	.D(n186), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[5]  (.SI(RdData[4]), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(RdData[5]), 
	.D(n185), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[4]  (.SI(RdData[3]), 
	.SE(n375), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(RdData[4]), 
	.D(n184), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[3]  (.SI(RdData[2]), 
	.SE(n374), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(RdData[3]), 
	.D(n183), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[2]  (.SI(RdData[1]), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(RdData[2]), 
	.D(n182), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[1]  (.SI(RdData[0]), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(RdData[1]), 
	.D(n181), 
	.CK(CLK));
   SDFFRQX2M \RdData_reg[0]  (.SI(RdData_Valid), 
	.SE(n375), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(RdData[0]), 
	.D(n180), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[5][7]  (.SI(\registers[5][6] ), 
	.SE(n374), 
	.RN(RST), 
	.Q(\registers[5][7] ), 
	.D(n275), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[5][6]  (.SI(\registers[5][5] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[5][6] ), 
	.D(n274), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[5][5]  (.SI(\registers[5][4] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[5][5] ), 
	.D(n273), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[5][4]  (.SI(\registers[5][3] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[5][4] ), 
	.D(n272), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[5][3]  (.SI(\registers[5][2] ), 
	.SE(n374), 
	.RN(RST), 
	.Q(\registers[5][3] ), 
	.D(n271), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[5][2]  (.SI(\registers[5][1] ), 
	.SE(n373), 
	.RN(RST), 
	.Q(\registers[5][2] ), 
	.D(n270), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[5][1]  (.SI(\registers[5][0] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\registers[5][1] ), 
	.D(n269), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[5][0]  (.SI(\registers[4][7] ), 
	.SE(n375), 
	.RN(RST), 
	.Q(\registers[5][0] ), 
	.D(n268), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[9][7]  (.SI(\registers[9][6] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[9][7] ), 
	.D(n243), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[9][6]  (.SI(\registers[9][5] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[9][6] ), 
	.D(n242), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[9][5]  (.SI(\registers[9][4] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[9][5] ), 
	.D(n241), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[9][4]  (.SI(\registers[9][3] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[9][4] ), 
	.D(n240), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[9][3]  (.SI(\registers[9][2] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[9][3] ), 
	.D(n239), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[9][2]  (.SI(\registers[9][1] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[9][2] ), 
	.D(n238), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[9][1]  (.SI(\registers[9][0] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[9][1] ), 
	.D(n237), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[9][0]  (.SI(\registers[8][7] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[9][0] ), 
	.D(n236), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[13][7]  (.SI(\registers[13][6] ), 
	.SE(n374), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\registers[13][7] ), 
	.D(n211), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[13][6]  (.SI(\registers[13][5] ), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\registers[13][6] ), 
	.D(n210), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[13][5]  (.SI(\registers[13][4] ), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\registers[13][5] ), 
	.D(n209), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[13][4]  (.SI(\registers[13][3] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[13][4] ), 
	.D(n208), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[13][3]  (.SI(\registers[13][2] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[13][3] ), 
	.D(n207), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[13][2]  (.SI(\registers[13][1] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[13][2] ), 
	.D(n206), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[13][1]  (.SI(\registers[13][0] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[13][1] ), 
	.D(n205), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[13][0]  (.SI(\registers[12][7] ), 
	.SE(n375), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\registers[13][0] ), 
	.D(n204), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[7][7]  (.SI(\registers[7][6] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[7][7] ), 
	.D(n259), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[7][6]  (.SI(\registers[7][5] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[7][6] ), 
	.D(n258), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[7][5]  (.SI(\registers[7][4] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[7][5] ), 
	.D(n257), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[7][4]  (.SI(\registers[7][3] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[7][4] ), 
	.D(n256), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[7][3]  (.SI(\registers[7][2] ), 
	.SE(n374), 
	.RN(RST), 
	.Q(\registers[7][3] ), 
	.D(n255), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[7][2]  (.SI(\registers[7][1] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[7][2] ), 
	.D(n254), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[7][1]  (.SI(\registers[7][0] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\registers[7][1] ), 
	.D(n253), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[7][0]  (.SI(\registers[6][7] ), 
	.SE(n375), 
	.RN(RST), 
	.Q(\registers[7][0] ), 
	.D(n252), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[11][7]  (.SI(\registers[11][6] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[11][7] ), 
	.D(n227), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[11][6]  (.SI(\registers[11][5] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[11][6] ), 
	.D(n226), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[11][5]  (.SI(\registers[11][4] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[11][5] ), 
	.D(n225), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[11][4]  (.SI(\registers[11][3] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[11][4] ), 
	.D(n224), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[11][3]  (.SI(\registers[11][2] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[11][3] ), 
	.D(n223), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[11][2]  (.SI(\registers[11][1] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[11][2] ), 
	.D(n222), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[11][1]  (.SI(\registers[11][0] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[11][1] ), 
	.D(n221), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[11][0]  (.SI(\registers[10][7] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[11][0] ), 
	.D(n220), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[15][7]  (.SI(\registers[15][6] ), 
	.SE(n374), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\registers[15][7] ), 
	.D(n195), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[15][6]  (.SI(\registers[15][5] ), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\registers[15][6] ), 
	.D(n194), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[15][5]  (.SI(\registers[15][4] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[15][5] ), 
	.D(n193), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[15][4]  (.SI(\registers[15][3] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[15][4] ), 
	.D(n192), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[15][3]  (.SI(\registers[15][2] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[15][3] ), 
	.D(n191), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[15][2]  (.SI(\registers[15][1] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[15][2] ), 
	.D(n190), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[15][1]  (.SI(\registers[15][0] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[15][1] ), 
	.D(n189), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[15][0]  (.SI(\registers[14][7] ), 
	.SE(n375), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\registers[15][0] ), 
	.D(n188), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[6][7]  (.SI(\registers[6][6] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[6][7] ), 
	.D(n267), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[6][6]  (.SI(\registers[6][5] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[6][6] ), 
	.D(n266), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[6][5]  (.SI(\registers[6][4] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[6][5] ), 
	.D(n265), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[6][4]  (.SI(\registers[6][3] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[6][4] ), 
	.D(n264), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[6][3]  (.SI(\registers[6][2] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[6][3] ), 
	.D(n263), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[6][2]  (.SI(\registers[6][1] ), 
	.SE(n373), 
	.RN(RST), 
	.Q(\registers[6][2] ), 
	.D(n262), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[6][1]  (.SI(\registers[6][0] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\registers[6][1] ), 
	.D(n261), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[6][0]  (.SI(\registers[5][7] ), 
	.SE(n375), 
	.RN(RST), 
	.Q(\registers[6][0] ), 
	.D(n260), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[10][7]  (.SI(\registers[10][6] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[10][7] ), 
	.D(n235), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[10][6]  (.SI(\registers[10][5] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[10][6] ), 
	.D(n234), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[10][5]  (.SI(\registers[10][4] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[10][5] ), 
	.D(n233), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[10][4]  (.SI(\registers[10][3] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[10][4] ), 
	.D(n232), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[10][3]  (.SI(\registers[10][2] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[10][3] ), 
	.D(n231), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[10][2]  (.SI(\registers[10][1] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[10][2] ), 
	.D(n230), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[10][1]  (.SI(\registers[10][0] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[10][1] ), 
	.D(n229), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[10][0]  (.SI(\registers[9][7] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[10][0] ), 
	.D(n228), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[14][7]  (.SI(\registers[14][6] ), 
	.SE(n374), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\registers[14][7] ), 
	.D(n203), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[14][6]  (.SI(\registers[14][5] ), 
	.SE(n373), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\registers[14][6] ), 
	.D(n202), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[14][5]  (.SI(\registers[14][4] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[14][5] ), 
	.D(n201), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[14][4]  (.SI(\registers[14][3] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[14][4] ), 
	.D(n200), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[14][3]  (.SI(\registers[14][2] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[14][3] ), 
	.D(n199), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[14][2]  (.SI(\registers[14][1] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[14][2] ), 
	.D(n198), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[14][1]  (.SI(test_si3), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[14][1] ), 
	.D(n197), 
	.CK(CLK));
   SDFFRQX4M \registers_reg[14][0]  (.SI(\registers[13][7] ), 
	.SE(n375), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(\registers[14][0] ), 
	.D(n196), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[4][7]  (.SI(\registers[4][6] ), 
	.SE(n374), 
	.RN(RST), 
	.Q(\registers[4][7] ), 
	.D(n283), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[4][6]  (.SI(\registers[4][5] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[4][6] ), 
	.D(n282), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[4][5]  (.SI(\registers[4][4] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[4][5] ), 
	.D(n281), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[4][4]  (.SI(\registers[4][3] ), 
	.SE(n375), 
	.RN(RST), 
	.Q(\registers[4][4] ), 
	.D(n280), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[4][3]  (.SI(\registers[4][2] ), 
	.SE(n374), 
	.RN(RST), 
	.Q(\registers[4][3] ), 
	.D(n279), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[4][2]  (.SI(\registers[4][1] ), 
	.SE(n373), 
	.RN(RST), 
	.Q(\registers[4][2] ), 
	.D(n278), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[4][1]  (.SI(\registers[4][0] ), 
	.SE(n372), 
	.RN(RST), 
	.Q(\registers[4][1] ), 
	.D(n277), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[4][0]  (.SI(REG3[7]), 
	.SE(n375), 
	.RN(RST), 
	.Q(\registers[4][0] ), 
	.D(n276), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[8][7]  (.SI(\registers[8][6] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[8][7] ), 
	.D(n251), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[8][6]  (.SI(\registers[8][5] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[8][6] ), 
	.D(n250), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[8][5]  (.SI(\registers[8][4] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[8][5] ), 
	.D(n249), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[8][4]  (.SI(\registers[8][3] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[8][4] ), 
	.D(n248), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[8][3]  (.SI(\registers[8][2] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[8][3] ), 
	.D(n247), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[8][2]  (.SI(\registers[8][1] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[8][2] ), 
	.D(n246), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[8][1]  (.SI(\registers[8][0] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[8][1] ), 
	.D(n245), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[8][0]  (.SI(\registers[7][7] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[8][0] ), 
	.D(n244), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[12][7]  (.SI(\registers[12][6] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[12][7] ), 
	.D(n219), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[12][6]  (.SI(\registers[12][5] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[12][6] ), 
	.D(n218), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[12][5]  (.SI(\registers[12][4] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[12][5] ), 
	.D(n217), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[12][4]  (.SI(\registers[12][3] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[12][4] ), 
	.D(n216), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[12][3]  (.SI(\registers[12][2] ), 
	.SE(n374), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[12][3] ), 
	.D(n215), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[12][2]  (.SI(\registers[12][1] ), 
	.SE(n373), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[12][2] ), 
	.D(n214), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[12][1]  (.SI(\registers[12][0] ), 
	.SE(n372), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[12][1] ), 
	.D(n213), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[12][0]  (.SI(\registers[11][7] ), 
	.SE(n375), 
	.RN(FE_OFN0_SYNC_REF_SCAN_RST), 
	.Q(\registers[12][0] ), 
	.D(n212), 
	.CK(CLK));
   SDFFRQX4M \registers_reg[3][0]  (.SI(REG2[7]), 
	.SE(n374), 
	.RN(RST), 
	.Q(REG3[0]), 
	.D(n284), 
	.CK(CLK));
   SDFFSQX2M \registers_reg[2][0]  (.SN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.SI(REG1[7]), 
	.SE(test_se), 
	.Q(REG2[0]), 
	.D(n292), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[1][6]  (.SI(REG1[5]), 
	.SE(n373), 
	.RN(RST), 
	.Q(REG1[6]), 
	.D(n306), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[1][1]  (.SI(REG1[0]), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(REG1[1]), 
	.D(n301), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[0][7]  (.SI(REG0[6]), 
	.SE(n375), 
	.RN(RST), 
	.Q(REG0[7]), 
	.D(n315), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[0][6]  (.SI(REG0[5]), 
	.SE(n374), 
	.RN(RST), 
	.Q(REG0[6]), 
	.D(n314), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[0][5]  (.SI(REG0[4]), 
	.SE(n373), 
	.RN(RST), 
	.Q(REG0[5]), 
	.D(n313), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[0][4]  (.SI(REG0[3]), 
	.SE(n372), 
	.RN(RST), 
	.Q(REG0[4]), 
	.D(n312), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[0][3]  (.SI(REG0[2]), 
	.SE(n375), 
	.RN(RST), 
	.Q(REG0[3]), 
	.D(n311), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[0][2]  (.SI(REG0[1]), 
	.SE(n374), 
	.RN(RST), 
	.Q(REG0[2]), 
	.D(n310), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[0][1]  (.SI(REG0[0]), 
	.SE(n373), 
	.RN(RST), 
	.Q(REG0[1]), 
	.D(n309), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[0][0]  (.SI(RdData[7]), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(REG0[0]), 
	.D(n308), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[2][1]  (.SI(REG2[0]), 
	.SE(n375), 
	.RN(RST), 
	.Q(REG2[1]), 
	.D(n293), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[1][5]  (.SI(REG1[4]), 
	.SE(n374), 
	.RN(RST), 
	.Q(REG1[5]), 
	.D(n305), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[1][4]  (.SI(REG1[3]), 
	.SE(n373), 
	.RN(RST), 
	.Q(REG1[4]), 
	.D(n304), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[1][7]  (.SI(REG1[6]), 
	.SE(n372), 
	.RN(RST), 
	.Q(REG1[7]), 
	.D(n307), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[1][3]  (.SI(REG1[2]), 
	.SE(n375), 
	.RN(RST), 
	.Q(REG1[3]), 
	.D(n303), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[1][2]  (.SI(REG1[1]), 
	.SE(n374), 
	.RN(RST), 
	.Q(REG1[2]), 
	.D(n302), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[1][0]  (.SI(REG0[7]), 
	.SE(n373), 
	.RN(RST), 
	.Q(REG1[0]), 
	.D(n300), 
	.CK(CLK));
   SDFFRQX2M RdData_Valid_reg (.SI(test_si1), 
	.SE(n372), 
	.RN(FE_OFN1_SYNC_REF_SCAN_RST), 
	.Q(RdData_Valid), 
	.D(n179), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[3][6]  (.SI(REG3[5]), 
	.SE(n375), 
	.RN(RST), 
	.Q(REG3[6]), 
	.D(n290), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[3][7]  (.SI(REG3[6]), 
	.SE(n374), 
	.RN(RST), 
	.Q(REG3[7]), 
	.D(n291), 
	.CK(CLK));
   SDFFSQX2M \registers_reg[3][5]  (.SN(RST), 
	.SI(REG3[4]), 
	.SE(n372), 
	.Q(REG3[5]), 
	.D(n289), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[3][4]  (.SI(REG3[3]), 
	.SE(n373), 
	.RN(RST), 
	.Q(REG3[4]), 
	.D(n288), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[3][2]  (.SI(REG3[1]), 
	.SE(n372), 
	.RN(RST), 
	.Q(REG3[2]), 
	.D(n286), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[3][3]  (.SI(REG3[2]), 
	.SE(n375), 
	.RN(RST), 
	.Q(REG3[3]), 
	.D(n287), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[3][1]  (.SI(test_si2), 
	.SE(n374), 
	.RN(RST), 
	.Q(REG3[1]), 
	.D(n285), 
	.CK(CLK));
   SDFFSQX2M \registers_reg[2][7]  (.SN(RST), 
	.SI(REG2[6]), 
	.SE(n375), 
	.Q(REG2[7]), 
	.D(n299), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[2][3]  (.SI(REG2[2]), 
	.SE(n373), 
	.RN(RST), 
	.Q(REG2[3]), 
	.D(n295), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[2][4]  (.SI(REG2[3]), 
	.SE(n372), 
	.RN(RST), 
	.Q(REG2[4]), 
	.D(n296), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[2][5]  (.SI(REG2[4]), 
	.SE(n375), 
	.RN(RST), 
	.Q(REG2[5]), 
	.D(n297), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[2][6]  (.SI(REG2[5]), 
	.SE(n374), 
	.RN(RST), 
	.Q(REG2[6]), 
	.D(n298), 
	.CK(CLK));
   SDFFRQX2M \registers_reg[2][2]  (.SI(REG2[1]), 
	.SE(n373), 
	.RN(RST), 
	.Q(REG2[2]), 
	.D(n294), 
	.CK(CLK));
   NOR2X2M U140 (.Y(n159), 
	.B(n336), 
	.A(n367));
   NOR2X2M U141 (.Y(n154), 
	.B(n341), 
	.A(n367));
   NOR2X2M U142 (.Y(n165), 
	.B(N13), 
	.A(n336));
   INVX2M U143 (.Y(n365), 
	.A(WrData[6]));
   INVX2M U144 (.Y(n364), 
	.A(WrData[5]));
   INVX2M U145 (.Y(n366), 
	.A(WrData[7]));
   NOR2X2M U146 (.Y(n162), 
	.B(N13), 
	.A(n341));
   INVX4M U147 (.Y(n338), 
	.A(n340));
   INVX2M U148 (.Y(n336), 
	.A(n341));
   INVX2M U149 (.Y(n358), 
	.A(WrEn));
   INVX2M U150 (.Y(n357), 
	.A(n152));
   INVX4M U151 (.Y(n339), 
	.A(n340));
   NOR2X2M U154 (.Y(n151), 
	.B(RdEn), 
	.A(n358));
   NAND2X2M U155 (.Y(n158), 
	.B(n155), 
	.A(n159));
   NAND2X2M U156 (.Y(n160), 
	.B(n157), 
	.A(n159));
   NAND2X2M U157 (.Y(n156), 
	.B(n154), 
	.A(n157));
   NAND2X2M U158 (.Y(n168), 
	.B(n154), 
	.A(n169));
   NAND2X2M U159 (.Y(n170), 
	.B(n154), 
	.A(n171));
   NAND2X2M U160 (.Y(n172), 
	.B(n159), 
	.A(n169));
   NAND2X2M U161 (.Y(n173), 
	.B(n159), 
	.A(n171));
   NAND2X2M U162 (.Y(n153), 
	.B(n155), 
	.A(n154));
   NAND2X2M U163 (.Y(n152), 
	.B(n358), 
	.A(RdEn));
   NAND2X2M U174 (.Y(n174), 
	.B(n162), 
	.A(n169));
   NAND2X2M U175 (.Y(n175), 
	.B(n162), 
	.A(n171));
   AND2X2M U176 (.Y(n169), 
	.B(N11), 
	.A(n177));
   AND2X2M U177 (.Y(n171), 
	.B(n340), 
	.A(n177));
   NAND2X2M U178 (.Y(n161), 
	.B(n155), 
	.A(n162));
   NAND2X2M U179 (.Y(n163), 
	.B(n157), 
	.A(n162));
   NAND2X2M U180 (.Y(n164), 
	.B(n155), 
	.A(n165));
   NAND2X2M U181 (.Y(n167), 
	.B(n157), 
	.A(n165));
   NAND2X2M U182 (.Y(n176), 
	.B(n165), 
	.A(n169));
   NAND2X2M U183 (.Y(n178), 
	.B(n165), 
	.A(n171));
   INVX2M U184 (.Y(n363), 
	.A(WrData[0]));
   INVX2M U185 (.Y(n362), 
	.A(WrData[1]));
   INVX2M U186 (.Y(n361), 
	.A(WrData[2]));
   INVX2M U187 (.Y(n360), 
	.A(WrData[3]));
   INVX2M U188 (.Y(n359), 
	.A(WrData[4]));
   AND2X2M U189 (.Y(n155), 
	.B(N11), 
	.A(n166));
   AND2X2M U190 (.Y(n157), 
	.B(n340), 
	.A(n166));
   OAI2BB2X1M U196 (.Y(n289), 
	.B1(n174), 
	.B0(n364), 
	.A1N(n174), 
	.A0N(REG3[5]));
   OAI2BB2X1M U197 (.Y(n292), 
	.B1(n175), 
	.B0(n363), 
	.A1N(n175), 
	.A0N(REG2[0]));
   OAI2BB2X1M U198 (.Y(n299), 
	.B1(n175), 
	.B0(n366), 
	.A1N(n175), 
	.A0N(REG2[7]));
   NOR2BX2M U199 (.Y(n177), 
	.B(N14), 
	.AN(n151));
   OAI2BB2X1M U200 (.Y(n188), 
	.B1(n363), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\registers[15][0] ));
   OAI2BB2X1M U201 (.Y(n189), 
	.B1(n362), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\registers[15][1] ));
   OAI2BB2X1M U202 (.Y(n190), 
	.B1(n361), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\registers[15][2] ));
   OAI2BB2X1M U203 (.Y(n191), 
	.B1(n360), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\registers[15][3] ));
   OAI2BB2X1M U204 (.Y(n192), 
	.B1(n359), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\registers[15][4] ));
   OAI2BB2X1M U205 (.Y(n193), 
	.B1(n364), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\registers[15][5] ));
   OAI2BB2X1M U206 (.Y(n194), 
	.B1(n365), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\registers[15][6] ));
   OAI2BB2X1M U207 (.Y(n195), 
	.B1(n366), 
	.B0(n153), 
	.A1N(n153), 
	.A0N(\registers[15][7] ));
   OAI2BB2X1M U208 (.Y(n204), 
	.B1(n158), 
	.B0(n363), 
	.A1N(n158), 
	.A0N(\registers[13][0] ));
   OAI2BB2X1M U209 (.Y(n205), 
	.B1(n158), 
	.B0(n362), 
	.A1N(n158), 
	.A0N(\registers[13][1] ));
   OAI2BB2X1M U210 (.Y(n206), 
	.B1(n158), 
	.B0(n361), 
	.A1N(n158), 
	.A0N(\registers[13][2] ));
   OAI2BB2X1M U211 (.Y(n207), 
	.B1(n158), 
	.B0(n360), 
	.A1N(n158), 
	.A0N(\registers[13][3] ));
   OAI2BB2X1M U212 (.Y(n208), 
	.B1(n158), 
	.B0(n359), 
	.A1N(n158), 
	.A0N(\registers[13][4] ));
   OAI2BB2X1M U213 (.Y(n209), 
	.B1(n158), 
	.B0(n364), 
	.A1N(n158), 
	.A0N(\registers[13][5] ));
   OAI2BB2X1M U214 (.Y(n210), 
	.B1(n158), 
	.B0(n365), 
	.A1N(n158), 
	.A0N(\registers[13][6] ));
   OAI2BB2X1M U215 (.Y(n211), 
	.B1(n158), 
	.B0(n366), 
	.A1N(n158), 
	.A0N(\registers[13][7] ));
   OAI2BB2X1M U216 (.Y(n212), 
	.B1(n160), 
	.B0(n363), 
	.A1N(n160), 
	.A0N(\registers[12][0] ));
   OAI2BB2X1M U217 (.Y(n213), 
	.B1(n160), 
	.B0(n362), 
	.A1N(n160), 
	.A0N(\registers[12][1] ));
   OAI2BB2X1M U218 (.Y(n214), 
	.B1(n160), 
	.B0(n361), 
	.A1N(n160), 
	.A0N(\registers[12][2] ));
   OAI2BB2X1M U219 (.Y(n215), 
	.B1(n160), 
	.B0(n360), 
	.A1N(n160), 
	.A0N(\registers[12][3] ));
   OAI2BB2X1M U220 (.Y(n216), 
	.B1(n160), 
	.B0(n359), 
	.A1N(n160), 
	.A0N(\registers[12][4] ));
   OAI2BB2X1M U221 (.Y(n217), 
	.B1(n160), 
	.B0(n364), 
	.A1N(n160), 
	.A0N(\registers[12][5] ));
   OAI2BB2X1M U222 (.Y(n218), 
	.B1(n160), 
	.B0(n365), 
	.A1N(n160), 
	.A0N(\registers[12][6] ));
   OAI2BB2X1M U223 (.Y(n219), 
	.B1(n160), 
	.B0(n366), 
	.A1N(n160), 
	.A0N(\registers[12][7] ));
   OAI2BB2X1M U224 (.Y(n220), 
	.B1(n161), 
	.B0(n363), 
	.A1N(n161), 
	.A0N(\registers[11][0] ));
   OAI2BB2X1M U225 (.Y(n221), 
	.B1(n161), 
	.B0(n362), 
	.A1N(n161), 
	.A0N(\registers[11][1] ));
   OAI2BB2X1M U226 (.Y(n222), 
	.B1(n161), 
	.B0(n361), 
	.A1N(n161), 
	.A0N(\registers[11][2] ));
   OAI2BB2X1M U227 (.Y(n223), 
	.B1(n161), 
	.B0(n360), 
	.A1N(n161), 
	.A0N(\registers[11][3] ));
   OAI2BB2X1M U228 (.Y(n224), 
	.B1(n161), 
	.B0(n359), 
	.A1N(n161), 
	.A0N(\registers[11][4] ));
   OAI2BB2X1M U229 (.Y(n225), 
	.B1(n161), 
	.B0(n364), 
	.A1N(n161), 
	.A0N(\registers[11][5] ));
   OAI2BB2X1M U230 (.Y(n226), 
	.B1(n161), 
	.B0(n365), 
	.A1N(n161), 
	.A0N(\registers[11][6] ));
   OAI2BB2X1M U231 (.Y(n227), 
	.B1(n161), 
	.B0(n366), 
	.A1N(n161), 
	.A0N(\registers[11][7] ));
   OAI2BB2X1M U232 (.Y(n228), 
	.B1(n163), 
	.B0(n363), 
	.A1N(n163), 
	.A0N(\registers[10][0] ));
   OAI2BB2X1M U233 (.Y(n229), 
	.B1(n163), 
	.B0(n362), 
	.A1N(n163), 
	.A0N(\registers[10][1] ));
   OAI2BB2X1M U234 (.Y(n230), 
	.B1(n163), 
	.B0(n361), 
	.A1N(n163), 
	.A0N(\registers[10][2] ));
   OAI2BB2X1M U235 (.Y(n231), 
	.B1(n163), 
	.B0(n360), 
	.A1N(n163), 
	.A0N(\registers[10][3] ));
   OAI2BB2X1M U236 (.Y(n232), 
	.B1(n163), 
	.B0(n359), 
	.A1N(n163), 
	.A0N(\registers[10][4] ));
   OAI2BB2X1M U237 (.Y(n233), 
	.B1(n163), 
	.B0(n364), 
	.A1N(n163), 
	.A0N(\registers[10][5] ));
   OAI2BB2X1M U238 (.Y(n234), 
	.B1(n163), 
	.B0(n365), 
	.A1N(n163), 
	.A0N(\registers[10][6] ));
   OAI2BB2X1M U239 (.Y(n235), 
	.B1(n163), 
	.B0(n366), 
	.A1N(n163), 
	.A0N(\registers[10][7] ));
   OAI2BB2X1M U240 (.Y(n236), 
	.B1(n164), 
	.B0(n363), 
	.A1N(n164), 
	.A0N(\registers[9][0] ));
   OAI2BB2X1M U241 (.Y(n237), 
	.B1(n164), 
	.B0(n362), 
	.A1N(n164), 
	.A0N(\registers[9][1] ));
   OAI2BB2X1M U242 (.Y(n238), 
	.B1(n164), 
	.B0(n361), 
	.A1N(n164), 
	.A0N(\registers[9][2] ));
   OAI2BB2X1M U243 (.Y(n239), 
	.B1(n164), 
	.B0(n360), 
	.A1N(n164), 
	.A0N(\registers[9][3] ));
   OAI2BB2X1M U244 (.Y(n240), 
	.B1(n164), 
	.B0(n359), 
	.A1N(n164), 
	.A0N(\registers[9][4] ));
   OAI2BB2X1M U245 (.Y(n241), 
	.B1(n164), 
	.B0(n364), 
	.A1N(n164), 
	.A0N(\registers[9][5] ));
   OAI2BB2X1M U246 (.Y(n242), 
	.B1(n164), 
	.B0(n365), 
	.A1N(n164), 
	.A0N(\registers[9][6] ));
   OAI2BB2X1M U247 (.Y(n243), 
	.B1(n164), 
	.B0(n366), 
	.A1N(n164), 
	.A0N(\registers[9][7] ));
   OAI2BB2X1M U248 (.Y(n244), 
	.B1(n167), 
	.B0(n363), 
	.A1N(n167), 
	.A0N(\registers[8][0] ));
   OAI2BB2X1M U249 (.Y(n245), 
	.B1(n167), 
	.B0(n362), 
	.A1N(n167), 
	.A0N(\registers[8][1] ));
   OAI2BB2X1M U250 (.Y(n246), 
	.B1(n167), 
	.B0(n361), 
	.A1N(n167), 
	.A0N(\registers[8][2] ));
   OAI2BB2X1M U251 (.Y(n247), 
	.B1(n167), 
	.B0(n360), 
	.A1N(n167), 
	.A0N(\registers[8][3] ));
   OAI2BB2X1M U252 (.Y(n248), 
	.B1(n167), 
	.B0(n359), 
	.A1N(n167), 
	.A0N(\registers[8][4] ));
   OAI2BB2X1M U253 (.Y(n249), 
	.B1(n167), 
	.B0(n364), 
	.A1N(n167), 
	.A0N(\registers[8][5] ));
   OAI2BB2X1M U254 (.Y(n250), 
	.B1(n167), 
	.B0(n365), 
	.A1N(n167), 
	.A0N(\registers[8][6] ));
   OAI2BB2X1M U255 (.Y(n251), 
	.B1(n167), 
	.B0(n366), 
	.A1N(n167), 
	.A0N(\registers[8][7] ));
   OAI2BB2X1M U256 (.Y(n196), 
	.B1(n156), 
	.B0(n363), 
	.A1N(n156), 
	.A0N(\registers[14][0] ));
   OAI2BB2X1M U257 (.Y(n197), 
	.B1(n156), 
	.B0(n362), 
	.A1N(n156), 
	.A0N(\registers[14][1] ));
   OAI2BB2X1M U258 (.Y(n198), 
	.B1(n156), 
	.B0(n361), 
	.A1N(n156), 
	.A0N(\registers[14][2] ));
   OAI2BB2X1M U259 (.Y(n199), 
	.B1(n156), 
	.B0(n360), 
	.A1N(n156), 
	.A0N(\registers[14][3] ));
   OAI2BB2X1M U260 (.Y(n200), 
	.B1(n156), 
	.B0(n359), 
	.A1N(n156), 
	.A0N(\registers[14][4] ));
   OAI2BB2X1M U261 (.Y(n201), 
	.B1(n156), 
	.B0(n364), 
	.A1N(n156), 
	.A0N(\registers[14][5] ));
   OAI2BB2X1M U262 (.Y(n202), 
	.B1(n156), 
	.B0(n365), 
	.A1N(n156), 
	.A0N(\registers[14][6] ));
   OAI2BB2X1M U263 (.Y(n203), 
	.B1(n156), 
	.B0(n366), 
	.A1N(n156), 
	.A0N(\registers[14][7] ));
   OAI2BB2X1M U264 (.Y(n252), 
	.B1(n168), 
	.B0(n363), 
	.A1N(n168), 
	.A0N(\registers[7][0] ));
   OAI2BB2X1M U265 (.Y(n253), 
	.B1(n168), 
	.B0(n362), 
	.A1N(n168), 
	.A0N(\registers[7][1] ));
   OAI2BB2X1M U266 (.Y(n254), 
	.B1(n168), 
	.B0(n361), 
	.A1N(n168), 
	.A0N(\registers[7][2] ));
   OAI2BB2X1M U267 (.Y(n255), 
	.B1(n168), 
	.B0(n360), 
	.A1N(n168), 
	.A0N(\registers[7][3] ));
   OAI2BB2X1M U268 (.Y(n256), 
	.B1(n168), 
	.B0(n359), 
	.A1N(n168), 
	.A0N(\registers[7][4] ));
   OAI2BB2X1M U269 (.Y(n257), 
	.B1(n168), 
	.B0(n364), 
	.A1N(n168), 
	.A0N(\registers[7][5] ));
   OAI2BB2X1M U270 (.Y(n258), 
	.B1(n168), 
	.B0(n365), 
	.A1N(n168), 
	.A0N(\registers[7][6] ));
   OAI2BB2X1M U271 (.Y(n259), 
	.B1(n168), 
	.B0(n366), 
	.A1N(n168), 
	.A0N(\registers[7][7] ));
   OAI2BB2X1M U272 (.Y(n260), 
	.B1(n170), 
	.B0(n363), 
	.A1N(n170), 
	.A0N(\registers[6][0] ));
   OAI2BB2X1M U273 (.Y(n261), 
	.B1(n170), 
	.B0(n362), 
	.A1N(n170), 
	.A0N(\registers[6][1] ));
   OAI2BB2X1M U274 (.Y(n262), 
	.B1(n170), 
	.B0(n361), 
	.A1N(n170), 
	.A0N(\registers[6][2] ));
   OAI2BB2X1M U275 (.Y(n263), 
	.B1(n170), 
	.B0(n360), 
	.A1N(n170), 
	.A0N(\registers[6][3] ));
   OAI2BB2X1M U276 (.Y(n264), 
	.B1(n170), 
	.B0(n359), 
	.A1N(n170), 
	.A0N(\registers[6][4] ));
   OAI2BB2X1M U277 (.Y(n265), 
	.B1(n170), 
	.B0(n364), 
	.A1N(n170), 
	.A0N(\registers[6][5] ));
   OAI2BB2X1M U278 (.Y(n266), 
	.B1(n170), 
	.B0(n365), 
	.A1N(n170), 
	.A0N(\registers[6][6] ));
   OAI2BB2X1M U279 (.Y(n267), 
	.B1(n170), 
	.B0(n366), 
	.A1N(n170), 
	.A0N(\registers[6][7] ));
   OAI2BB2X1M U280 (.Y(n268), 
	.B1(n172), 
	.B0(n363), 
	.A1N(n172), 
	.A0N(\registers[5][0] ));
   OAI2BB2X1M U281 (.Y(n269), 
	.B1(n172), 
	.B0(n362), 
	.A1N(n172), 
	.A0N(\registers[5][1] ));
   OAI2BB2X1M U282 (.Y(n270), 
	.B1(n172), 
	.B0(n361), 
	.A1N(n172), 
	.A0N(\registers[5][2] ));
   OAI2BB2X1M U283 (.Y(n271), 
	.B1(n172), 
	.B0(n360), 
	.A1N(n172), 
	.A0N(\registers[5][3] ));
   OAI2BB2X1M U284 (.Y(n272), 
	.B1(n172), 
	.B0(n359), 
	.A1N(n172), 
	.A0N(\registers[5][4] ));
   OAI2BB2X1M U285 (.Y(n273), 
	.B1(n172), 
	.B0(n364), 
	.A1N(n172), 
	.A0N(\registers[5][5] ));
   OAI2BB2X1M U286 (.Y(n274), 
	.B1(n172), 
	.B0(n365), 
	.A1N(n172), 
	.A0N(\registers[5][6] ));
   OAI2BB2X1M U287 (.Y(n275), 
	.B1(n172), 
	.B0(n366), 
	.A1N(n172), 
	.A0N(\registers[5][7] ));
   OAI2BB2X1M U288 (.Y(n276), 
	.B1(n173), 
	.B0(n363), 
	.A1N(n173), 
	.A0N(\registers[4][0] ));
   OAI2BB2X1M U289 (.Y(n277), 
	.B1(n173), 
	.B0(n362), 
	.A1N(n173), 
	.A0N(\registers[4][1] ));
   OAI2BB2X1M U290 (.Y(n278), 
	.B1(n173), 
	.B0(n361), 
	.A1N(n173), 
	.A0N(\registers[4][2] ));
   OAI2BB2X1M U291 (.Y(n279), 
	.B1(n173), 
	.B0(n360), 
	.A1N(n173), 
	.A0N(\registers[4][3] ));
   OAI2BB2X1M U292 (.Y(n280), 
	.B1(n173), 
	.B0(n359), 
	.A1N(n173), 
	.A0N(\registers[4][4] ));
   OAI2BB2X1M U293 (.Y(n281), 
	.B1(n173), 
	.B0(n364), 
	.A1N(n173), 
	.A0N(\registers[4][5] ));
   OAI2BB2X1M U294 (.Y(n282), 
	.B1(n173), 
	.B0(n365), 
	.A1N(n173), 
	.A0N(\registers[4][6] ));
   OAI2BB2X1M U295 (.Y(n283), 
	.B1(n173), 
	.B0(n366), 
	.A1N(n173), 
	.A0N(\registers[4][7] ));
   OAI2BB2X1M U296 (.Y(n284), 
	.B1(n174), 
	.B0(n363), 
	.A1N(n174), 
	.A0N(REG3[0]));
   OAI2BB2X1M U297 (.Y(n285), 
	.B1(n174), 
	.B0(n362), 
	.A1N(n174), 
	.A0N(REG3[1]));
   OAI2BB2X1M U298 (.Y(n286), 
	.B1(n174), 
	.B0(n361), 
	.A1N(n174), 
	.A0N(REG3[2]));
   OAI2BB2X1M U299 (.Y(n287), 
	.B1(n174), 
	.B0(n360), 
	.A1N(n174), 
	.A0N(REG3[3]));
   OAI2BB2X1M U300 (.Y(n288), 
	.B1(n174), 
	.B0(n359), 
	.A1N(n174), 
	.A0N(REG3[4]));
   OAI2BB2X1M U301 (.Y(n290), 
	.B1(n174), 
	.B0(n365), 
	.A1N(n174), 
	.A0N(REG3[6]));
   OAI2BB2X1M U302 (.Y(n291), 
	.B1(n174), 
	.B0(n366), 
	.A1N(n174), 
	.A0N(REG3[7]));
   OAI2BB2X1M U303 (.Y(n293), 
	.B1(n175), 
	.B0(n362), 
	.A1N(n175), 
	.A0N(REG2[1]));
   OAI2BB2X1M U304 (.Y(n294), 
	.B1(n175), 
	.B0(n361), 
	.A1N(n175), 
	.A0N(REG2[2]));
   OAI2BB2X1M U305 (.Y(n295), 
	.B1(n175), 
	.B0(n360), 
	.A1N(n175), 
	.A0N(REG2[3]));
   OAI2BB2X1M U306 (.Y(n296), 
	.B1(n175), 
	.B0(n359), 
	.A1N(n175), 
	.A0N(REG2[4]));
   OAI2BB2X1M U307 (.Y(n297), 
	.B1(n175), 
	.B0(n364), 
	.A1N(n175), 
	.A0N(REG2[5]));
   OAI2BB2X1M U308 (.Y(n298), 
	.B1(n175), 
	.B0(n365), 
	.A1N(n175), 
	.A0N(REG2[6]));
   OAI2BB2X1M U309 (.Y(n300), 
	.B1(n176), 
	.B0(n363), 
	.A1N(n176), 
	.A0N(REG1[0]));
   OAI2BB2X1M U310 (.Y(n301), 
	.B1(n176), 
	.B0(n362), 
	.A1N(n176), 
	.A0N(REG1[1]));
   OAI2BB2X1M U311 (.Y(n302), 
	.B1(n176), 
	.B0(n361), 
	.A1N(n176), 
	.A0N(REG1[2]));
   OAI2BB2X1M U312 (.Y(n303), 
	.B1(n176), 
	.B0(n360), 
	.A1N(n176), 
	.A0N(REG1[3]));
   OAI2BB2X1M U313 (.Y(n304), 
	.B1(n176), 
	.B0(n359), 
	.A1N(n176), 
	.A0N(REG1[4]));
   OAI2BB2X1M U314 (.Y(n305), 
	.B1(n176), 
	.B0(n364), 
	.A1N(n176), 
	.A0N(REG1[5]));
   OAI2BB2X1M U315 (.Y(n306), 
	.B1(n176), 
	.B0(n365), 
	.A1N(n176), 
	.A0N(REG1[6]));
   OAI2BB2X1M U316 (.Y(n307), 
	.B1(n176), 
	.B0(n366), 
	.A1N(n176), 
	.A0N(REG1[7]));
   OAI2BB2X1M U317 (.Y(n308), 
	.B1(n178), 
	.B0(n363), 
	.A1N(n178), 
	.A0N(REG0[0]));
   OAI2BB2X1M U318 (.Y(n309), 
	.B1(n178), 
	.B0(n362), 
	.A1N(n178), 
	.A0N(REG0[1]));
   OAI2BB2X1M U319 (.Y(n310), 
	.B1(n178), 
	.B0(n361), 
	.A1N(n178), 
	.A0N(REG0[2]));
   OAI2BB2X1M U320 (.Y(n311), 
	.B1(n178), 
	.B0(n360), 
	.A1N(n178), 
	.A0N(REG0[3]));
   OAI2BB2X1M U321 (.Y(n312), 
	.B1(n178), 
	.B0(n359), 
	.A1N(n178), 
	.A0N(REG0[4]));
   OAI2BB2X1M U322 (.Y(n313), 
	.B1(n178), 
	.B0(n364), 
	.A1N(n178), 
	.A0N(REG0[5]));
   OAI2BB2X1M U323 (.Y(n314), 
	.B1(n178), 
	.B0(n365), 
	.A1N(n178), 
	.A0N(REG0[6]));
   OAI2BB2X1M U324 (.Y(n315), 
	.B1(n178), 
	.B0(n366), 
	.A1N(n178), 
	.A0N(REG0[7]));
   MX4X1M U325 (.Y(n145), 
	.S1(n336), 
	.S0(n338), 
	.D(REG3[1]), 
	.C(REG2[1]), 
	.B(REG1[1]), 
	.A(REG0[1]));
   MX4X1M U326 (.Y(n140), 
	.S1(n336), 
	.S0(N11), 
	.D(\registers[7][0] ), 
	.C(\registers[6][0] ), 
	.B(\registers[5][0] ), 
	.A(\registers[4][0] ));
   MX4X1M U327 (.Y(n144), 
	.S1(n336), 
	.S0(n338), 
	.D(\registers[7][1] ), 
	.C(\registers[6][1] ), 
	.B(\registers[5][1] ), 
	.A(\registers[4][1] ));
   MX4X1M U328 (.Y(n148), 
	.S1(N12), 
	.S0(n338), 
	.D(\registers[7][2] ), 
	.C(\registers[6][2] ), 
	.B(\registers[5][2] ), 
	.A(\registers[4][2] ));
   MX4X1M U329 (.Y(n317), 
	.S1(n336), 
	.S0(n338), 
	.D(\registers[7][3] ), 
	.C(\registers[6][3] ), 
	.B(\registers[5][3] ), 
	.A(\registers[4][3] ));
   MX4X1M U330 (.Y(n321), 
	.S1(N12), 
	.S0(n338), 
	.D(\registers[7][4] ), 
	.C(\registers[6][4] ), 
	.B(\registers[5][4] ), 
	.A(\registers[4][4] ));
   MX4X1M U331 (.Y(n325), 
	.S1(N12), 
	.S0(n339), 
	.D(\registers[7][5] ), 
	.C(\registers[6][5] ), 
	.B(\registers[5][5] ), 
	.A(\registers[4][5] ));
   MX4X1M U332 (.Y(n329), 
	.S1(N12), 
	.S0(n339), 
	.D(\registers[7][6] ), 
	.C(\registers[6][6] ), 
	.B(\registers[5][6] ), 
	.A(\registers[4][6] ));
   MX4X1M U333 (.Y(n333), 
	.S1(N12), 
	.S0(n339), 
	.D(\registers[7][7] ), 
	.C(\registers[6][7] ), 
	.B(\registers[5][7] ), 
	.A(\registers[4][7] ));
   MX4X1M U334 (.Y(n138), 
	.S1(n336), 
	.S0(n339), 
	.D(\registers[15][0] ), 
	.C(\registers[14][0] ), 
	.B(\registers[13][0] ), 
	.A(\registers[12][0] ));
   MX4X1M U335 (.Y(n146), 
	.S1(n336), 
	.S0(n338), 
	.D(\registers[15][2] ), 
	.C(\registers[14][2] ), 
	.B(\registers[13][2] ), 
	.A(\registers[12][2] ));
   MX4X1M U336 (.Y(n150), 
	.S1(n336), 
	.S0(n338), 
	.D(\registers[15][3] ), 
	.C(\registers[14][3] ), 
	.B(\registers[13][3] ), 
	.A(\registers[12][3] ));
   MX4X1M U337 (.Y(n319), 
	.S1(n336), 
	.S0(n338), 
	.D(\registers[15][4] ), 
	.C(\registers[14][4] ), 
	.B(\registers[13][4] ), 
	.A(\registers[12][4] ));
   MX4X1M U338 (.Y(n323), 
	.S1(N12), 
	.S0(n339), 
	.D(\registers[15][5] ), 
	.C(\registers[14][5] ), 
	.B(\registers[13][5] ), 
	.A(\registers[12][5] ));
   MX4X1M U339 (.Y(n327), 
	.S1(N12), 
	.S0(n339), 
	.D(\registers[15][6] ), 
	.C(\registers[14][6] ), 
	.B(\registers[13][6] ), 
	.A(\registers[12][6] ));
   MX4X1M U340 (.Y(n331), 
	.S1(N12), 
	.S0(n339), 
	.D(\registers[15][7] ), 
	.C(\registers[14][7] ), 
	.B(\registers[13][7] ), 
	.A(\registers[12][7] ));
   AND2X2M U341 (.Y(n166), 
	.B(n151), 
	.A(N14));
   AO22X1M U342 (.Y(n180), 
	.B1(n152), 
	.B0(RdData[0]), 
	.A1(n357), 
	.A0(N43));
   MX4X1M U343 (.Y(N43), 
	.S1(N13), 
	.S0(N14), 
	.D(n138), 
	.C(n140), 
	.B(n139), 
	.A(n141));
   MX4X1M U344 (.Y(n141), 
	.S1(n336), 
	.S0(N11), 
	.D(REG3[0]), 
	.C(REG2[0]), 
	.B(REG1[0]), 
	.A(REG0[0]));
   MX4X1M U345 (.Y(n139), 
	.S1(n336), 
	.S0(N11), 
	.D(\registers[11][0] ), 
	.C(\registers[10][0] ), 
	.B(\registers[9][0] ), 
	.A(\registers[8][0] ));
   AO22X1M U346 (.Y(n181), 
	.B1(n152), 
	.B0(RdData[1]), 
	.A1(n357), 
	.A0(N42));
   MX4X1M U347 (.Y(N42), 
	.S1(N13), 
	.S0(N14), 
	.D(n142), 
	.C(n144), 
	.B(n143), 
	.A(n145));
   MX4X1M U348 (.Y(n143), 
	.S1(n336), 
	.S0(N11), 
	.D(\registers[11][1] ), 
	.C(\registers[10][1] ), 
	.B(\registers[9][1] ), 
	.A(\registers[8][1] ));
   MX4X1M U349 (.Y(n142), 
	.S1(n336), 
	.S0(n338), 
	.D(\registers[15][1] ), 
	.C(\registers[14][1] ), 
	.B(\registers[13][1] ), 
	.A(\registers[12][1] ));
   AO22X1M U350 (.Y(n182), 
	.B1(n152), 
	.B0(RdData[2]), 
	.A1(n357), 
	.A0(N41));
   MX4X1M U351 (.Y(N41), 
	.S1(N13), 
	.S0(N14), 
	.D(n146), 
	.C(n148), 
	.B(n147), 
	.A(n149));
   MX4X1M U352 (.Y(n149), 
	.S1(N12), 
	.S0(n338), 
	.D(REG3[2]), 
	.C(REG2[2]), 
	.B(REG1[2]), 
	.A(REG0[2]));
   MX4X1M U353 (.Y(n147), 
	.S1(N12), 
	.S0(n338), 
	.D(\registers[11][2] ), 
	.C(\registers[10][2] ), 
	.B(\registers[9][2] ), 
	.A(\registers[8][2] ));
   AO22X1M U354 (.Y(n183), 
	.B1(n152), 
	.B0(RdData[3]), 
	.A1(n357), 
	.A0(N40));
   MX4X1M U355 (.Y(N40), 
	.S1(N13), 
	.S0(N14), 
	.D(n150), 
	.C(n317), 
	.B(n316), 
	.A(n318));
   MX4X1M U356 (.Y(n318), 
	.S1(N12), 
	.S0(n338), 
	.D(REG3[3]), 
	.C(REG2[3]), 
	.B(REG1[3]), 
	.A(REG0[3]));
   MX4X1M U357 (.Y(n316), 
	.S1(N12), 
	.S0(n338), 
	.D(\registers[11][3] ), 
	.C(\registers[10][3] ), 
	.B(\registers[9][3] ), 
	.A(\registers[8][3] ));
   AO22X1M U358 (.Y(n184), 
	.B1(n152), 
	.B0(RdData[4]), 
	.A1(n357), 
	.A0(N39));
   MX4X1M U359 (.Y(N39), 
	.S1(N13), 
	.S0(N14), 
	.D(n319), 
	.C(n321), 
	.B(n320), 
	.A(n322));
   MX4X1M U360 (.Y(n322), 
	.S1(N12), 
	.S0(n339), 
	.D(REG3[4]), 
	.C(REG2[4]), 
	.B(REG1[4]), 
	.A(REG0[4]));
   MX4X1M U361 (.Y(n320), 
	.S1(N12), 
	.S0(n338), 
	.D(\registers[11][4] ), 
	.C(\registers[10][4] ), 
	.B(\registers[9][4] ), 
	.A(\registers[8][4] ));
   AO22X1M U362 (.Y(n185), 
	.B1(n152), 
	.B0(RdData[5]), 
	.A1(n357), 
	.A0(N38));
   MX4X1M U363 (.Y(N38), 
	.S1(N13), 
	.S0(N14), 
	.D(n323), 
	.C(n325), 
	.B(n324), 
	.A(n326));
   MX4X1M U364 (.Y(n326), 
	.S1(N12), 
	.S0(n339), 
	.D(REG3[5]), 
	.C(REG2[5]), 
	.B(REG1[5]), 
	.A(REG0[5]));
   MX4X1M U365 (.Y(n324), 
	.S1(N12), 
	.S0(n339), 
	.D(\registers[11][5] ), 
	.C(\registers[10][5] ), 
	.B(\registers[9][5] ), 
	.A(\registers[8][5] ));
   AO22X1M U366 (.Y(n186), 
	.B1(n152), 
	.B0(RdData[6]), 
	.A1(n357), 
	.A0(N37));
   MX4X1M U367 (.Y(N37), 
	.S1(N13), 
	.S0(N14), 
	.D(n327), 
	.C(n329), 
	.B(n328), 
	.A(n330));
   MX4X1M U368 (.Y(n330), 
	.S1(N12), 
	.S0(n339), 
	.D(REG3[6]), 
	.C(REG2[6]), 
	.B(REG1[6]), 
	.A(REG0[6]));
   MX4X1M U369 (.Y(n328), 
	.S1(N12), 
	.S0(n339), 
	.D(\registers[11][6] ), 
	.C(\registers[10][6] ), 
	.B(\registers[9][6] ), 
	.A(\registers[8][6] ));
   AO22X1M U370 (.Y(n187), 
	.B1(n152), 
	.B0(RdData[7]), 
	.A1(n357), 
	.A0(N36));
   MX4X1M U371 (.Y(N36), 
	.S1(N13), 
	.S0(N14), 
	.D(n331), 
	.C(n333), 
	.B(n332), 
	.A(n334));
   MX4X1M U372 (.Y(n334), 
	.S1(N12), 
	.S0(n339), 
	.D(REG3[7]), 
	.C(REG2[7]), 
	.B(REG1[7]), 
	.A(REG0[7]));
   MX4X1M U373 (.Y(n332), 
	.S1(N12), 
	.S0(n339), 
	.D(\registers[11][7] ), 
	.C(\registers[10][7] ), 
	.B(\registers[9][7] ), 
	.A(\registers[8][7] ));
   INVX2M U374 (.Y(n341), 
	.A(N12));
   AO21XLM U375 (.Y(n179), 
	.B0(n357), 
	.A1(n151), 
	.A0(RdData_Valid));
   INVX2M U376 (.Y(n340), 
	.A(N11));
   INVX2M U377 (.Y(n367), 
	.A(N13));
   DLY1X4M U378 (.Y(n372), 
	.A(test_se));
   DLY1X4M U379 (.Y(n373), 
	.A(test_se));
   DLY1X4M U380 (.Y(n374), 
	.A(test_se));
   DLY1X4M U381 (.Y(n375), 
	.A(test_se));
endmodule

module CLK_GATE (
	CLK, 
	EN, 
	GATED_CLK);
   input CLK;
   input EN;
   output GATED_CLK;

   TLATNCAX12M U0_TLATNCAX12M (.ECK(GATED_CLK), 
	.E(EN), 
	.CK(CLK));
endmodule

module ClkDiv_0_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   INVX2M U1 (.Y(SUM[0]), 
	.A(A[0]));
   CLKXOR2X2M U2 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
endmodule

module ClkDiv_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	UART_SCAN_CLK__L5_N0, 
	UART_SCAN_CLK__L7_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input UART_SCAN_CLK__L5_N0;
   input UART_SCAN_CLK__L7_N0;

   // Internal wires
   wire FE_PHN10_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire div_clk;
   wire odd_edge_tog;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire [6:0] count;
   wire [6:0] edge_flip_half;

   assign test_so = odd_edge_tog ;

   DLY4X1M FE_PHC10_div_clk__Exclude_0_NET (.Y(FE_PHN10_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   CLKBUFX1M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M div_clk_reg (.SI(count[6]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n27), 
	.CK(i_ref_clk));
   SDFFSQX2M odd_edge_tog_reg (.SN(i_rst_n), 
	.SI(FE_PHN10_div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.Q(odd_edge_tog), 
	.D(n26), 
	.CK(UART_SCAN_CLK__L7_N0));
   SDFFRQX2M \count_reg[6]  (.SI(count[5]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[6]), 
	.D(n28), 
	.CK(UART_SCAN_CLK__L7_N0));
   SDFFRQX2M \count_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[0]), 
	.D(n34), 
	.CK(UART_SCAN_CLK__L7_N0));
   SDFFRQX2M \count_reg[5]  (.SI(count[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[5]), 
	.D(n29), 
	.CK(UART_SCAN_CLK__L7_N0));
   SDFFRQX2M \count_reg[4]  (.SI(count[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[4]), 
	.D(n30), 
	.CK(UART_SCAN_CLK__L7_N0));
   SDFFRQX2M \count_reg[3]  (.SI(count[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[3]), 
	.D(n31), 
	.CK(UART_SCAN_CLK__L7_N0));
   SDFFRQX2M \count_reg[2]  (.SI(count[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[2]), 
	.D(n32), 
	.CK(UART_SCAN_CLK__L7_N0));
   SDFFRQX2M \count_reg[1]  (.SI(count[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[1]), 
	.D(n33), 
	.CK(UART_SCAN_CLK__L7_N0));
   INVX2M U5 (.Y(edge_flip_half[0]), 
	.A(i_div_ratio[1]));
   NAND2BX2M U6 (.Y(n16), 
	.B(HTIE_LTIEHI_NET), 
	.AN(n23));
   INVX2M U11 (.Y(n15), 
	.A(i_div_ratio[5]));
   MX2X2M U15 (.Y(o_div_clk), 
	.S0(n52), 
	.B(div_clk), 
	.A(UART_SCAN_CLK__L5_N0));
   NAND2BX1M U16 (.Y(n1), 
	.B(edge_flip_half[0]), 
	.AN(i_div_ratio[2]));
   OAI2BB1X1M U17 (.Y(edge_flip_half[1]), 
	.B0(n1), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U18 (.Y(n2), 
	.B(i_div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U19 (.Y(edge_flip_half[2]), 
	.B0(n2), 
	.A1N(i_div_ratio[3]), 
	.A0N(n1));
   NOR2X1M U20 (.Y(n3), 
	.B(i_div_ratio[4]), 
	.A(n2));
   AO21XLM U21 (.Y(edge_flip_half[3]), 
	.B0(n3), 
	.A1(i_div_ratio[4]), 
	.A0(n2));
   CLKNAND2X2M U22 (.Y(n4), 
	.B(n15), 
	.A(n3));
   OAI21X1M U23 (.Y(edge_flip_half[4]), 
	.B0(n4), 
	.A1(n15), 
	.A0(n3));
   XNOR2X1M U24 (.Y(edge_flip_half[5]), 
	.B(n4), 
	.A(i_div_ratio[6]));
   NOR2X1M U25 (.Y(n5), 
	.B(n4), 
	.A(i_div_ratio[6]));
   CLKXOR2X2M U26 (.Y(edge_flip_half[6]), 
	.B(n5), 
	.A(i_div_ratio[7]));
   AO22X1M U27 (.Y(n34), 
	.B1(n17), 
	.B0(N16), 
	.A1(count[0]), 
	.A0(n16));
   AO22X1M U28 (.Y(n33), 
	.B1(n17), 
	.B0(N17), 
	.A1(count[1]), 
	.A0(n16));
   AO22X1M U29 (.Y(n32), 
	.B1(n17), 
	.B0(N18), 
	.A1(count[2]), 
	.A0(n16));
   AO22X1M U30 (.Y(n31), 
	.B1(n17), 
	.B0(N19), 
	.A1(count[3]), 
	.A0(n16));
   AO22X1M U31 (.Y(n30), 
	.B1(n17), 
	.B0(N20), 
	.A1(count[4]), 
	.A0(n16));
   AO22X1M U32 (.Y(n29), 
	.B1(n17), 
	.B0(N21), 
	.A1(count[5]), 
	.A0(n16));
   AO22X1M U33 (.Y(n28), 
	.B1(n17), 
	.B0(N22), 
	.A1(count[6]), 
	.A0(n16));
   AND3X1M U34 (.Y(n17), 
	.C(n52), 
	.B(n19), 
	.A(n18));
   CLKINVX1M U35 (.Y(n52), 
	.A(n16));
   CLKXOR2X2M U36 (.Y(n27), 
	.B(n20), 
	.A(div_clk__Exclude_0_NET));
   AOI21X1M U37 (.Y(n20), 
	.B0(n16), 
	.A1(n18), 
	.A0(n19));
   OR2X1M U38 (.Y(n18), 
	.B(i_div_ratio[0]), 
	.A(n21));
   XNOR2X1M U39 (.Y(n26), 
	.B(n22), 
	.A(odd_edge_tog));
   OR2X1M U40 (.Y(n22), 
	.B(n16), 
	.A(n19));
   NOR4BX1M U41 (.Y(n23), 
	.D(i_div_ratio[1]), 
	.C(i_div_ratio[3]), 
	.B(i_div_ratio[2]), 
	.AN(n24));
   NOR4X1M U42 (.Y(n24), 
	.D(i_div_ratio[4]), 
	.C(i_div_ratio[5]), 
	.B(i_div_ratio[6]), 
	.A(i_div_ratio[7]));
   CLKNAND2X2M U43 (.Y(n19), 
	.B(i_div_ratio[0]), 
	.A(n25));
   MXI2X1M U44 (.Y(n25), 
	.S0(odd_edge_tog), 
	.B(n21), 
	.A(n35));
   NAND4X1M U45 (.Y(n21), 
	.D(n39), 
	.C(n38), 
	.B(n37), 
	.A(n36));
   NOR4X1M U46 (.Y(n39), 
	.D(n43), 
	.C(n42), 
	.B(n41), 
	.A(n40));
   CLKXOR2X2M U47 (.Y(n43), 
	.B(count[2]), 
	.A(edge_flip_half[2]));
   CLKXOR2X2M U48 (.Y(n42), 
	.B(count[1]), 
	.A(edge_flip_half[1]));
   CLKXOR2X2M U49 (.Y(n41), 
	.B(count[0]), 
	.A(edge_flip_half[0]));
   CLKXOR2X2M U50 (.Y(n40), 
	.B(count[6]), 
	.A(edge_flip_half[6]));
   XNOR2X1M U51 (.Y(n38), 
	.B(edge_flip_half[4]), 
	.A(count[4]));
   XNOR2X1M U52 (.Y(n37), 
	.B(edge_flip_half[5]), 
	.A(count[5]));
   XNOR2X1M U53 (.Y(n36), 
	.B(edge_flip_half[3]), 
	.A(count[3]));
   NAND4X1M U54 (.Y(n35), 
	.D(n47), 
	.C(n46), 
	.B(n45), 
	.A(n44));
   NOR4X1M U55 (.Y(n47), 
	.D(n51), 
	.C(n50), 
	.B(n49), 
	.A(n48));
   CLKXOR2X2M U56 (.Y(n51), 
	.B(count[2]), 
	.A(i_div_ratio[3]));
   CLKXOR2X2M U57 (.Y(n50), 
	.B(count[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U58 (.Y(n49), 
	.B(count[0]), 
	.A(i_div_ratio[1]));
   CLKXOR2X2M U59 (.Y(n48), 
	.B(count[6]), 
	.A(i_div_ratio[7]));
   XNOR2X1M U60 (.Y(n46), 
	.B(i_div_ratio[5]), 
	.A(count[4]));
   XNOR2X1M U61 (.Y(n45), 
	.B(i_div_ratio[6]), 
	.A(count[5]));
   XNOR2X1M U62 (.Y(n44), 
	.B(i_div_ratio[4]), 
	.A(count[3]));
   ClkDiv_0_DW01_inc_0 add_48 (.A({ count[6],
		count[5],
		count[4],
		count[3],
		count[2],
		count[1],
		count[0] }), 
	.SUM({ N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16 }));
endmodule

module ClkDiv_1_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   INVX2M U1 (.Y(SUM[0]), 
	.A(A[0]));
   CLKXOR2X2M U2 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
endmodule

module ClkDiv_test_0 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	UART_SCAN_CLK__L5_N0, 
	UART_SCAN_CLK__L7_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input UART_SCAN_CLK__L5_N0;
   input UART_SCAN_CLK__L7_N0;

   // Internal wires
   wire FE_PHN9_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire div_clk;
   wire odd_edge_tog;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire [6:0] count;
   wire [6:0] edge_flip_half;

   assign test_so = odd_edge_tog ;

   DLY4X1M FE_PHC9_div_clk__Exclude_0_NET (.Y(FE_PHN9_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   CLKBUFX1M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M div_clk_reg (.SI(count[6]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n61), 
	.CK(i_ref_clk));
   SDFFRQX2M \count_reg[6]  (.SI(count[5]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[6]), 
	.D(n60), 
	.CK(UART_SCAN_CLK__L7_N0));
   SDFFRQX2M \count_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[0]), 
	.D(n54), 
	.CK(UART_SCAN_CLK__L7_N0));
   SDFFRQX2M \count_reg[5]  (.SI(count[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[5]), 
	.D(n59), 
	.CK(UART_SCAN_CLK__L7_N0));
   SDFFRQX2M \count_reg[4]  (.SI(count[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[4]), 
	.D(n58), 
	.CK(UART_SCAN_CLK__L7_N0));
   SDFFRQX2M \count_reg[3]  (.SI(count[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[3]), 
	.D(n57), 
	.CK(UART_SCAN_CLK__L7_N0));
   SDFFRQX2M \count_reg[2]  (.SI(count[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[2]), 
	.D(n56), 
	.CK(UART_SCAN_CLK__L7_N0));
   SDFFRQX2M \count_reg[1]  (.SI(count[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(count[1]), 
	.D(n55), 
	.CK(UART_SCAN_CLK__L7_N0));
   SDFFSQX1M odd_edge_tog_reg (.SN(i_rst_n), 
	.SI(FE_PHN9_div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.Q(odd_edge_tog), 
	.D(n62), 
	.CK(UART_SCAN_CLK__L7_N0));
   INVX2M U6 (.Y(edge_flip_half[0]), 
	.A(i_div_ratio[1]));
   NAND2BX2M U11 (.Y(n17), 
	.B(HTIE_LTIEHI_NET), 
	.AN(n24));
   INVX2M U15 (.Y(n16), 
	.A(LTIE_LTIELO_NET));
   MX2X2M U16 (.Y(o_div_clk), 
	.S0(n53), 
	.B(div_clk), 
	.A(UART_SCAN_CLK__L5_N0));
   NAND2BX1M U17 (.Y(n2), 
	.B(edge_flip_half[0]), 
	.AN(i_div_ratio[2]));
   OAI2BB1X1M U18 (.Y(edge_flip_half[1]), 
	.B0(n2), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U19 (.Y(n3), 
	.B(LTIE_LTIELO_NET), 
	.A(n2));
   OAI2BB1X1M U20 (.Y(edge_flip_half[2]), 
	.B0(n3), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n2));
   NOR2X1M U21 (.Y(n4), 
	.B(LTIE_LTIELO_NET), 
	.A(n3));
   AO21XLM U22 (.Y(edge_flip_half[3]), 
	.B0(n4), 
	.A1(LTIE_LTIELO_NET), 
	.A0(n3));
   CLKNAND2X2M U23 (.Y(n5), 
	.B(n16), 
	.A(n4));
   OAI21X1M U24 (.Y(edge_flip_half[4]), 
	.B0(n5), 
	.A1(n16), 
	.A0(n4));
   XNOR2X1M U25 (.Y(edge_flip_half[5]), 
	.B(n5), 
	.A(LTIE_LTIELO_NET));
   NOR2X1M U26 (.Y(n15), 
	.B(n5), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U27 (.Y(edge_flip_half[6]), 
	.B(n15), 
	.A(LTIE_LTIELO_NET));
   AO22X1M U28 (.Y(n54), 
	.B1(n18), 
	.B0(N16), 
	.A1(count[0]), 
	.A0(n17));
   AO22X1M U29 (.Y(n55), 
	.B1(n18), 
	.B0(N17), 
	.A1(count[1]), 
	.A0(n17));
   AO22X1M U30 (.Y(n56), 
	.B1(n18), 
	.B0(N18), 
	.A1(count[2]), 
	.A0(n17));
   AO22X1M U31 (.Y(n57), 
	.B1(n18), 
	.B0(N19), 
	.A1(count[3]), 
	.A0(n17));
   AO22X1M U32 (.Y(n58), 
	.B1(n18), 
	.B0(N20), 
	.A1(count[4]), 
	.A0(n17));
   AO22X1M U33 (.Y(n59), 
	.B1(n18), 
	.B0(N21), 
	.A1(count[5]), 
	.A0(n17));
   AO22X1M U34 (.Y(n60), 
	.B1(n18), 
	.B0(N22), 
	.A1(count[6]), 
	.A0(n17));
   AND3X1M U35 (.Y(n18), 
	.C(n53), 
	.B(n20), 
	.A(n19));
   CLKINVX1M U36 (.Y(n53), 
	.A(n17));
   CLKXOR2X2M U37 (.Y(n61), 
	.B(n21), 
	.A(div_clk__Exclude_0_NET));
   AOI21X1M U38 (.Y(n21), 
	.B0(n17), 
	.A1(n19), 
	.A0(n20));
   OR2X1M U39 (.Y(n19), 
	.B(i_div_ratio[0]), 
	.A(n22));
   XNOR2X1M U40 (.Y(n62), 
	.B(n23), 
	.A(odd_edge_tog));
   OR2X1M U41 (.Y(n23), 
	.B(n17), 
	.A(n20));
   NOR4BX1M U42 (.Y(n24), 
	.D(i_div_ratio[1]), 
	.C(LTIE_LTIELO_NET), 
	.B(i_div_ratio[2]), 
	.AN(n25));
   NOR4X1M U43 (.Y(n25), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   CLKNAND2X2M U44 (.Y(n20), 
	.B(i_div_ratio[0]), 
	.A(n35));
   MXI2X1M U45 (.Y(n35), 
	.S0(odd_edge_tog), 
	.B(n22), 
	.A(n36));
   NAND4X1M U46 (.Y(n22), 
	.D(n40), 
	.C(n39), 
	.B(n38), 
	.A(n37));
   NOR4X1M U47 (.Y(n40), 
	.D(n44), 
	.C(n43), 
	.B(n42), 
	.A(n41));
   CLKXOR2X2M U48 (.Y(n44), 
	.B(count[2]), 
	.A(edge_flip_half[2]));
   CLKXOR2X2M U49 (.Y(n43), 
	.B(count[1]), 
	.A(edge_flip_half[1]));
   CLKXOR2X2M U50 (.Y(n42), 
	.B(count[0]), 
	.A(edge_flip_half[0]));
   CLKXOR2X2M U51 (.Y(n41), 
	.B(count[6]), 
	.A(edge_flip_half[6]));
   XNOR2X1M U52 (.Y(n39), 
	.B(edge_flip_half[4]), 
	.A(count[4]));
   XNOR2X1M U53 (.Y(n38), 
	.B(edge_flip_half[5]), 
	.A(count[5]));
   XNOR2X1M U54 (.Y(n37), 
	.B(edge_flip_half[3]), 
	.A(count[3]));
   NAND4X1M U55 (.Y(n36), 
	.D(n48), 
	.C(n47), 
	.B(n46), 
	.A(n45));
   NOR4X1M U56 (.Y(n48), 
	.D(n52), 
	.C(n51), 
	.B(n50), 
	.A(n49));
   CLKXOR2X2M U57 (.Y(n52), 
	.B(count[2]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U58 (.Y(n51), 
	.B(count[1]), 
	.A(i_div_ratio[2]));
   CLKXOR2X2M U59 (.Y(n50), 
	.B(count[0]), 
	.A(i_div_ratio[1]));
   CLKXOR2X2M U60 (.Y(n49), 
	.B(count[6]), 
	.A(LTIE_LTIELO_NET));
   XNOR2X1M U61 (.Y(n47), 
	.B(LTIE_LTIELO_NET), 
	.A(count[4]));
   XNOR2X1M U62 (.Y(n46), 
	.B(LTIE_LTIELO_NET), 
	.A(count[5]));
   XNOR2X1M U63 (.Y(n45), 
	.B(LTIE_LTIELO_NET), 
	.A(count[3]));
   ClkDiv_1_DW01_inc_0 add_48 (.A({ count[6],
		count[5],
		count[4],
		count[3],
		count[2],
		count[1],
		count[0] }), 
	.SUM({ N22,
		N21,
		N20,
		N19,
		N18,
		N17,
		N16 }));
endmodule

module SYS_CTRL_test_1 (
	CLK, 
	RST, 
	ALU_OUT, 
	RdData, 
	RX_P_DATA, 
	OUT_VALID, 
	RX_D_VLD, 
	RdData_Valid, 
	FIFO_FULL, 
	ALU_EN, 
	GATE_EN, 
	ALU_FUN, 
	FIFO_WR_DATA, 
	WrData, 
	Address, 
	WrEn, 
	RdEn, 
	FIFO_W_INC, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input [15:0] ALU_OUT;
   input [7:0] RdData;
   input [7:0] RX_P_DATA;
   input OUT_VALID;
   input RX_D_VLD;
   input RdData_Valid;
   input FIFO_FULL;
   output ALU_EN;
   output GATE_EN;
   output [3:0] ALU_FUN;
   output [7:0] FIFO_WR_DATA;
   output [7:0] WrData;
   output [3:0] Address;
   output WrEn;
   output RdEn;
   output FIFO_W_INC;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n1;
   wire n2;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire [3:0] current_state;
   wire [3:0] next_state;

   assign test_so = current_state[3] ;

   SDFFSQX2M \Address_reg[2]  (.SN(RST), 
	.SI(Address[1]), 
	.SE(test_se), 
	.Q(Address[2]), 
	.D(n81), 
	.CK(CLK));
   SDFFRQX2M \Address_reg[3]  (.SI(Address[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Address[3]), 
	.D(n80), 
	.CK(CLK));
   SDFFRQX2M \Address_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Address[0]), 
	.D(n83), 
	.CK(CLK));
   SDFFRQX4M \Address_reg[1]  (.SI(Address[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Address[1]), 
	.D(n82), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[0]  (.SI(Address[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[1]  (.SI(n18), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[3]  (.SI(n22), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[3]), 
	.D(next_state[3]), 
	.CK(CLK));
   NOR4X2M U5 (.Y(n40), 
	.D(n22), 
	.C(n21), 
	.B(n18), 
	.A(n20));
   NOR2X2M U12 (.Y(ALU_EN), 
	.B(n28), 
	.A(n34));
   NOR2X2M U13 (.Y(ALU_FUN[1]), 
	.B(n17), 
	.A(n26));
   NOR2X2M U14 (.Y(ALU_FUN[0]), 
	.B(n17), 
	.A(n27));
   NOR2X2M U15 (.Y(ALU_FUN[2]), 
	.B(n17), 
	.A(n25));
   NOR2X2M U16 (.Y(ALU_FUN[3]), 
	.B(n17), 
	.A(n24));
   NAND2X2M U17 (.Y(WrEn), 
	.B(n17), 
	.A(n12));
   INVX2M U18 (.Y(n17), 
	.A(ALU_EN));
   INVX2M U19 (.Y(n12), 
	.A(n69));
   NOR2X2M U20 (.Y(n70), 
	.B(n40), 
	.A(n19));
   INVX2M U21 (.Y(n14), 
	.A(n64));
   INVX2M U22 (.Y(n15), 
	.A(n48));
   OAI211X2M U23 (.Y(n69), 
	.C0(n35), 
	.B0(n33), 
	.A1(n58), 
	.A0(n28));
   INVX2M U24 (.Y(n19), 
	.A(n47));
   NOR3BX2M U25 (.Y(RdEn), 
	.C(n22), 
	.B(n21), 
	.AN(n67));
   AOI31X2M U26 (.Y(n31), 
	.B0(n51), 
	.A2(n27), 
	.A1(n23), 
	.A0(n41));
   NOR2X2M U27 (.Y(WrData[0]), 
	.B(n27), 
	.A(n12));
   NOR2X2M U28 (.Y(WrData[1]), 
	.B(n26), 
	.A(n12));
   NOR2X2M U29 (.Y(WrData[2]), 
	.B(n25), 
	.A(n12));
   NOR2X2M U30 (.Y(WrData[3]), 
	.B(n24), 
	.A(n12));
   NOR2X2M U31 (.Y(WrData[4]), 
	.B(n23), 
	.A(n12));
   NOR2X2M U32 (.Y(n64), 
	.B(n28), 
	.A(n32));
   NAND2X2M U33 (.Y(n32), 
	.B(n68), 
	.A(n66));
   NAND4X2M U34 (.Y(next_state[2]), 
	.D(n33), 
	.C(n32), 
	.B(n29), 
	.A(n31));
   NAND3X2M U35 (.Y(n61), 
	.C(n62), 
	.B(n54), 
	.A(n14));
   AND3X2M U36 (.Y(n38), 
	.C(n21), 
	.B(n22), 
	.A(n67));
   NAND3X2M U37 (.Y(n48), 
	.C(n66), 
	.B(n22), 
	.A(n20));
   NAND3X2M U38 (.Y(n35), 
	.C(n68), 
	.B(n21), 
	.A(n18));
   NAND2X2M U39 (.Y(next_state[3]), 
	.B(n30), 
	.A(n29));
   INVX2M U40 (.Y(n13), 
	.A(n62));
   NAND2X2M U41 (.Y(GATE_EN), 
	.B(n17), 
	.A(n70));
   NOR2X2M U42 (.Y(n68), 
	.B(current_state[1]), 
	.A(n22));
   NOR2X2M U43 (.Y(n66), 
	.B(current_state[3]), 
	.A(n18));
   INVX2M U44 (.Y(n22), 
	.A(current_state[2]));
   NAND3X2M U45 (.Y(n34), 
	.C(current_state[3]), 
	.B(n18), 
	.A(n68));
   NAND3X2M U46 (.Y(n47), 
	.C(current_state[0]), 
	.B(n68), 
	.A(current_state[3]));
   INVX2M U47 (.Y(n18), 
	.A(current_state[0]));
   INVX2M U48 (.Y(n21), 
	.A(current_state[3]));
   INVX2M U49 (.Y(n20), 
	.A(current_state[1]));
   NOR2X2M U50 (.Y(n67), 
	.B(current_state[0]), 
	.A(n20));
   NOR2X2M U51 (.Y(FIFO_W_INC), 
	.B(n71), 
	.A(FIFO_FULL));
   AOI21BX2M U52 (.Y(n71), 
	.B0N(n70), 
	.A1(RdData_Valid), 
	.A0(n50));
   NAND3X2M U53 (.Y(n58), 
	.C(n66), 
	.B(n22), 
	.A(current_state[1]));
   AND3X2M U54 (.Y(n50), 
	.C(n22), 
	.B(current_state[3]), 
	.A(n67));
   NOR3BX2M U55 (.Y(n51), 
	.C(current_state[3]), 
	.B(n22), 
	.AN(n67));
   AOI2B1X1M U56 (.Y(n30), 
	.B0(RdEn), 
	.A1N(n49), 
	.A0(n50));
   NOR2BX2M U57 (.Y(n49), 
	.B(FIFO_FULL), 
	.AN(RdData_Valid));
   AOI2BB2XLM U58 (.Y(n42), 
	.B1(FIFO_FULL), 
	.B0(n40), 
	.A1N(n58), 
	.A0N(RX_D_VLD));
   NAND2X2M U59 (.Y(n54), 
	.B(RX_D_VLD), 
	.A(n51));
   NAND3X2M U60 (.Y(n33), 
	.C(n66), 
	.B(current_state[2]), 
	.A(current_state[1]));
   NAND4X2M U61 (.Y(next_state[1]), 
	.D(n43), 
	.C(n42), 
	.B(n30), 
	.A(n31));
   AOI211X2M U62 (.Y(n43), 
	.C0(n38), 
	.B0(n46), 
	.A1(n45), 
	.A0(n44));
   NOR2X2M U63 (.Y(n44), 
	.B(n23), 
	.A(n27));
   OAI32X1M U64 (.Y(n46), 
	.B1(n48), 
	.B0(n28), 
	.A2(n47), 
	.A1(FIFO_FULL), 
	.A0(n1));
   OAI21X2M U65 (.Y(n57), 
	.B0(n42), 
	.A1(n32), 
	.A0(RX_D_VLD));
   AND4X2M U66 (.Y(n29), 
	.D(n37), 
	.C(n36), 
	.B(n35), 
	.A(n34));
   NAND3X2M U67 (.Y(n36), 
	.C(RX_P_DATA[4]), 
	.B(RX_P_DATA[0]), 
	.A(n41));
   AOI222X1M U68 (.Y(n37), 
	.C1(n40), 
	.C0(FIFO_FULL), 
	.B1(n39), 
	.B0(n19), 
	.A1(RX_D_VLD), 
	.A0(n38));
   OAI2BB1X2M U69 (.Y(FIFO_WR_DATA[0]), 
	.B0(n79), 
	.A1N(n50), 
	.A0N(RdData[0]));
   AOI22X1M U70 (.Y(n79), 
	.B1(n19), 
	.B0(ALU_OUT[0]), 
	.A1(n40), 
	.A0(ALU_OUT[8]));
   OAI2BB1X2M U71 (.Y(FIFO_WR_DATA[1]), 
	.B0(n78), 
	.A1N(n50), 
	.A0N(RdData[1]));
   AOI22X1M U72 (.Y(n78), 
	.B1(n19), 
	.B0(ALU_OUT[1]), 
	.A1(n40), 
	.A0(ALU_OUT[9]));
   OAI2BB1X2M U73 (.Y(FIFO_WR_DATA[2]), 
	.B0(n77), 
	.A1N(n50), 
	.A0N(RdData[2]));
   AOI22X1M U74 (.Y(n77), 
	.B1(n19), 
	.B0(ALU_OUT[2]), 
	.A1(n40), 
	.A0(ALU_OUT[10]));
   OAI2BB1X2M U75 (.Y(FIFO_WR_DATA[3]), 
	.B0(n76), 
	.A1N(n50), 
	.A0N(RdData[3]));
   AOI22X1M U76 (.Y(n76), 
	.B1(n19), 
	.B0(ALU_OUT[3]), 
	.A1(n40), 
	.A0(ALU_OUT[11]));
   OAI2BB1X2M U77 (.Y(FIFO_WR_DATA[4]), 
	.B0(n75), 
	.A1N(n50), 
	.A0N(RdData[4]));
   AOI22X1M U78 (.Y(n75), 
	.B1(n19), 
	.B0(ALU_OUT[4]), 
	.A1(n40), 
	.A0(ALU_OUT[12]));
   OAI2BB1X2M U79 (.Y(FIFO_WR_DATA[5]), 
	.B0(n74), 
	.A1N(n50), 
	.A0N(RdData[5]));
   AOI22X1M U80 (.Y(n74), 
	.B1(n19), 
	.B0(ALU_OUT[5]), 
	.A1(n40), 
	.A0(ALU_OUT[13]));
   OAI2BB1X2M U81 (.Y(FIFO_WR_DATA[6]), 
	.B0(n73), 
	.A1N(n50), 
	.A0N(RdData[6]));
   AOI22X1M U82 (.Y(n73), 
	.B1(n19), 
	.B0(ALU_OUT[6]), 
	.A1(n40), 
	.A0(ALU_OUT[14]));
   OAI2BB1X2M U83 (.Y(FIFO_WR_DATA[7]), 
	.B0(n72), 
	.A1N(n50), 
	.A0N(RdData[7]));
   AOI22X1M U84 (.Y(n72), 
	.B1(n19), 
	.B0(ALU_OUT[7]), 
	.A1(n40), 
	.A0(ALU_OUT[15]));
   NAND3X2M U85 (.Y(n62), 
	.C(n65), 
	.B(n54), 
	.A(n14));
   OAI21X2M U86 (.Y(n65), 
	.B0(RX_D_VLD), 
	.A1(n15), 
	.A0(n38));
   OAI2BB2X1M U87 (.Y(n83), 
	.B1(n63), 
	.B0(n13), 
	.A1N(n13), 
	.A0N(Address[0]));
   AOI21X2M U88 (.Y(n63), 
	.B0(n64), 
	.A1(n54), 
	.A0(RX_P_DATA[0]));
   OAI2BB2X1M U89 (.Y(n82), 
	.B1(n61), 
	.B0(n26), 
	.A1N(n13), 
	.A0N(Address[1]));
   OAI2BB2X1M U90 (.Y(n80), 
	.B1(n61), 
	.B0(n24), 
	.A1N(n13), 
	.A0N(Address[3]));
   OAI2BB2X1M U91 (.Y(n81), 
	.B1(n61), 
	.B0(n25), 
	.A1N(n13), 
	.A0N(Address[2]));
   AND2X2M U92 (.Y(WrData[5]), 
	.B(n69), 
	.A(RX_P_DATA[5]));
   AND2X2M U93 (.Y(WrData[6]), 
	.B(n69), 
	.A(RX_P_DATA[6]));
   AND2X2M U94 (.Y(WrData[7]), 
	.B(n69), 
	.A(RX_P_DATA[7]));
   INVX2M U95 (.Y(n28), 
	.A(RX_D_VLD));
   NAND4X2M U96 (.Y(next_state[0]), 
	.D(n56), 
	.C(n55), 
	.B(n54), 
	.A(n33));
   AOI31X2M U97 (.Y(n55), 
	.B0(n15), 
	.A2(n45), 
	.A1(n23), 
	.A0(n27));
   AOI221XLM U98 (.Y(n56), 
	.C0(n57), 
	.B1(n16), 
	.B0(OUT_VALID), 
	.A1(n39), 
	.A0(n19));
   INVX2M U99 (.Y(n16), 
	.A(n34));
   AND4X2M U100 (.Y(n41), 
	.D(n53), 
	.C(n52), 
	.B(RX_P_DATA[2]), 
	.A(RX_P_DATA[6]));
   NOR2X2M U101 (.Y(n52), 
	.B(RX_P_DATA[1]), 
	.A(RX_P_DATA[5]));
   AND4X2M U102 (.Y(n53), 
	.D(n60), 
	.C(RX_P_DATA[7]), 
	.B(RX_D_VLD), 
	.A(RX_P_DATA[3]));
   NOR4X1M U103 (.Y(n60), 
	.D(current_state[0]), 
	.C(current_state[1]), 
	.B(current_state[2]), 
	.A(current_state[3]));
   AND4X2M U104 (.Y(n45), 
	.D(n53), 
	.C(n59), 
	.B(RX_P_DATA[1]), 
	.A(RX_P_DATA[5]));
   NOR2X2M U105 (.Y(n59), 
	.B(RX_P_DATA[2]), 
	.A(RX_P_DATA[6]));
   INVX2M U106 (.Y(n27), 
	.A(RX_P_DATA[0]));
   INVX2M U107 (.Y(n25), 
	.A(RX_P_DATA[2]));
   INVX2M U108 (.Y(n26), 
	.A(RX_P_DATA[1]));
   INVX2M U109 (.Y(n23), 
	.A(RX_P_DATA[4]));
   INVX2M U110 (.Y(n24), 
	.A(RX_P_DATA[3]));
   NAND2BX2M U111 (.Y(n39), 
	.B(n1), 
	.AN(FIFO_FULL));
   AND2X2M U112 (.Y(n1), 
	.B(n2), 
	.A(n11));
   NOR4X1M U113 (.Y(n11), 
	.D(ALU_OUT[10]), 
	.C(ALU_OUT[11]), 
	.B(ALU_OUT[12]), 
	.A(ALU_OUT[13]));
   NOR4X1M U114 (.Y(n2), 
	.D(ALU_OUT[14]), 
	.C(ALU_OUT[15]), 
	.B(ALU_OUT[8]), 
	.A(ALU_OUT[9]));
endmodule

module FIFO_DF_SYNC_test_1 (
	CLK, 
	RST, 
	in, 
	out, 
	test_si, 
	test_se, 
	FE_OFN2_SYNC_UART_SCAN_RST);
   input CLK;
   input RST;
   input [3:0] in;
   output [3:0] out;
   input test_si;
   input test_se;
   input FE_OFN2_SYNC_UART_SCAN_RST;

   // Internal wires
   wire [3:0] Q1;

   SDFFRQX2M \out_reg[3]  (.SI(out[2]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_UART_SCAN_RST), 
	.Q(out[3]), 
	.D(Q1[3]), 
	.CK(CLK));
   SDFFRQX2M \out_reg[2]  (.SI(out[1]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_UART_SCAN_RST), 
	.Q(out[2]), 
	.D(Q1[2]), 
	.CK(CLK));
   SDFFRQX2M \out_reg[1]  (.SI(out[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(out[1]), 
	.D(Q1[1]), 
	.CK(CLK));
   SDFFRQX2M \out_reg[0]  (.SI(Q1[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(out[0]), 
	.D(Q1[0]), 
	.CK(CLK));
   SDFFRQX2M \Q1_reg[3]  (.SI(Q1[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Q1[3]), 
	.D(in[3]), 
	.CK(CLK));
   SDFFRQX2M \Q1_reg[2]  (.SI(Q1[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Q1[2]), 
	.D(in[2]), 
	.CK(CLK));
   SDFFRQX2M \Q1_reg[1]  (.SI(Q1[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Q1[1]), 
	.D(in[1]), 
	.CK(CLK));
   SDFFRQX2M \Q1_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Q1[0]), 
	.D(in[0]), 
	.CK(CLK));
endmodule

module FIFO_DF_SYNC_test_0 (
	CLK, 
	RST, 
	in, 
	out, 
	test_se);
   input CLK;
   input RST;
   input [3:0] in;
   output [3:0] out;
   input test_se;

   // Internal wires
   wire [3:0] Q1;

   SDFFRQX2M \out_reg[3]  (.SI(out[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(out[3]), 
	.D(Q1[3]), 
	.CK(CLK));
   SDFFRQX2M \out_reg[2]  (.SI(out[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(out[2]), 
	.D(Q1[2]), 
	.CK(CLK));
   SDFFRQX2M \out_reg[1]  (.SI(out[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(out[1]), 
	.D(Q1[1]), 
	.CK(CLK));
   SDFFRQX2M \out_reg[0]  (.SI(Q1[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(out[0]), 
	.D(Q1[0]), 
	.CK(CLK));
   SDFFRQX2M \Q1_reg[3]  (.SI(Q1[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Q1[3]), 
	.D(in[3]), 
	.CK(CLK));
   SDFFRQX2M \Q1_reg[2]  (.SI(Q1[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Q1[2]), 
	.D(in[2]), 
	.CK(CLK));
   SDFFRQX2M \Q1_reg[1]  (.SI(Q1[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Q1[1]), 
	.D(in[1]), 
	.CK(CLK));
   SDFFRQX2M \Q1_reg[0]  (.SI(in[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Q1[0]), 
	.D(in[0]), 
	.CK(CLK));
endmodule

module FIFO_MEM_CNTRL_test_1 (
	wclk, 
	wfull, 
	winc, 
	waddr, 
	raddr, 
	wdata, 
	rdata, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se);
   input wclk;
   input wfull;
   input winc;
   input [2:0] waddr;
   input [2:0] raddr;
   input [7:0] wdata;
   output [7:0] rdata;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;

   // Internal wires
   wire N9;
   wire N10;
   wire N11;
   wire \mem[0][7] ;
   wire \mem[0][6] ;
   wire \mem[0][5] ;
   wire \mem[0][4] ;
   wire \mem[0][3] ;
   wire \mem[0][2] ;
   wire \mem[0][1] ;
   wire \mem[0][0] ;
   wire \mem[1][7] ;
   wire \mem[1][6] ;
   wire \mem[1][5] ;
   wire \mem[1][4] ;
   wire \mem[1][3] ;
   wire \mem[1][2] ;
   wire \mem[1][1] ;
   wire \mem[1][0] ;
   wire \mem[2][7] ;
   wire \mem[2][6] ;
   wire \mem[2][5] ;
   wire \mem[2][4] ;
   wire \mem[2][3] ;
   wire \mem[2][2] ;
   wire \mem[2][1] ;
   wire \mem[2][0] ;
   wire \mem[3][7] ;
   wire \mem[3][6] ;
   wire \mem[3][5] ;
   wire \mem[3][4] ;
   wire \mem[3][3] ;
   wire \mem[3][2] ;
   wire \mem[3][1] ;
   wire \mem[3][0] ;
   wire \mem[4][7] ;
   wire \mem[4][6] ;
   wire \mem[4][5] ;
   wire \mem[4][4] ;
   wire \mem[4][3] ;
   wire \mem[4][2] ;
   wire \mem[4][1] ;
   wire \mem[4][0] ;
   wire \mem[5][7] ;
   wire \mem[5][6] ;
   wire \mem[5][5] ;
   wire \mem[5][4] ;
   wire \mem[5][3] ;
   wire \mem[5][2] ;
   wire \mem[5][1] ;
   wire \mem[5][0] ;
   wire \mem[6][7] ;
   wire \mem[6][6] ;
   wire \mem[6][5] ;
   wire \mem[6][4] ;
   wire \mem[6][3] ;
   wire \mem[6][2] ;
   wire \mem[6][1] ;
   wire \mem[6][0] ;
   wire \mem[7][7] ;
   wire \mem[7][6] ;
   wire \mem[7][5] ;
   wire \mem[7][4] ;
   wire \mem[7][3] ;
   wire \mem[7][2] ;
   wire \mem[7][1] ;
   wire \mem[7][0] ;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n176;
   wire n177;
   wire n178;

   assign N9 = raddr[0] ;
   assign N10 = raddr[1] ;
   assign N11 = raddr[2] ;
   assign test_so2 = \mem[7][7]  ;
   assign test_so1 = \mem[7][2]  ;

   SDFFQX2M \mem_reg[1][7]  (.SI(\mem[1][6] ), 
	.SE(n178), 
	.Q(\mem[1][7] ), 
	.D(n141), 
	.CK(wclk));
   SDFFQX2M \mem_reg[1][6]  (.SI(\mem[1][5] ), 
	.SE(n177), 
	.Q(\mem[1][6] ), 
	.D(n140), 
	.CK(wclk));
   SDFFQX2M \mem_reg[1][5]  (.SI(\mem[1][4] ), 
	.SE(n176), 
	.Q(\mem[1][5] ), 
	.D(n139), 
	.CK(wclk));
   SDFFQX2M \mem_reg[1][4]  (.SI(\mem[1][3] ), 
	.SE(n178), 
	.Q(\mem[1][4] ), 
	.D(n138), 
	.CK(wclk));
   SDFFQX2M \mem_reg[1][3]  (.SI(\mem[1][2] ), 
	.SE(n177), 
	.Q(\mem[1][3] ), 
	.D(n137), 
	.CK(wclk));
   SDFFQX2M \mem_reg[1][2]  (.SI(\mem[1][1] ), 
	.SE(n176), 
	.Q(\mem[1][2] ), 
	.D(n136), 
	.CK(wclk));
   SDFFQX2M \mem_reg[1][1]  (.SI(\mem[1][0] ), 
	.SE(n178), 
	.Q(\mem[1][1] ), 
	.D(n135), 
	.CK(wclk));
   SDFFQX2M \mem_reg[1][0]  (.SI(\mem[0][7] ), 
	.SE(n177), 
	.Q(\mem[1][0] ), 
	.D(n134), 
	.CK(wclk));
   SDFFQX2M \mem_reg[5][7]  (.SI(\mem[5][6] ), 
	.SE(n176), 
	.Q(\mem[5][7] ), 
	.D(n109), 
	.CK(wclk));
   SDFFQX2M \mem_reg[5][6]  (.SI(\mem[5][5] ), 
	.SE(n178), 
	.Q(\mem[5][6] ), 
	.D(n108), 
	.CK(wclk));
   SDFFQX2M \mem_reg[5][5]  (.SI(\mem[5][4] ), 
	.SE(n177), 
	.Q(\mem[5][5] ), 
	.D(n107), 
	.CK(wclk));
   SDFFQX2M \mem_reg[5][4]  (.SI(\mem[5][3] ), 
	.SE(n176), 
	.Q(\mem[5][4] ), 
	.D(n106), 
	.CK(wclk));
   SDFFQX2M \mem_reg[5][3]  (.SI(\mem[5][2] ), 
	.SE(n178), 
	.Q(\mem[5][3] ), 
	.D(n105), 
	.CK(wclk));
   SDFFQX2M \mem_reg[5][2]  (.SI(\mem[5][1] ), 
	.SE(n177), 
	.Q(\mem[5][2] ), 
	.D(n104), 
	.CK(wclk));
   SDFFQX2M \mem_reg[5][1]  (.SI(\mem[5][0] ), 
	.SE(n176), 
	.Q(\mem[5][1] ), 
	.D(n103), 
	.CK(wclk));
   SDFFQX2M \mem_reg[5][0]  (.SI(\mem[4][7] ), 
	.SE(n178), 
	.Q(\mem[5][0] ), 
	.D(n102), 
	.CK(wclk));
   SDFFQX2M \mem_reg[3][7]  (.SI(\mem[3][6] ), 
	.SE(n177), 
	.Q(\mem[3][7] ), 
	.D(n125), 
	.CK(wclk));
   SDFFQX2M \mem_reg[3][6]  (.SI(\mem[3][5] ), 
	.SE(n176), 
	.Q(\mem[3][6] ), 
	.D(n124), 
	.CK(wclk));
   SDFFQX2M \mem_reg[3][5]  (.SI(\mem[3][4] ), 
	.SE(n178), 
	.Q(\mem[3][5] ), 
	.D(n123), 
	.CK(wclk));
   SDFFQX2M \mem_reg[3][4]  (.SI(\mem[3][3] ), 
	.SE(n177), 
	.Q(\mem[3][4] ), 
	.D(n122), 
	.CK(wclk));
   SDFFQX2M \mem_reg[3][3]  (.SI(\mem[3][2] ), 
	.SE(n176), 
	.Q(\mem[3][3] ), 
	.D(n121), 
	.CK(wclk));
   SDFFQX2M \mem_reg[3][2]  (.SI(\mem[3][1] ), 
	.SE(n178), 
	.Q(\mem[3][2] ), 
	.D(n120), 
	.CK(wclk));
   SDFFQX2M \mem_reg[3][1]  (.SI(\mem[3][0] ), 
	.SE(n177), 
	.Q(\mem[3][1] ), 
	.D(n119), 
	.CK(wclk));
   SDFFQX2M \mem_reg[3][0]  (.SI(\mem[2][7] ), 
	.SE(n176), 
	.Q(\mem[3][0] ), 
	.D(n118), 
	.CK(wclk));
   SDFFQX2M \mem_reg[7][7]  (.SI(\mem[7][6] ), 
	.SE(n178), 
	.Q(\mem[7][7] ), 
	.D(n93), 
	.CK(wclk));
   SDFFQX2M \mem_reg[7][6]  (.SI(\mem[7][5] ), 
	.SE(n177), 
	.Q(\mem[7][6] ), 
	.D(n92), 
	.CK(wclk));
   SDFFQX2M \mem_reg[7][5]  (.SI(\mem[7][4] ), 
	.SE(n176), 
	.Q(\mem[7][5] ), 
	.D(n91), 
	.CK(wclk));
   SDFFQX2M \mem_reg[7][4]  (.SI(\mem[7][3] ), 
	.SE(n178), 
	.Q(\mem[7][4] ), 
	.D(n90), 
	.CK(wclk));
   SDFFQX2M \mem_reg[7][3]  (.SI(test_si2), 
	.SE(n177), 
	.Q(\mem[7][3] ), 
	.D(n89), 
	.CK(wclk));
   SDFFQX2M \mem_reg[7][2]  (.SI(\mem[7][1] ), 
	.SE(n176), 
	.Q(\mem[7][2] ), 
	.D(n88), 
	.CK(wclk));
   SDFFQX2M \mem_reg[7][1]  (.SI(\mem[7][0] ), 
	.SE(n178), 
	.Q(\mem[7][1] ), 
	.D(n87), 
	.CK(wclk));
   SDFFQX2M \mem_reg[7][0]  (.SI(\mem[6][7] ), 
	.SE(n177), 
	.Q(\mem[7][0] ), 
	.D(n86), 
	.CK(wclk));
   SDFFQX2M \mem_reg[2][7]  (.SI(\mem[2][6] ), 
	.SE(n176), 
	.Q(\mem[2][7] ), 
	.D(n133), 
	.CK(wclk));
   SDFFQX2M \mem_reg[2][6]  (.SI(\mem[2][5] ), 
	.SE(n178), 
	.Q(\mem[2][6] ), 
	.D(n132), 
	.CK(wclk));
   SDFFQX2M \mem_reg[2][5]  (.SI(\mem[2][4] ), 
	.SE(n177), 
	.Q(\mem[2][5] ), 
	.D(n131), 
	.CK(wclk));
   SDFFQX2M \mem_reg[2][4]  (.SI(\mem[2][3] ), 
	.SE(n176), 
	.Q(\mem[2][4] ), 
	.D(n130), 
	.CK(wclk));
   SDFFQX2M \mem_reg[2][3]  (.SI(\mem[2][2] ), 
	.SE(n178), 
	.Q(\mem[2][3] ), 
	.D(n129), 
	.CK(wclk));
   SDFFQX2M \mem_reg[2][2]  (.SI(\mem[2][1] ), 
	.SE(n177), 
	.Q(\mem[2][2] ), 
	.D(n128), 
	.CK(wclk));
   SDFFQX2M \mem_reg[2][1]  (.SI(\mem[2][0] ), 
	.SE(n176), 
	.Q(\mem[2][1] ), 
	.D(n127), 
	.CK(wclk));
   SDFFQX2M \mem_reg[2][0]  (.SI(\mem[1][7] ), 
	.SE(n178), 
	.Q(\mem[2][0] ), 
	.D(n126), 
	.CK(wclk));
   SDFFQX2M \mem_reg[6][6]  (.SI(\mem[6][5] ), 
	.SE(n177), 
	.Q(\mem[6][6] ), 
	.D(n100), 
	.CK(wclk));
   SDFFQX2M \mem_reg[6][5]  (.SI(\mem[6][4] ), 
	.SE(n176), 
	.Q(\mem[6][5] ), 
	.D(n99), 
	.CK(wclk));
   SDFFQX2M \mem_reg[6][4]  (.SI(\mem[6][3] ), 
	.SE(n178), 
	.Q(\mem[6][4] ), 
	.D(n98), 
	.CK(wclk));
   SDFFQX2M \mem_reg[6][3]  (.SI(\mem[6][2] ), 
	.SE(n177), 
	.Q(\mem[6][3] ), 
	.D(n97), 
	.CK(wclk));
   SDFFQX2M \mem_reg[6][2]  (.SI(\mem[6][1] ), 
	.SE(n176), 
	.Q(\mem[6][2] ), 
	.D(n96), 
	.CK(wclk));
   SDFFQX2M \mem_reg[6][1]  (.SI(\mem[6][0] ), 
	.SE(n178), 
	.Q(\mem[6][1] ), 
	.D(n95), 
	.CK(wclk));
   SDFFQX2M \mem_reg[6][0]  (.SI(\mem[5][7] ), 
	.SE(n177), 
	.Q(\mem[6][0] ), 
	.D(n94), 
	.CK(wclk));
   SDFFQX2M \mem_reg[0][7]  (.SI(\mem[0][6] ), 
	.SE(n176), 
	.Q(\mem[0][7] ), 
	.D(n149), 
	.CK(wclk));
   SDFFQX2M \mem_reg[0][6]  (.SI(\mem[0][5] ), 
	.SE(n178), 
	.Q(\mem[0][6] ), 
	.D(n148), 
	.CK(wclk));
   SDFFQX2M \mem_reg[0][5]  (.SI(\mem[0][4] ), 
	.SE(n177), 
	.Q(\mem[0][5] ), 
	.D(n147), 
	.CK(wclk));
   SDFFQX2M \mem_reg[0][4]  (.SI(\mem[0][3] ), 
	.SE(n176), 
	.Q(\mem[0][4] ), 
	.D(n146), 
	.CK(wclk));
   SDFFQX2M \mem_reg[0][3]  (.SI(\mem[0][2] ), 
	.SE(n178), 
	.Q(\mem[0][3] ), 
	.D(n145), 
	.CK(wclk));
   SDFFQX2M \mem_reg[0][2]  (.SI(\mem[0][1] ), 
	.SE(n177), 
	.Q(\mem[0][2] ), 
	.D(n144), 
	.CK(wclk));
   SDFFQX2M \mem_reg[0][1]  (.SI(\mem[0][0] ), 
	.SE(n176), 
	.Q(\mem[0][1] ), 
	.D(n143), 
	.CK(wclk));
   SDFFQX2M \mem_reg[0][0]  (.SI(test_si1), 
	.SE(n178), 
	.Q(\mem[0][0] ), 
	.D(n142), 
	.CK(wclk));
   SDFFQX2M \mem_reg[4][7]  (.SI(\mem[4][6] ), 
	.SE(n177), 
	.Q(\mem[4][7] ), 
	.D(n117), 
	.CK(wclk));
   SDFFQX2M \mem_reg[4][6]  (.SI(\mem[4][5] ), 
	.SE(n176), 
	.Q(\mem[4][6] ), 
	.D(n116), 
	.CK(wclk));
   SDFFQX2M \mem_reg[4][5]  (.SI(\mem[4][4] ), 
	.SE(n178), 
	.Q(\mem[4][5] ), 
	.D(n115), 
	.CK(wclk));
   SDFFQX2M \mem_reg[4][4]  (.SI(\mem[4][3] ), 
	.SE(n177), 
	.Q(\mem[4][4] ), 
	.D(n114), 
	.CK(wclk));
   SDFFQX2M \mem_reg[4][3]  (.SI(\mem[4][2] ), 
	.SE(n176), 
	.Q(\mem[4][3] ), 
	.D(n113), 
	.CK(wclk));
   SDFFQX2M \mem_reg[4][2]  (.SI(\mem[4][1] ), 
	.SE(n178), 
	.Q(\mem[4][2] ), 
	.D(n112), 
	.CK(wclk));
   SDFFQX2M \mem_reg[4][1]  (.SI(\mem[4][0] ), 
	.SE(n177), 
	.Q(\mem[4][1] ), 
	.D(n111), 
	.CK(wclk));
   SDFFQX2M \mem_reg[4][0]  (.SI(\mem[3][7] ), 
	.SE(n176), 
	.Q(\mem[4][0] ), 
	.D(n110), 
	.CK(wclk));
   SDFFQX1M \mem_reg[6][7]  (.SI(\mem[6][6] ), 
	.SE(n176), 
	.Q(\mem[6][7] ), 
	.D(n101), 
	.CK(wclk));
   NAND3X2M U71 (.Y(n79), 
	.C(n76), 
	.B(n164), 
	.A(n163));
   NAND3X2M U72 (.Y(n85), 
	.C(n82), 
	.B(n164), 
	.A(n163));
   NAND3X2M U73 (.Y(n78), 
	.C(waddr[0]), 
	.B(n164), 
	.A(n76));
   NAND3X2M U74 (.Y(n75), 
	.C(waddr[1]), 
	.B(n76), 
	.A(waddr[0]));
   NOR2BX2M U75 (.Y(n82), 
	.B(waddr[2]), 
	.AN(n80));
   OAI2BB2X1M U76 (.Y(n86), 
	.B1(n165), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][0] ));
   OAI2BB2X1M U77 (.Y(n87), 
	.B1(n166), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][1] ));
   OAI2BB2X1M U78 (.Y(n88), 
	.B1(n167), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][2] ));
   OAI2BB2X1M U79 (.Y(n89), 
	.B1(n168), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][3] ));
   OAI2BB2X1M U80 (.Y(n90), 
	.B1(n169), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][4] ));
   OAI2BB2X1M U81 (.Y(n91), 
	.B1(n170), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][5] ));
   OAI2BB2X1M U82 (.Y(n92), 
	.B1(n171), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][6] ));
   OAI2BB2X1M U83 (.Y(n93), 
	.B1(n172), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\mem[7][7] ));
   OAI2BB2X1M U84 (.Y(n102), 
	.B1(n78), 
	.B0(n165), 
	.A1N(n78), 
	.A0N(\mem[5][0] ));
   OAI2BB2X1M U85 (.Y(n103), 
	.B1(n78), 
	.B0(n166), 
	.A1N(n78), 
	.A0N(\mem[5][1] ));
   OAI2BB2X1M U86 (.Y(n104), 
	.B1(n78), 
	.B0(n167), 
	.A1N(n78), 
	.A0N(\mem[5][2] ));
   OAI2BB2X1M U87 (.Y(n105), 
	.B1(n78), 
	.B0(n168), 
	.A1N(n78), 
	.A0N(\mem[5][3] ));
   OAI2BB2X1M U88 (.Y(n106), 
	.B1(n78), 
	.B0(n169), 
	.A1N(n78), 
	.A0N(\mem[5][4] ));
   OAI2BB2X1M U89 (.Y(n107), 
	.B1(n78), 
	.B0(n170), 
	.A1N(n78), 
	.A0N(\mem[5][5] ));
   OAI2BB2X1M U90 (.Y(n108), 
	.B1(n78), 
	.B0(n171), 
	.A1N(n78), 
	.A0N(\mem[5][6] ));
   OAI2BB2X1M U91 (.Y(n109), 
	.B1(n78), 
	.B0(n172), 
	.A1N(n78), 
	.A0N(\mem[5][7] ));
   OAI2BB2X1M U92 (.Y(n142), 
	.B1(n85), 
	.B0(n165), 
	.A1N(n85), 
	.A0N(\mem[0][0] ));
   OAI2BB2X1M U93 (.Y(n143), 
	.B1(n85), 
	.B0(n166), 
	.A1N(n85), 
	.A0N(\mem[0][1] ));
   OAI2BB2X1M U94 (.Y(n144), 
	.B1(n85), 
	.B0(n167), 
	.A1N(n85), 
	.A0N(\mem[0][2] ));
   OAI2BB2X1M U95 (.Y(n145), 
	.B1(n85), 
	.B0(n168), 
	.A1N(n85), 
	.A0N(\mem[0][3] ));
   OAI2BB2X1M U96 (.Y(n146), 
	.B1(n85), 
	.B0(n169), 
	.A1N(n85), 
	.A0N(\mem[0][4] ));
   OAI2BB2X1M U97 (.Y(n147), 
	.B1(n85), 
	.B0(n170), 
	.A1N(n85), 
	.A0N(\mem[0][5] ));
   OAI2BB2X1M U98 (.Y(n148), 
	.B1(n85), 
	.B0(n171), 
	.A1N(n85), 
	.A0N(\mem[0][6] ));
   OAI2BB2X1M U99 (.Y(n149), 
	.B1(n85), 
	.B0(n172), 
	.A1N(n85), 
	.A0N(\mem[0][7] ));
   OAI2BB2X1M U100 (.Y(n110), 
	.B1(n79), 
	.B0(n165), 
	.A1N(n79), 
	.A0N(\mem[4][0] ));
   OAI2BB2X1M U101 (.Y(n111), 
	.B1(n79), 
	.B0(n166), 
	.A1N(n79), 
	.A0N(\mem[4][1] ));
   OAI2BB2X1M U102 (.Y(n112), 
	.B1(n79), 
	.B0(n167), 
	.A1N(n79), 
	.A0N(\mem[4][2] ));
   OAI2BB2X1M U103 (.Y(n113), 
	.B1(n79), 
	.B0(n168), 
	.A1N(n79), 
	.A0N(\mem[4][3] ));
   OAI2BB2X1M U104 (.Y(n114), 
	.B1(n79), 
	.B0(n169), 
	.A1N(n79), 
	.A0N(\mem[4][4] ));
   OAI2BB2X1M U105 (.Y(n115), 
	.B1(n79), 
	.B0(n170), 
	.A1N(n79), 
	.A0N(\mem[4][5] ));
   OAI2BB2X1M U106 (.Y(n116), 
	.B1(n79), 
	.B0(n171), 
	.A1N(n79), 
	.A0N(\mem[4][6] ));
   OAI2BB2X1M U107 (.Y(n117), 
	.B1(n79), 
	.B0(n172), 
	.A1N(n79), 
	.A0N(\mem[4][7] ));
   INVX2M U108 (.Y(n165), 
	.A(wdata[0]));
   INVX2M U109 (.Y(n166), 
	.A(wdata[1]));
   INVX2M U110 (.Y(n167), 
	.A(wdata[2]));
   INVX2M U111 (.Y(n168), 
	.A(wdata[3]));
   INVX2M U112 (.Y(n169), 
	.A(wdata[4]));
   INVX2M U113 (.Y(n170), 
	.A(wdata[5]));
   INVX2M U114 (.Y(n171), 
	.A(wdata[6]));
   INVX2M U115 (.Y(n172), 
	.A(wdata[7]));
   NOR2BX2M U116 (.Y(n80), 
	.B(wfull), 
	.AN(winc));
   OAI2BB2X1M U117 (.Y(n94), 
	.B1(n77), 
	.B0(n165), 
	.A1N(n77), 
	.A0N(\mem[6][0] ));
   OAI2BB2X1M U118 (.Y(n95), 
	.B1(n77), 
	.B0(n166), 
	.A1N(n77), 
	.A0N(\mem[6][1] ));
   OAI2BB2X1M U119 (.Y(n96), 
	.B1(n77), 
	.B0(n167), 
	.A1N(n77), 
	.A0N(\mem[6][2] ));
   OAI2BB2X1M U120 (.Y(n97), 
	.B1(n77), 
	.B0(n168), 
	.A1N(n77), 
	.A0N(\mem[6][3] ));
   OAI2BB2X1M U121 (.Y(n98), 
	.B1(n77), 
	.B0(n169), 
	.A1N(n77), 
	.A0N(\mem[6][4] ));
   OAI2BB2X1M U122 (.Y(n99), 
	.B1(n77), 
	.B0(n170), 
	.A1N(n77), 
	.A0N(\mem[6][5] ));
   OAI2BB2X1M U123 (.Y(n100), 
	.B1(n77), 
	.B0(n171), 
	.A1N(n77), 
	.A0N(\mem[6][6] ));
   OAI2BB2X1M U124 (.Y(n101), 
	.B1(n77), 
	.B0(n172), 
	.A1N(n77), 
	.A0N(\mem[6][7] ));
   OAI2BB2X1M U125 (.Y(n118), 
	.B1(n81), 
	.B0(n165), 
	.A1N(n81), 
	.A0N(\mem[3][0] ));
   OAI2BB2X1M U126 (.Y(n119), 
	.B1(n81), 
	.B0(n166), 
	.A1N(n81), 
	.A0N(\mem[3][1] ));
   OAI2BB2X1M U127 (.Y(n120), 
	.B1(n81), 
	.B0(n167), 
	.A1N(n81), 
	.A0N(\mem[3][2] ));
   OAI2BB2X1M U128 (.Y(n121), 
	.B1(n81), 
	.B0(n168), 
	.A1N(n81), 
	.A0N(\mem[3][3] ));
   OAI2BB2X1M U129 (.Y(n122), 
	.B1(n81), 
	.B0(n169), 
	.A1N(n81), 
	.A0N(\mem[3][4] ));
   OAI2BB2X1M U130 (.Y(n123), 
	.B1(n81), 
	.B0(n170), 
	.A1N(n81), 
	.A0N(\mem[3][5] ));
   OAI2BB2X1M U131 (.Y(n124), 
	.B1(n81), 
	.B0(n171), 
	.A1N(n81), 
	.A0N(\mem[3][6] ));
   OAI2BB2X1M U132 (.Y(n125), 
	.B1(n81), 
	.B0(n172), 
	.A1N(n81), 
	.A0N(\mem[3][7] ));
   OAI2BB2X1M U133 (.Y(n126), 
	.B1(n83), 
	.B0(n165), 
	.A1N(n83), 
	.A0N(\mem[2][0] ));
   OAI2BB2X1M U134 (.Y(n127), 
	.B1(n83), 
	.B0(n166), 
	.A1N(n83), 
	.A0N(\mem[2][1] ));
   OAI2BB2X1M U135 (.Y(n128), 
	.B1(n83), 
	.B0(n167), 
	.A1N(n83), 
	.A0N(\mem[2][2] ));
   OAI2BB2X1M U136 (.Y(n129), 
	.B1(n83), 
	.B0(n168), 
	.A1N(n83), 
	.A0N(\mem[2][3] ));
   OAI2BB2X1M U137 (.Y(n130), 
	.B1(n83), 
	.B0(n169), 
	.A1N(n83), 
	.A0N(\mem[2][4] ));
   OAI2BB2X1M U138 (.Y(n131), 
	.B1(n83), 
	.B0(n170), 
	.A1N(n83), 
	.A0N(\mem[2][5] ));
   OAI2BB2X1M U139 (.Y(n132), 
	.B1(n83), 
	.B0(n171), 
	.A1N(n83), 
	.A0N(\mem[2][6] ));
   OAI2BB2X1M U140 (.Y(n133), 
	.B1(n83), 
	.B0(n172), 
	.A1N(n83), 
	.A0N(\mem[2][7] ));
   OAI2BB2X1M U141 (.Y(n134), 
	.B1(n84), 
	.B0(n165), 
	.A1N(n84), 
	.A0N(\mem[1][0] ));
   OAI2BB2X1M U142 (.Y(n135), 
	.B1(n84), 
	.B0(n166), 
	.A1N(n84), 
	.A0N(\mem[1][1] ));
   OAI2BB2X1M U143 (.Y(n136), 
	.B1(n84), 
	.B0(n167), 
	.A1N(n84), 
	.A0N(\mem[1][2] ));
   OAI2BB2X1M U144 (.Y(n137), 
	.B1(n84), 
	.B0(n168), 
	.A1N(n84), 
	.A0N(\mem[1][3] ));
   OAI2BB2X1M U145 (.Y(n138), 
	.B1(n84), 
	.B0(n169), 
	.A1N(n84), 
	.A0N(\mem[1][4] ));
   OAI2BB2X1M U146 (.Y(n139), 
	.B1(n84), 
	.B0(n170), 
	.A1N(n84), 
	.A0N(\mem[1][5] ));
   OAI2BB2X1M U147 (.Y(n140), 
	.B1(n84), 
	.B0(n171), 
	.A1N(n84), 
	.A0N(\mem[1][6] ));
   OAI2BB2X1M U148 (.Y(n141), 
	.B1(n84), 
	.B0(n172), 
	.A1N(n84), 
	.A0N(\mem[1][7] ));
   AND2X2M U149 (.Y(n76), 
	.B(n80), 
	.A(waddr[2]));
   NAND3X2M U150 (.Y(n77), 
	.C(waddr[1]), 
	.B(n163), 
	.A(n76));
   NAND3X2M U151 (.Y(n81), 
	.C(n82), 
	.B(waddr[0]), 
	.A(waddr[1]));
   NAND3X2M U152 (.Y(n83), 
	.C(n82), 
	.B(n163), 
	.A(waddr[1]));
   NAND3X2M U153 (.Y(n84), 
	.C(n82), 
	.B(n164), 
	.A(waddr[0]));
   MX2X2M U154 (.Y(rdata[7]), 
	.S0(N11), 
	.B(n66), 
	.A(n67));
   MX4X1M U155 (.Y(n67), 
	.S1(N10), 
	.S0(n158), 
	.D(\mem[3][7] ), 
	.C(\mem[2][7] ), 
	.B(\mem[1][7] ), 
	.A(\mem[0][7] ));
   MX4X1M U156 (.Y(n66), 
	.S1(N10), 
	.S0(n157), 
	.D(\mem[7][7] ), 
	.C(\mem[6][7] ), 
	.B(\mem[5][7] ), 
	.A(\mem[4][7] ));
   MX2X2M U157 (.Y(rdata[6]), 
	.S0(N11), 
	.B(n68), 
	.A(n69));
   MX4X1M U158 (.Y(n69), 
	.S1(N10), 
	.S0(n158), 
	.D(\mem[3][6] ), 
	.C(\mem[2][6] ), 
	.B(\mem[1][6] ), 
	.A(\mem[0][6] ));
   MX4X1M U159 (.Y(n68), 
	.S1(N10), 
	.S0(n157), 
	.D(\mem[7][6] ), 
	.C(\mem[6][6] ), 
	.B(\mem[5][6] ), 
	.A(\mem[4][6] ));
   MX2X2M U160 (.Y(rdata[5]), 
	.S0(N11), 
	.B(n70), 
	.A(n71));
   MX4X1M U161 (.Y(n71), 
	.S1(N10), 
	.S0(n158), 
	.D(\mem[3][5] ), 
	.C(\mem[2][5] ), 
	.B(\mem[1][5] ), 
	.A(\mem[0][5] ));
   MX4X1M U162 (.Y(n70), 
	.S1(N10), 
	.S0(n157), 
	.D(\mem[7][5] ), 
	.C(\mem[6][5] ), 
	.B(\mem[5][5] ), 
	.A(\mem[4][5] ));
   MX2X2M U163 (.Y(rdata[4]), 
	.S0(N11), 
	.B(n72), 
	.A(n73));
   MX4X1M U164 (.Y(n73), 
	.S1(N10), 
	.S0(n158), 
	.D(\mem[3][4] ), 
	.C(\mem[2][4] ), 
	.B(\mem[1][4] ), 
	.A(\mem[0][4] ));
   MX4X1M U165 (.Y(n72), 
	.S1(N10), 
	.S0(n157), 
	.D(\mem[7][4] ), 
	.C(\mem[6][4] ), 
	.B(\mem[5][4] ), 
	.A(\mem[4][4] ));
   MX2X2M U166 (.Y(rdata[3]), 
	.S0(N11), 
	.B(n74), 
	.A(n150));
   MX4X1M U167 (.Y(n150), 
	.S1(N10), 
	.S0(n158), 
	.D(\mem[3][3] ), 
	.C(\mem[2][3] ), 
	.B(\mem[1][3] ), 
	.A(\mem[0][3] ));
   MX4X1M U168 (.Y(n74), 
	.S1(N10), 
	.S0(n157), 
	.D(\mem[7][3] ), 
	.C(\mem[6][3] ), 
	.B(\mem[5][3] ), 
	.A(\mem[4][3] ));
   MX2X2M U169 (.Y(rdata[2]), 
	.S0(N11), 
	.B(n151), 
	.A(n152));
   MX4X1M U170 (.Y(n152), 
	.S1(N10), 
	.S0(n158), 
	.D(\mem[3][2] ), 
	.C(\mem[2][2] ), 
	.B(\mem[1][2] ), 
	.A(\mem[0][2] ));
   MX4X1M U171 (.Y(n151), 
	.S1(N10), 
	.S0(n157), 
	.D(\mem[7][2] ), 
	.C(\mem[6][2] ), 
	.B(\mem[5][2] ), 
	.A(\mem[4][2] ));
   MX2X2M U172 (.Y(rdata[1]), 
	.S0(N11), 
	.B(n153), 
	.A(n154));
   MX4X1M U173 (.Y(n154), 
	.S1(N10), 
	.S0(n158), 
	.D(\mem[3][1] ), 
	.C(\mem[2][1] ), 
	.B(\mem[1][1] ), 
	.A(\mem[0][1] ));
   MX4X1M U174 (.Y(n153), 
	.S1(N10), 
	.S0(n157), 
	.D(\mem[7][1] ), 
	.C(\mem[6][1] ), 
	.B(\mem[5][1] ), 
	.A(\mem[4][1] ));
   MX2X2M U175 (.Y(rdata[0]), 
	.S0(N11), 
	.B(n155), 
	.A(n156));
   MX4X1M U176 (.Y(n156), 
	.S1(N10), 
	.S0(n158), 
	.D(\mem[3][0] ), 
	.C(\mem[2][0] ), 
	.B(\mem[1][0] ), 
	.A(\mem[0][0] ));
   MX4X1M U177 (.Y(n155), 
	.S1(N10), 
	.S0(n157), 
	.D(\mem[7][0] ), 
	.C(\mem[6][0] ), 
	.B(\mem[5][0] ), 
	.A(\mem[4][0] ));
   INVX2M U178 (.Y(n164), 
	.A(waddr[1]));
   INVX2M U179 (.Y(n163), 
	.A(waddr[0]));
   BUFX2M U180 (.Y(n157), 
	.A(N9));
   BUFX2M U181 (.Y(n158), 
	.A(N9));
   DLY1X4M U182 (.Y(n176), 
	.A(test_se));
   DLY1X4M U183 (.Y(n177), 
	.A(test_se));
   DLY1X4M U184 (.Y(n178), 
	.A(test_se));
endmodule

module FIFO_RD_test_1 (
	rclk, 
	rrst_n, 
	rinc, 
	sync_wr_ptr, 
	raddr, 
	rptr, 
	rempty, 
	test_si, 
	test_se, 
	FE_OFN2_SYNC_UART_SCAN_RST);
   input rclk;
   input rrst_n;
   input rinc;
   input [3:0] sync_wr_ptr;
   output [2:0] raddr;
   output [3:0] rptr;
   output rempty;
   input test_si;
   input test_se;
   input FE_OFN2_SYNC_UART_SCAN_RST;

   // Internal wires
   wire \rbin[3] ;
   wire rempty_val;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire [3:0] rbinnext;
   wire [2:0] rgraynext;

   SDFFRQX2M \rbin_reg[3]  (.SI(raddr[2]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_UART_SCAN_RST), 
	.Q(\rbin[3] ), 
	.D(rbinnext[3]), 
	.CK(rclk));
   SDFFRQX2M \rbin_reg[2]  (.SI(raddr[1]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_UART_SCAN_RST), 
	.Q(raddr[2]), 
	.D(rbinnext[2]), 
	.CK(rclk));
   SDFFSQX2M rempty_reg (.SN(rrst_n), 
	.SI(\rbin[3] ), 
	.SE(test_se), 
	.Q(rempty), 
	.D(rempty_val), 
	.CK(rclk));
   SDFFRQX2M \rbin_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_UART_SCAN_RST), 
	.Q(raddr[0]), 
	.D(rbinnext[0]), 
	.CK(rclk));
   SDFFRQX4M \rbin_reg[1]  (.SI(raddr[0]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_UART_SCAN_RST), 
	.Q(raddr[1]), 
	.D(rbinnext[1]), 
	.CK(rclk));
   SDFFRQX2M \rptr_reg[3]  (.SI(rptr[2]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(rptr[3]), 
	.D(rbinnext[3]), 
	.CK(rclk));
   SDFFRQX2M \rptr_reg[2]  (.SI(rptr[1]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(rptr[2]), 
	.D(rgraynext[2]), 
	.CK(rclk));
   SDFFRQX2M \rptr_reg[1]  (.SI(rptr[0]), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(rptr[1]), 
	.D(rgraynext[1]), 
	.CK(rclk));
   SDFFRQX2M \rptr_reg[0]  (.SI(rempty), 
	.SE(test_se), 
	.RN(rrst_n), 
	.Q(rptr[0]), 
	.D(rgraynext[0]), 
	.CK(rclk));
   CLKXOR2X2M U12 (.Y(rgraynext[2]), 
	.B(rbinnext[2]), 
	.A(rbinnext[3]));
   CLKXOR2X2M U13 (.Y(rgraynext[0]), 
	.B(rbinnext[0]), 
	.A(rbinnext[1]));
   CLKXOR2X2M U14 (.Y(rgraynext[1]), 
	.B(rbinnext[1]), 
	.A(rbinnext[2]));
   XNOR2X2M U15 (.Y(rbinnext[3]), 
	.B(\rbin[3] ), 
	.A(n14));
   NAND3X2M U16 (.Y(n14), 
	.C(raddr[2]), 
	.B(n15), 
	.A(raddr[1]));
   NOR4X1M U17 (.Y(rempty_val), 
	.D(n13), 
	.C(n12), 
	.B(n11), 
	.A(n10));
   CLKXOR2X2M U18 (.Y(n11), 
	.B(rbinnext[3]), 
	.A(sync_wr_ptr[3]));
   CLKXOR2X2M U19 (.Y(n10), 
	.B(rgraynext[2]), 
	.A(sync_wr_ptr[2]));
   CLKXOR2X2M U20 (.Y(n12), 
	.B(rgraynext[0]), 
	.A(sync_wr_ptr[0]));
   NOR2BX2M U21 (.Y(n17), 
	.B(rempty), 
	.AN(rinc));
   XNOR2X2M U22 (.Y(rbinnext[2]), 
	.B(raddr[2]), 
	.A(n16));
   NAND2X2M U23 (.Y(n16), 
	.B(n15), 
	.A(raddr[1]));
   AND2X2M U24 (.Y(n15), 
	.B(n17), 
	.A(raddr[0]));
   CLKXOR2X2M U25 (.Y(rbinnext[1]), 
	.B(raddr[1]), 
	.A(n15));
   CLKXOR2X2M U26 (.Y(n13), 
	.B(rgraynext[1]), 
	.A(sync_wr_ptr[1]));
   CLKXOR2X2M U27 (.Y(rbinnext[0]), 
	.B(raddr[0]), 
	.A(n17));
endmodule

module FIFO_WR_test_1 (
	sync_rd_ptr, 
	winc, 
	wclk, 
	wrst_n, 
	wfull, 
	waddr, 
	wptr, 
	test_si, 
	test_se);
   input [3:0] sync_rd_ptr;
   input winc;
   input wclk;
   input wrst_n;
   output wfull;
   output [2:0] waddr;
   output [3:0] wptr;
   input test_si;
   input test_se;

   // Internal wires
   wire \wbin[3] ;
   wire wfull_value;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire [3:0] wbinnext;
   wire [2:0] wgraynext;

   SDFFRQX2M \wbin_reg[3]  (.SI(waddr[2]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(\wbin[3] ), 
	.D(wbinnext[3]), 
	.CK(wclk));
   SDFFRQX2M \wbin_reg[2]  (.SI(waddr[1]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(waddr[2]), 
	.D(wbinnext[2]), 
	.CK(wclk));
   SDFFRQX2M wfull_reg (.SI(\wbin[3] ), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wfull), 
	.D(wfull_value), 
	.CK(wclk));
   SDFFRQX2M \wbin_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(waddr[0]), 
	.D(wbinnext[0]), 
	.CK(wclk));
   SDFFRQX2M \wbin_reg[1]  (.SI(waddr[0]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(waddr[1]), 
	.D(wbinnext[1]), 
	.CK(wclk));
   SDFFRQX2M \wptr_reg[3]  (.SI(wptr[2]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr[3]), 
	.D(wbinnext[3]), 
	.CK(wclk));
   SDFFRQX2M \wptr_reg[2]  (.SI(wptr[1]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr[2]), 
	.D(wgraynext[2]), 
	.CK(wclk));
   SDFFRQX2M \wptr_reg[1]  (.SI(wptr[0]), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr[1]), 
	.D(wgraynext[1]), 
	.CK(wclk));
   SDFFRQX2M \wptr_reg[0]  (.SI(wfull), 
	.SE(test_se), 
	.RN(wrst_n), 
	.Q(wptr[0]), 
	.D(wgraynext[0]), 
	.CK(wclk));
   CLKXOR2X2M U12 (.Y(wgraynext[0]), 
	.B(wbinnext[0]), 
	.A(wbinnext[1]));
   CLKXOR2X2M U13 (.Y(wgraynext[1]), 
	.B(wbinnext[1]), 
	.A(wbinnext[2]));
   CLKXOR2X2M U14 (.Y(wgraynext[2]), 
	.B(wbinnext[2]), 
	.A(wbinnext[3]));
   XNOR2X2M U15 (.Y(wbinnext[2]), 
	.B(waddr[2]), 
	.A(n16));
   NAND2X2M U16 (.Y(n16), 
	.B(n15), 
	.A(waddr[1]));
   XNOR2X2M U17 (.Y(wbinnext[3]), 
	.B(\wbin[3] ), 
	.A(n14));
   NAND3X2M U18 (.Y(n14), 
	.C(waddr[2]), 
	.B(n15), 
	.A(waddr[1]));
   NOR4X1M U19 (.Y(wfull_value), 
	.D(n13), 
	.C(n12), 
	.B(n11), 
	.A(n10));
   XNOR2X2M U20 (.Y(n11), 
	.B(sync_rd_ptr[3]), 
	.A(wbinnext[3]));
   XNOR2X2M U21 (.Y(n10), 
	.B(sync_rd_ptr[2]), 
	.A(wgraynext[2]));
   CLKXOR2X2M U22 (.Y(n12), 
	.B(wgraynext[0]), 
	.A(sync_rd_ptr[0]));
   NOR2BX2M U23 (.Y(n17), 
	.B(wfull), 
	.AN(winc));
   AND2X2M U24 (.Y(n15), 
	.B(n17), 
	.A(waddr[0]));
   CLKXOR2X2M U25 (.Y(wbinnext[1]), 
	.B(waddr[1]), 
	.A(n15));
   CLKXOR2X2M U26 (.Y(n13), 
	.B(wgraynext[1]), 
	.A(sync_rd_ptr[1]));
   CLKXOR2X2M U27 (.Y(wbinnext[0]), 
	.B(waddr[0]), 
	.A(n17));
endmodule

module FIFO_TOP_test_1 (
	wclk, 
	rclk, 
	wrst_n, 
	rrst_n, 
	rinc, 
	winc, 
	wdata, 
	rdata, 
	wfull, 
	rempty, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN2_SYNC_UART_SCAN_RST);
   input wclk;
   input rclk;
   input wrst_n;
   input rrst_n;
   input rinc;
   input winc;
   input [7:0] wdata;
   output [7:0] rdata;
   output wfull;
   output rempty;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN2_SYNC_UART_SCAN_RST;

   // Internal wires
   wire n3;
   wire [3:0] WPTR;
   wire [3:0] S_WPTR;
   wire [3:0] RPTR;
   wire [3:0] S_RPTR;
   wire [2:0] waddr;
   wire [2:0] raddr;

   assign test_so2 = WPTR[3] ;

   FIFO_DF_SYNC_test_1 sync_w2r (.CLK(rclk), 
	.RST(rrst_n), 
	.in({ WPTR[3],
		WPTR[2],
		WPTR[1],
		WPTR[0] }), 
	.out({ S_WPTR[3],
		S_WPTR[2],
		S_WPTR[1],
		S_WPTR[0] }), 
	.test_si(S_RPTR[3]), 
	.test_se(test_se), 
	.FE_OFN2_SYNC_UART_SCAN_RST(FE_OFN2_SYNC_UART_SCAN_RST));
   FIFO_DF_SYNC_test_0 sync_r2w (.CLK(wclk), 
	.RST(wrst_n), 
	.in({ RPTR[3],
		RPTR[2],
		RPTR[1],
		RPTR[0] }), 
	.out({ S_RPTR[3],
		S_RPTR[2],
		S_RPTR[1],
		S_RPTR[0] }), 
	.test_se(test_se));
   FIFO_MEM_CNTRL_test_1 fifomem (.wclk(wclk), 
	.wfull(wfull), 
	.winc(winc), 
	.waddr({ waddr[2],
		waddr[1],
		waddr[0] }), 
	.raddr({ raddr[2],
		raddr[1],
		raddr[0] }), 
	.wdata({ wdata[7],
		wdata[6],
		wdata[5],
		wdata[4],
		wdata[3],
		wdata[2],
		wdata[1],
		wdata[0] }), 
	.rdata({ rdata[7],
		rdata[6],
		rdata[5],
		rdata[4],
		rdata[3],
		rdata[2],
		rdata[1],
		rdata[0] }), 
	.test_si2(test_si2), 
	.test_si1(test_si1), 
	.test_so2(n3), 
	.test_so1(test_so1), 
	.test_se(test_se));
   FIFO_RD_test_1 rptr_empty (.rclk(rclk), 
	.rrst_n(rrst_n), 
	.rinc(rinc), 
	.sync_wr_ptr({ S_WPTR[3],
		S_WPTR[2],
		S_WPTR[1],
		S_WPTR[0] }), 
	.raddr({ raddr[2],
		raddr[1],
		raddr[0] }), 
	.rptr({ RPTR[3],
		RPTR[2],
		RPTR[1],
		RPTR[0] }), 
	.rempty(rempty), 
	.test_si(n3), 
	.test_se(test_se), 
	.FE_OFN2_SYNC_UART_SCAN_RST(FE_OFN2_SYNC_UART_SCAN_RST));
   FIFO_WR_test_1 wptr_full (.sync_rd_ptr({ S_RPTR[3],
		S_RPTR[2],
		S_RPTR[1],
		S_RPTR[0] }), 
	.winc(winc), 
	.wclk(wclk), 
	.wrst_n(wrst_n), 
	.wfull(wfull), 
	.waddr({ waddr[2],
		waddr[1],
		waddr[0] }), 
	.wptr({ WPTR[3],
		WPTR[2],
		WPTR[1],
		WPTR[0] }), 
	.test_si(S_WPTR[3]), 
	.test_se(test_se));
endmodule

module UART_RX_FSM_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	PAR_EN, 
	START_GLITCH, 
	STOP_ERR, 
	PAR_ERR, 
	BIT_COUNT, 
	EDGE_COUNT, 
	PRESCALE, 
	DATA_VALID, 
	COUNT_RST, 
	GLITCH_RST, 
	PAR_ERR_RST, 
	STOP_ERR_RST, 
	START_CHECK_EN, 
	STOP_CHECK_EN, 
	PAR_CHECK_EN, 
	DESERIALIZER_EN, 
	COUNTER_EN, 
	SAMPLER_EN, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input RX_IN;
   input PAR_EN;
   input START_GLITCH;
   input STOP_ERR;
   input PAR_ERR;
   input [3:0] BIT_COUNT;
   input [4:0] EDGE_COUNT;
   input [5:0] PRESCALE;
   output DATA_VALID;
   output COUNT_RST;
   output GLITCH_RST;
   output PAR_ERR_RST;
   output STOP_ERR_RST;
   output START_CHECK_EN;
   output STOP_CHECK_EN;
   output PAR_CHECK_EN;
   output DESERIALIZER_EN;
   output COUNTER_EN;
   output SAMPLER_EN;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire \first_sample[2] ;
   wire N70;
   wire N71;
   wire N72;
   wire N73;
   wire N74;
   wire N75;
   wire N76;
   wire N77;
   wire N86;
   wire N87;
   wire N88;
   wire \r109/A[3] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire [3:0] current_state;
   wire [3:0] next_state;

   assign STOP_ERR_RST = PAR_ERR_RST ;
   assign test_so = current_state[3] ;

   SDFFRQX2M \current_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[2]  (.SI(n69), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[3]  (.SI(current_state[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[3]), 
	.D(next_state[3]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   INVX2M U7 (.Y(N86), 
	.A(\first_sample[2] ));
   INVX2M U8 (.Y(N70), 
	.A(PRESCALE[0]));
   AND2X1M U9 (.Y(N88), 
	.B(\r109/A[3] ), 
	.A(\first_sample[2] ));
   CLKXOR2X2M U10 (.Y(N87), 
	.B(\first_sample[2] ), 
	.A(\r109/A[3] ));
   NAND2BX1M U11 (.Y(n1), 
	.B(N70), 
	.AN(PRESCALE[1]));
   OAI2BB1X1M U12 (.Y(N71), 
	.B0(n1), 
	.A1N(PRESCALE[1]), 
	.A0N(PRESCALE[0]));
   OR2X1M U13 (.Y(n2), 
	.B(PRESCALE[2]), 
	.A(n1));
   OAI2BB1X1M U14 (.Y(N72), 
	.B0(n2), 
	.A1N(PRESCALE[2]), 
	.A0N(n1));
   OR2X1M U15 (.Y(n3), 
	.B(PRESCALE[3]), 
	.A(n2));
   OAI2BB1X1M U16 (.Y(N73), 
	.B0(n3), 
	.A1N(PRESCALE[3]), 
	.A0N(n2));
   OR2X1M U17 (.Y(n4), 
	.B(PRESCALE[4]), 
	.A(n3));
   OAI2BB1X1M U18 (.Y(N74), 
	.B0(n4), 
	.A1N(PRESCALE[4]), 
	.A0N(n3));
   NOR2X1M U19 (.Y(N76), 
	.B(PRESCALE[5]), 
	.A(n4));
   AO21XLM U20 (.Y(N75), 
	.B0(N76), 
	.A1(PRESCALE[5]), 
	.A0(n4));
   NOR2BX1M U21 (.Y(n5), 
	.B(N70), 
	.AN(EDGE_COUNT[0]));
   OAI2B2X1M U22 (.Y(n8), 
	.B1(n5), 
	.B0(EDGE_COUNT[1]), 
	.A1N(N71), 
	.A0(n5));
   NOR2BX1M U23 (.Y(n6), 
	.B(EDGE_COUNT[0]), 
	.AN(N70));
   OAI2B2X1M U24 (.Y(n7), 
	.B1(n6), 
	.B0(N71), 
	.A1N(EDGE_COUNT[1]), 
	.A0(n6));
   NAND4BBX1M U25 (.Y(n12), 
	.D(n7), 
	.C(n8), 
	.BN(N75), 
	.AN(N76));
   CLKXOR2X2M U26 (.Y(n11), 
	.B(N74), 
	.A(EDGE_COUNT[4]));
   CLKXOR2X2M U27 (.Y(n10), 
	.B(N72), 
	.A(EDGE_COUNT[2]));
   CLKXOR2X2M U28 (.Y(n9), 
	.B(N73), 
	.A(EDGE_COUNT[3]));
   NOR4X1M U29 (.Y(N77), 
	.D(n9), 
	.C(n10), 
	.B(n11), 
	.A(n12));
   CLKINVX1M U30 (.Y(\r109/A[3] ), 
	.A(n13));
   OAI21X1M U31 (.Y(next_state[3]), 
	.B0(n16), 
	.A1(n15), 
	.A0(n14));
   NAND4X1M U32 (.Y(next_state[2]), 
	.D(n19), 
	.C(n18), 
	.B(n17), 
	.A(n15));
   AOI221XLM U33 (.Y(n19), 
	.C0(n24), 
	.B1(n23), 
	.B0(n22), 
	.A1(n21), 
	.A0(n20));
   CLKINVX1M U34 (.Y(n24), 
	.A(n25));
   OAI21X1M U35 (.Y(n23), 
	.B0(n32), 
	.A1(n31), 
	.A0(n30));
   CLKINVX1M U36 (.Y(n22), 
	.A(n33));
   OAI221X1M U37 (.Y(next_state[1]), 
	.C0(n37), 
	.B1(n32), 
	.B0(n36), 
	.A1(n35), 
	.A0(n34));
   AOI211X1M U38 (.Y(n37), 
	.C0(n39), 
	.B0(n20), 
	.A1(n21), 
	.A0(n38));
   AOI2BB1X1M U39 (.Y(n39), 
	.B0(n33), 
	.A1N(n31), 
	.A0N(n14));
   CLKINVX1M U40 (.Y(n20), 
	.A(n40));
   CLKINVX1M U41 (.Y(n34), 
	.A(n41));
   NAND3X1M U42 (.Y(next_state[0]), 
	.C(n43), 
	.B(n16), 
	.A(n42));
   AOI221XLM U43 (.Y(n43), 
	.C0(n46), 
	.B1(n41), 
	.B0(n45), 
	.A1(n21), 
	.A0(n44));
   CLKINVX1M U44 (.Y(n46), 
	.A(n47));
   CLKNAND2X2M U45 (.Y(n41), 
	.B(n32), 
	.A(n30));
   CLKINVX1M U46 (.Y(n30), 
	.A(N77));
   AND3X1M U47 (.Y(n16), 
	.C(n48), 
	.B(n18), 
	.A(n25));
   OR4X1M U48 (.Y(n48), 
	.D(n31), 
	.C(n14), 
	.B(n33), 
	.A(PAR_EN));
   NAND3BX1M U49 (.Y(n31), 
	.C(n49), 
	.B(BIT_COUNT[3]), 
	.AN(BIT_COUNT[0]));
   NOR2X1M U50 (.Y(n49), 
	.B(BIT_COUNT[1]), 
	.A(BIT_COUNT[2]));
   NAND3X1M U51 (.Y(n33), 
	.C(n51), 
	.B(n50), 
	.A(current_state[1]));
   AOI2BB2XLM U52 (.Y(n42), 
	.B1(n14), 
	.B0(n52), 
	.A1N(RX_IN), 
	.A0N(n53));
   CLKNAND2X2M U53 (.Y(PAR_ERR_RST), 
	.B(n55), 
	.A(n54));
   NOR2X1M U54 (.Y(STOP_CHECK_EN), 
	.B(n21), 
	.A(n18));
   NOR2X1M U55 (.Y(START_CHECK_EN), 
	.B(n47), 
	.A(n21));
   NOR2X1M U56 (.Y(PAR_CHECK_EN), 
	.B(n21), 
	.A(n17));
   NAND4X1M U57 (.Y(GLITCH_RST), 
	.D(n35), 
	.C(n36), 
	.B(n53), 
	.A(n56));
   NOR2X1M U58 (.Y(DESERIALIZER_EN), 
	.B(n21), 
	.A(n40));
   NAND4X1M U59 (.Y(n21), 
	.D(n60), 
	.C(n59), 
	.B(n58), 
	.A(n57));
   XNOR2X1M U60 (.Y(n60), 
	.B(N86), 
	.A(EDGE_COUNT[2]));
   NOR2X1M U61 (.Y(n59), 
	.B(n61), 
	.A(EDGE_COUNT[1]));
   XNOR2X1M U62 (.Y(n58), 
	.B(N87), 
	.A(EDGE_COUNT[3]));
   XNOR2X1M U63 (.Y(n57), 
	.B(N88), 
	.A(EDGE_COUNT[4]));
   NOR4X1M U64 (.Y(DATA_VALID), 
	.D(n14), 
	.C(n36), 
	.B(PAR_ERR), 
	.A(STOP_ERR));
   CLKNAND2X2M U65 (.Y(COUNT_RST), 
	.B(n35), 
	.A(n54));
   CLKINVX1M U66 (.Y(n35), 
	.A(n52));
   NOR2X1M U67 (.Y(n52), 
	.B(n55), 
	.A(START_GLITCH));
   AND3X1M U68 (.Y(n54), 
	.C(n56), 
	.B(n25), 
	.A(n53));
   NAND2BX1M U69 (.Y(n25), 
	.B(n14), 
	.AN(n36));
   CLKNAND2X2M U70 (.Y(n14), 
	.B(n32), 
	.A(N77));
   NAND4BX1M U71 (.Y(n32), 
	.D(n63), 
	.C(n62), 
	.B(n61), 
	.AN(EDGE_COUNT[4]));
   NOR2BX1M U72 (.Y(n63), 
	.B(n64), 
	.AN(EDGE_COUNT[1]));
   XNOR2X1M U73 (.Y(n64), 
	.B(n13), 
	.A(EDGE_COUNT[3]));
   XNOR2X1M U74 (.Y(n62), 
	.B(\first_sample[2] ), 
	.A(EDGE_COUNT[2]));
   CLKNAND2X2M U75 (.Y(\first_sample[2] ), 
	.B(n65), 
	.A(n13));
   NAND4X1M U76 (.Y(n65), 
	.D(n67), 
	.C(PRESCALE[4]), 
	.B(n66), 
	.A(N70));
   NOR3X1M U77 (.Y(n67), 
	.C(PRESCALE[3]), 
	.B(PRESCALE[5]), 
	.A(PRESCALE[2]));
   NAND4X1M U78 (.Y(n13), 
	.D(n68), 
	.C(PRESCALE[5]), 
	.B(n66), 
	.A(N70));
   NOR3X1M U79 (.Y(n68), 
	.C(PRESCALE[3]), 
	.B(PRESCALE[4]), 
	.A(PRESCALE[2]));
   CLKINVX1M U80 (.Y(n66), 
	.A(PRESCALE[1]));
   CLKINVX1M U81 (.Y(n61), 
	.A(EDGE_COUNT[0]));
   NAND3X1M U82 (.Y(n53), 
	.C(n51), 
	.B(n50), 
	.A(n69));
   NAND4X1M U83 (.Y(COUNTER_EN), 
	.D(n36), 
	.C(n55), 
	.B(n56), 
	.A(RX_IN));
   CLKNAND2X2M U84 (.Y(n36), 
	.B(n69), 
	.A(n70));
   CLKNAND2X2M U85 (.Y(n55), 
	.B(n69), 
	.A(n71));
   NOR4BX1M U86 (.Y(n56), 
	.D(current_state[1]), 
	.C(SAMPLER_EN), 
	.B(n45), 
	.AN(n72));
   NAND3BX1M U87 (.Y(SAMPLER_EN), 
	.C(n17), 
	.B(n40), 
	.AN(n38));
   CLKINVX1M U88 (.Y(n17), 
	.A(n44));
   NOR4X1M U89 (.Y(n44), 
	.D(current_state[3]), 
	.C(current_state[1]), 
	.B(n73), 
	.A(n50));
   NAND3X1M U90 (.Y(n40), 
	.C(n51), 
	.B(current_state[2]), 
	.A(current_state[1]));
   CLKNAND2X2M U91 (.Y(n38), 
	.B(n47), 
	.A(n18));
   CLKNAND2X2M U92 (.Y(n47), 
	.B(current_state[1]), 
	.A(n71));
   NOR3X1M U93 (.Y(n71), 
	.C(n73), 
	.B(current_state[3]), 
	.A(current_state[2]));
   CLKNAND2X2M U94 (.Y(n18), 
	.B(n70), 
	.A(current_state[1]));
   NOR3BX1M U95 (.Y(n70), 
	.C(n73), 
	.B(n50), 
	.AN(current_state[3]));
   CLKINVX1M U96 (.Y(n45), 
	.A(n15));
   NAND3X1M U97 (.Y(n15), 
	.C(n51), 
	.B(n69), 
	.A(current_state[2]));
   NOR2X1M U98 (.Y(n51), 
	.B(current_state[0]), 
	.A(current_state[3]));
   CLKINVX1M U99 (.Y(n69), 
	.A(current_state[1]));
   OAI21X1M U100 (.Y(n72), 
	.B0(current_state[3]), 
	.A1(n50), 
	.A0(n73));
   CLKINVX1M U101 (.Y(n50), 
	.A(current_state[2]));
   CLKINVX1M U102 (.Y(n73), 
	.A(current_state[0]));
endmodule

module UART_RX_data_sampler_test_1 (
	CLK, 
	RST, 
	EN, 
	RX_IN, 
	sampled_bit, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input EN;
   input RX_IN;
   output sampled_bit;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n1;
   wire n4;
   wire n5;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n2;
   wire n3;
   wire n7;
   wire [2:0] current_state;

   assign test_so = n7 ;

   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(n10), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[0]), 
	.D(n14), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[1]  (.SI(n2), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(n12), 
	.CK(CLK));
   OAI22X1M U3 (.Y(n12), 
	.B1(n4), 
	.B0(n6), 
	.A1(n3), 
	.A0(EN));
   AOI2BB2XLM U4 (.Y(n6), 
	.B1(n3), 
	.B0(RX_IN), 
	.A1N(RX_IN), 
	.A0N(n2));
   NAND2X2M U5 (.Y(n4), 
	.B(n7), 
	.A(EN));
   OAI32X1M U6 (.Y(n14), 
	.B1(n2), 
	.B0(n8), 
	.A2(current_state[0]), 
	.A1(current_state[1]), 
	.A0(n4));
   OA21X2M U7 (.Y(n8), 
	.B0(EN), 
	.A1(current_state[2]), 
	.A0(n3));
   OAI22X1M U8 (.Y(n10), 
	.B1(n5), 
	.B0(n4), 
	.A1(n7), 
	.A0(EN));
   OAI21X2M U9 (.Y(n5), 
	.B0(current_state[0]), 
	.A1(current_state[1]), 
	.A0(RX_IN));
   NOR2X2M U10 (.Y(sampled_bit), 
	.B(n7), 
	.A(n1));
   AOI22X1M U11 (.Y(n1), 
	.B1(n3), 
	.B0(current_state[0]), 
	.A1(RX_IN), 
	.A0(current_state[1]));
   INVX2M U12 (.Y(n7), 
	.A(current_state[2]));
   INVX2M U13 (.Y(n3), 
	.A(current_state[1]));
   INVX2M U14 (.Y(n2), 
	.A(current_state[0]));
endmodule

module UART_RX_deserializer_test_1 (
	CLK, 
	RST, 
	EN, 
	sampled_bit, 
	P_DATA, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input EN;
   input sampled_bit;
   output [7:0] P_DATA;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n20;
   wire n22;
   wire n24;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n25;

   assign test_so = n3 ;

   SDFFRQX2M \P_DATA_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[0]), 
	.D(n10), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[1]  (.SI(P_DATA[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[1]), 
	.D(n12), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[4]  (.SI(n7), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[4]), 
	.D(n18), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[7]  (.SI(n4), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[7]), 
	.D(n24), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[3]  (.SI(n8), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[3]), 
	.D(n16), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[2]  (.SI(n25), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[2]), 
	.D(n14), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[5]  (.SI(n6), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[5]), 
	.D(n20), 
	.CK(CLK));
   SDFFRQX2M \P_DATA_reg[6]  (.SI(n5), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[6]), 
	.D(n22), 
	.CK(CLK));
   INVX2M U2 (.Y(n2), 
	.A(EN));
   OAI22X1M U4 (.Y(n12), 
	.B1(n25), 
	.B0(EN), 
	.A1(n8), 
	.A0(n2));
   OAI22X1M U5 (.Y(n14), 
	.B1(n8), 
	.B0(EN), 
	.A1(n7), 
	.A0(n2));
   OAI22X1M U6 (.Y(n16), 
	.B1(n7), 
	.B0(EN), 
	.A1(n6), 
	.A0(n2));
   OAI22X1M U7 (.Y(n18), 
	.B1(n6), 
	.B0(EN), 
	.A1(n5), 
	.A0(n2));
   OAI22X1M U8 (.Y(n20), 
	.B1(n5), 
	.B0(EN), 
	.A1(n4), 
	.A0(n2));
   OAI22X1M U9 (.Y(n22), 
	.B1(n4), 
	.B0(EN), 
	.A1(n3), 
	.A0(n2));
   OAI2BB2X1M U10 (.Y(n24), 
	.B1(n3), 
	.B0(EN), 
	.A1N(EN), 
	.A0N(sampled_bit));
   OAI2BB2X1M U11 (.Y(n10), 
	.B1(n25), 
	.B0(n2), 
	.A1N(n2), 
	.A0N(P_DATA[0]));
   INVX2M U12 (.Y(n8), 
	.A(P_DATA[2]));
   INVX2M U13 (.Y(n4), 
	.A(P_DATA[6]));
   INVX2M U14 (.Y(n3), 
	.A(P_DATA[7]));
   INVX2M U15 (.Y(n7), 
	.A(P_DATA[3]));
   INVX2M U16 (.Y(n25), 
	.A(P_DATA[1]));
   INVX2M U17 (.Y(n6), 
	.A(P_DATA[4]));
   INVX2M U26 (.Y(n5), 
	.A(P_DATA[5]));
endmodule

module UART_RX_edge_bit_counter_test_1 (
	CLK, 
	RST, 
	EN, 
	COUNT_RST, 
	PRESCALE, 
	EDGE_COUNT, 
	BIT_COUNT, 
	test_si, 
	test_so, 
	test_se, 
	FE_PT1_n3);
   input CLK;
   input RST;
   input EN;
   input COUNT_RST;
   input [5:0] PRESCALE;
   output [4:0] EDGE_COUNT;
   output [3:0] BIT_COUNT;
   input test_si;
   output test_so;
   input test_se;
   input FE_PT1_n3;

   // Internal wires
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire n1;
   wire n2;
   wire n4;
   wire n5;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n28;
   wire n31;
   wire n32;
   wire n34;
   wire n35;
   wire n37;
   wire n43;
   wire n45;
   wire n47;
   wire n49;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire \add_25/carry[4] ;
   wire \add_25/carry[3] ;
   wire \add_25/carry[2] ;
   wire n3;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n18;
   wire n19;
   wire n27;
   wire n29;
   wire n30;
   wire n33;
   wire n36;

   assign test_so = n19 ;

   SDFFRQX2M \BIT_COUNT_reg[3]  (.SI(n30), 
	.SE(test_se), 
	.RN(RST), 
	.Q(BIT_COUNT[3]), 
	.D(n52), 
	.CK(CLK));
   SDFFRQX2M \BIT_COUNT_reg[2]  (.SI(n29), 
	.SE(test_se), 
	.RN(RST), 
	.Q(BIT_COUNT[2]), 
	.D(n53), 
	.CK(CLK));
   SDFFRQX2M \BIT_COUNT_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(BIT_COUNT[0]), 
	.D(n55), 
	.CK(CLK));
   SDFFRQX2M \BIT_COUNT_reg[1]  (.SI(n27), 
	.SE(test_se), 
	.RN(RST), 
	.Q(BIT_COUNT[1]), 
	.D(n54), 
	.CK(CLK));
   SDFFRQX2M \EDGE_COUNT_reg[4]  (.SI(n12), 
	.SE(test_se), 
	.RN(RST), 
	.Q(EDGE_COUNT[4]), 
	.D(n43), 
	.CK(CLK));
   SDFFRQX2M \EDGE_COUNT_reg[0]  (.SI(n33), 
	.SE(test_se), 
	.RN(RST), 
	.Q(EDGE_COUNT[0]), 
	.D(n51), 
	.CK(CLK));
   SDFFRQX2M \EDGE_COUNT_reg[1]  (.SI(n11), 
	.SE(test_se), 
	.RN(RST), 
	.Q(EDGE_COUNT[1]), 
	.D(n47), 
	.CK(CLK));
   SDFFRQX2M \EDGE_COUNT_reg[2]  (.SI(n13), 
	.SE(test_se), 
	.RN(RST), 
	.Q(EDGE_COUNT[2]), 
	.D(n45), 
	.CK(CLK));
   SDFFRQX2M \EDGE_COUNT_reg[3]  (.SI(n18), 
	.SE(test_se), 
	.RN(RST), 
	.Q(EDGE_COUNT[3]), 
	.D(n49), 
	.CK(CLK));
   OAI31X1M U3 (.Y(n31), 
	.B0(EN), 
	.A2(n34), 
	.A1(n7), 
	.A0(n32));
   INVX2M U4 (.Y(n3), 
	.A(n4));
   INVX2M U5 (.Y(n10), 
	.A(n23));
   NAND4X2M U6 (.Y(n4), 
	.D(n26), 
	.C(n21), 
	.B(COUNT_RST), 
	.A(n6));
   AOI21X2M U7 (.Y(n5), 
	.B0(n31), 
	.A1(n3), 
	.A0(n27));
   INVX2M U8 (.Y(n6), 
	.A(n31));
   OAI2BB2X1M U9 (.Y(n45), 
	.B1(n18), 
	.B0(EN), 
	.A1N(n8), 
	.A0N(N21));
   OAI2BB2X1M U10 (.Y(n47), 
	.B1(n13), 
	.B0(EN), 
	.A1N(n8), 
	.A0N(N20));
   OAI2BB2X1M U11 (.Y(n49), 
	.B1(n12), 
	.B0(EN), 
	.A1N(n8), 
	.A0N(N22));
   NOR3X2M U12 (.Y(n37), 
	.C(n18), 
	.B(n11), 
	.A(n13));
   OAI31X1M U13 (.Y(n35), 
	.B0(n26), 
	.A2(n12), 
	.A1(n23), 
	.A0(n25));
   NAND2X2M U14 (.Y(n23), 
	.B(n19), 
	.A(n37));
   AND2X2M U15 (.Y(n17), 
	.B(n24), 
	.A(n25));
   INVX2M U16 (.Y(n9), 
	.A(n22));
   OAI31X1M U17 (.Y(n34), 
	.B0(n21), 
	.A2(n23), 
	.A1(EDGE_COUNT[3]), 
	.A0(n24));
   OAI21BX1M U18 (.Y(n32), 
	.B0N(n35), 
	.A1(n20), 
	.A0(n22));
   INVX2M U19 (.Y(n7), 
	.A(COUNT_RST));
   OAI32X1M U20 (.Y(n54), 
	.B1(n29), 
	.B0(n5), 
	.A2(n4), 
	.A1(BIT_COUNT[1]), 
	.A0(n27));
   INVX2M U21 (.Y(n29), 
	.A(BIT_COUNT[1]));
   OAI32X1M U22 (.Y(n52), 
	.B1(n33), 
	.B0(n28), 
	.A2(n1), 
	.A1(BIT_COUNT[3]), 
	.A0(n30));
   INVX2M U23 (.Y(n33), 
	.A(BIT_COUNT[3]));
   AOI21X2M U24 (.Y(n28), 
	.B0(n2), 
	.A1(n30), 
	.A0(n3));
   INVX2M U25 (.Y(n30), 
	.A(BIT_COUNT[2]));
   OAI22X1M U26 (.Y(n55), 
	.B1(n4), 
	.B0(BIT_COUNT[0]), 
	.A1(n27), 
	.A0(n6));
   OAI21X2M U27 (.Y(n2), 
	.B0(n5), 
	.A1(n4), 
	.A0(BIT_COUNT[1]));
   OAI2BB2X1M U28 (.Y(n53), 
	.B1(n1), 
	.B0(BIT_COUNT[2]), 
	.A1N(BIT_COUNT[2]), 
	.A0N(n2));
   NAND3X2M U29 (.Y(n1), 
	.C(BIT_COUNT[1]), 
	.B(n3), 
	.A(BIT_COUNT[0]));
   OAI2BB2XLM U30 (.Y(n43), 
	.B1(n19), 
	.B0(EN), 
	.A1N(n8), 
	.A0N(N23));
   OAI2B2X1M U31 (.Y(n51), 
	.B1(n11), 
	.B0(EN), 
	.A1N(n8), 
	.A0(EDGE_COUNT[0]));
   INVX2M U32 (.Y(n8), 
	.A(n14));
   OAI211XLM U33 (.Y(n14), 
	.C0(EN), 
	.B0(COUNT_RST), 
	.A1(n16), 
	.A0(n15));
   OAI221X1M U34 (.Y(n15), 
	.C0(n26), 
	.B1(n25), 
	.B0(EDGE_COUNT[3]), 
	.A1(n24), 
	.A0(n12));
   OAI221X1M U35 (.Y(n16), 
	.C0(n21), 
	.B1(n20), 
	.B0(n9), 
	.A1(n10), 
	.A0(n17));
   NOR3X2M U36 (.Y(n21), 
	.C(PRESCALE[0]), 
	.B(PRESCALE[1]), 
	.A(PRESCALE[2]));
   OAI21X2M U37 (.Y(n26), 
	.B0(n20), 
	.A1(n17), 
	.A0(PRESCALE[5]));
   NAND3BX2M U38 (.Y(n20), 
	.C(PRESCALE[5]), 
	.B(n36), 
	.AN(PRESCALE[3]));
   NAND3X2M U39 (.Y(n22), 
	.C(EDGE_COUNT[4]), 
	.B(n37), 
	.A(EDGE_COUNT[3]));
   NAND2X2M U40 (.Y(n24), 
	.B(n36), 
	.A(PRESCALE[3]));
   INVX2M U41 (.Y(n12), 
	.A(EDGE_COUNT[3]));
   NAND2BX2M U42 (.Y(n25), 
	.B(PRESCALE[4]), 
	.AN(PRESCALE[3]));
   INVX2M U43 (.Y(n18), 
	.A(EDGE_COUNT[2]));
   INVX2M U44 (.Y(n13), 
	.A(EDGE_COUNT[1]));
   INVX2M U45 (.Y(n11), 
	.A(EDGE_COUNT[0]));
   INVX2M U46 (.Y(n36), 
	.A(PRESCALE[4]));
   INVX2M U47 (.Y(n19), 
	.A(EDGE_COUNT[4]));
   INVX2M U48 (.Y(n27), 
	.A(BIT_COUNT[0]));
   ADDHX1M U58 (.S(N21), 
	.CO(\add_25/carry[3] ), 
	.B(\add_25/carry[2] ), 
	.A(EDGE_COUNT[2]));
   ADDHX1M U59 (.S(N20), 
	.CO(\add_25/carry[2] ), 
	.B(EDGE_COUNT[0]), 
	.A(EDGE_COUNT[1]));
   ADDHX1M U60 (.S(N22), 
	.CO(\add_25/carry[4] ), 
	.B(\add_25/carry[3] ), 
	.A(EDGE_COUNT[3]));
   CLKXOR2X2M U61 (.Y(N23), 
	.B(EDGE_COUNT[4]), 
	.A(\add_25/carry[4] ));
endmodule

module UART_RX_parity_checker_test_1 (
	CLK, 
	RST, 
	EN, 
	PARITY_TYPE, 
	SAMPLED_BITS, 
	SAMPLED_PARITY_BIT, 
	ERR_RST, 
	PARITY_ERROR, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input EN;
   input PARITY_TYPE;
   input [7:0] SAMPLED_BITS;
   input SAMPLED_PARITY_BIT;
   input ERR_RST;
   output PARITY_ERROR;
   input test_si;
   input test_se;

   // Internal wires
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n2;

   SDFFRQX4M PARITY_ERROR_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(PARITY_ERROR), 
	.D(n10), 
	.CK(CLK));
   NOR2BX2M U4 (.Y(n10), 
	.B(n3), 
	.AN(ERR_RST));
   AOI22X1M U5 (.Y(n3), 
	.B1(n2), 
	.B0(PARITY_ERROR), 
	.A1(n4), 
	.A0(EN));
   XOR3XLM U6 (.Y(n4), 
	.C(n7), 
	.B(n6), 
	.A(n5));
   INVX2M U7 (.Y(n2), 
	.A(EN));
   XOR3XLM U8 (.Y(n6), 
	.C(n9), 
	.B(SAMPLED_BITS[4]), 
	.A(SAMPLED_BITS[5]));
   XNOR2X2M U9 (.Y(n9), 
	.B(SAMPLED_BITS[6]), 
	.A(SAMPLED_BITS[7]));
   CLKXOR2X2M U10 (.Y(n5), 
	.B(PARITY_TYPE), 
	.A(SAMPLED_PARITY_BIT));
   XOR3XLM U11 (.Y(n7), 
	.C(n8), 
	.B(SAMPLED_BITS[0]), 
	.A(SAMPLED_BITS[1]));
   XNOR2X2M U12 (.Y(n8), 
	.B(SAMPLED_BITS[2]), 
	.A(SAMPLED_BITS[3]));
endmodule

module UART_RX_start_checker_test_1 (
	CLK, 
	RST, 
	EN, 
	sampled_bit, 
	glitch_rst, 
	start_glitch, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input EN;
   input sampled_bit;
   input glitch_rst;
   output start_glitch;
   input test_si;
   input test_se;

   // Internal wires
   wire n3;
   wire n4;
   wire n2;

   SDFFRQX2M start_glitch_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(start_glitch), 
	.D(n4), 
	.CK(CLK));
   NOR2BX2M U4 (.Y(n4), 
	.B(n3), 
	.AN(glitch_rst));
   AOI22X1M U5 (.Y(n3), 
	.B1(EN), 
	.B0(sampled_bit), 
	.A1(n2), 
	.A0(start_glitch));
   INVX2M U6 (.Y(n2), 
	.A(EN));
endmodule

module UART_RX_stop_checker_test_1 (
	CLK, 
	RST, 
	EN, 
	sampled_bit, 
	error_rst, 
	stop_error, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input EN;
   input sampled_bit;
   input error_rst;
   output stop_error;
   input test_si;
   input test_se;

   // Internal wires
   wire n3;
   wire n4;
   wire n2;

   SDFFRQX4M stop_error_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(stop_error), 
	.D(n4), 
	.CK(CLK));
   NOR2BX2M U4 (.Y(n4), 
	.B(n3), 
	.AN(error_rst));
   AOI2BB2XLM U5 (.Y(n3), 
	.B1(stop_error), 
	.B0(n2), 
	.A1N(n2), 
	.A0N(sampled_bit));
   INVX2M U6 (.Y(n2), 
	.A(EN));
endmodule

module UART_RX_TOP_test_1 (
	CLK, 
	RST, 
	PAR_EN, 
	PAR_TYP, 
	RX_IN, 
	PRESCALE, 
	DATA_VALID, 
	Stop_Error, 
	Parity_Error, 
	P_DATA, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_PT1_n3);
   input CLK;
   input RST;
   input PAR_EN;
   input PAR_TYP;
   input RX_IN;
   input [5:0] PRESCALE;
   output DATA_VALID;
   output Stop_Error;
   output Parity_Error;
   output [7:0] P_DATA;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_PT1_n3;

   // Internal wires
   wire start_glitch;
   wire start_check_en;
   wire stop_check_en;
   wire par_check_en;
   wire deserializer_en;
   wire counter_en;
   wire sampler_en;
   wire count_rst;
   wire glitch_rst;
   wire par_err_rst;
   wire stop_err_rst;
   wire sampled_bit;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire [3:0] bit_count;
   wire [4:0] edge_count;

   assign test_so1 = start_glitch ;

   UART_RX_FSM_test_1 F1 (.CLK(CLK), 
	.RST(RST), 
	.RX_IN(RX_IN), 
	.PAR_EN(PAR_EN), 
	.START_GLITCH(start_glitch), 
	.STOP_ERR(Stop_Error), 
	.PAR_ERR(Parity_Error), 
	.BIT_COUNT({ bit_count[3],
		bit_count[2],
		bit_count[1],
		bit_count[0] }), 
	.EDGE_COUNT({ edge_count[4],
		edge_count[3],
		edge_count[2],
		edge_count[1],
		edge_count[0] }), 
	.PRESCALE({ PRESCALE[5],
		PRESCALE[4],
		PRESCALE[3],
		PRESCALE[2],
		PRESCALE[1],
		PRESCALE[0] }), 
	.DATA_VALID(DATA_VALID), 
	.COUNT_RST(count_rst), 
	.GLITCH_RST(glitch_rst), 
	.PAR_ERR_RST(par_err_rst), 
	.STOP_ERR_RST(stop_err_rst), 
	.START_CHECK_EN(start_check_en), 
	.STOP_CHECK_EN(stop_check_en), 
	.PAR_CHECK_EN(par_check_en), 
	.DESERIALIZER_EN(deserializer_en), 
	.COUNTER_EN(counter_en), 
	.SAMPLER_EN(sampler_en), 
	.test_si(n4), 
	.test_so(n3), 
	.test_se(test_se));
   UART_RX_data_sampler_test_1 D1 (.CLK(CLK), 
	.RST(RST), 
	.EN(sampler_en), 
	.RX_IN(RX_IN), 
	.sampled_bit(sampled_bit), 
	.test_si(test_si1), 
	.test_so(n6), 
	.test_se(test_se));
   UART_RX_deserializer_test_1 D2 (.CLK(CLK), 
	.RST(RST), 
	.EN(deserializer_en), 
	.sampled_bit(sampled_bit), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_si(n6), 
	.test_so(n5), 
	.test_se(test_se));
   UART_RX_edge_bit_counter_test_1 E1 (.CLK(CLK), 
	.RST(RST), 
	.EN(counter_en), 
	.COUNT_RST(count_rst), 
	.PRESCALE({ PRESCALE[5],
		PRESCALE[4],
		PRESCALE[3],
		PRESCALE[2],
		PRESCALE[1],
		PRESCALE[0] }), 
	.EDGE_COUNT({ edge_count[4],
		edge_count[3],
		edge_count[2],
		edge_count[1],
		edge_count[0] }), 
	.BIT_COUNT({ bit_count[3],
		bit_count[2],
		bit_count[1],
		bit_count[0] }), 
	.test_si(n5), 
	.test_so(n4), 
	.test_se(test_se), 
	.FE_PT1_n3(FE_PT1_n3));
   UART_RX_parity_checker_test_1 P1 (.CLK(CLK), 
	.RST(RST), 
	.EN(par_check_en), 
	.PARITY_TYPE(PAR_TYP), 
	.SAMPLED_BITS({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.SAMPLED_PARITY_BIT(sampled_bit), 
	.ERR_RST(par_err_rst), 
	.PARITY_ERROR(Parity_Error), 
	.test_si(n3), 
	.test_se(test_se));
   UART_RX_start_checker_test_1 S1 (.CLK(CLK), 
	.RST(RST), 
	.EN(start_check_en), 
	.sampled_bit(sampled_bit), 
	.glitch_rst(glitch_rst), 
	.start_glitch(start_glitch), 
	.test_si(Parity_Error), 
	.test_se(test_se));
   UART_RX_stop_checker_test_1 S2 (.CLK(CLK), 
	.RST(RST), 
	.EN(stop_check_en), 
	.sampled_bit(sampled_bit), 
	.error_rst(stop_err_rst), 
	.stop_error(Stop_Error), 
	.test_si(test_si2), 
	.test_se(test_se));
endmodule

module UART_TX_FSM_test_1 (
	CLK, 
	RST, 
	DATA_VALID, 
	PAR_EN, 
	SER_DONE, 
	SER_EN, 
	PAR_CALC_EN, 
	MUX_SELECT, 
	BUSY, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input DATA_VALID;
   input PAR_EN;
   input SER_DONE;
   output SER_EN;
   output PAR_CALC_EN;
   output [2:0] MUX_SELECT;
   output BUSY;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n8;
   wire n9;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n27;
   wire [4:0] current_state;
   wire [4:0] next_state;

   assign test_so = n14 ;

   SDFFRQX2M \current_state_reg[1]  (.SI(n8), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[4]  (.SI(current_state[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[4]), 
	.D(next_state[4]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[2]  (.SI(n15), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(CLK));
   SDFFRQX2M \current_state_reg[3]  (.SI(n13), 
	.SE(test_se), 
	.RN(RST), 
	.Q(current_state[3]), 
	.D(next_state[3]), 
	.CK(CLK));
   SDFFSX1M \current_state_reg[0]  (.SN(RST), 
	.SI(test_si), 
	.SE(test_se), 
	.QN(n8), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   INVX2M U9 (.Y(BUSY), 
	.A(MUX_SELECT[2]));
   NOR2X2M U10 (.Y(MUX_SELECT[2]), 
	.B(SER_EN), 
	.A(MUX_SELECT[0]));
   NAND2X2M U11 (.Y(SER_EN), 
	.B(n19), 
	.A(PAR_CALC_EN));
   NAND3X2M U12 (.Y(n17), 
	.C(n8), 
	.B(n14), 
	.A(n15));
   INVX2M U13 (.Y(n12), 
	.A(n18));
   INVX2M U14 (.Y(n11), 
	.A(n21));
   NOR2X2M U15 (.Y(n22), 
	.B(current_state[3]), 
	.A(current_state[4]));
   NAND4X2M U16 (.Y(n19), 
	.D(n15), 
	.C(n8), 
	.B(current_state[2]), 
	.A(n22));
   NAND3X2M U17 (.Y(PAR_CALC_EN), 
	.C(current_state[1]), 
	.B(n22), 
	.A(n25));
   NOR2X2M U18 (.Y(next_state[4]), 
	.B(n17), 
	.A(n16));
   AOI32X1M U19 (.Y(n16), 
	.B1(n13), 
	.B0(current_state[3]), 
	.A2(SER_DONE), 
	.A1(n27), 
	.A0(n18));
   OAI32X1M U20 (.Y(next_state[0]), 
	.B1(n21), 
	.B0(DATA_VALID), 
	.A2(n11), 
	.A1(SER_EN), 
	.A0(n9));
   INVX2M U21 (.Y(n9), 
	.A(n23));
   NOR2X2M U22 (.Y(n25), 
	.B(current_state[0]), 
	.A(current_state[2]));
   NOR4BX1M U23 (.Y(next_state[3]), 
	.D(n27), 
	.C(n17), 
	.B(n12), 
	.AN(SER_DONE));
   NAND4X2M U24 (.Y(n23), 
	.D(n14), 
	.C(n15), 
	.B(current_state[3]), 
	.A(n25));
   NOR2X2M U25 (.Y(n18), 
	.B(current_state[3]), 
	.A(n13));
   NAND4X2M U26 (.Y(n21), 
	.D(n13), 
	.C(n15), 
	.B(n22), 
	.A(current_state[0]));
   NAND2X2M U27 (.Y(MUX_SELECT[0]), 
	.B(n23), 
	.A(n26));
   NAND4BX1M U28 (.Y(n26), 
	.D(n15), 
	.C(n25), 
	.B(current_state[4]), 
	.AN(current_state[3]));
   OAI21X2M U30 (.Y(next_state[2]), 
	.B0(PAR_CALC_EN), 
	.A1(n19), 
	.A0(SER_DONE));
   INVX2M U31 (.Y(n15), 
	.A(current_state[1]));
   INVX2M U32 (.Y(n13), 
	.A(current_state[2]));
   INVX2M U33 (.Y(n14), 
	.A(current_state[4]));
   INVX2M U34 (.Y(n27), 
	.A(PAR_EN));
   AND2X2M U35 (.Y(next_state[1]), 
	.B(n11), 
	.A(DATA_VALID));
   AOI21X2M U36 (.Y(MUX_SELECT[1]), 
	.B0(n17), 
	.A1(n24), 
	.A0(n12));
   NAND2X2M U37 (.Y(n24), 
	.B(n13), 
	.A(current_state[3]));
endmodule

module UART_TX_Serializer_test_1 (
	CLK, 
	RST, 
	P_DATA, 
	DATA_VALID, 
	EN, 
	S_DATA, 
	DONE, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input [7:0] P_DATA;
   input DATA_VALID;
   input EN;
   output S_DATA;
   output DONE;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire N4;
   wire N5;
   wire N6;
   wire \count[3] ;
   wire N18;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n43;
   wire n44;
   wire [7:0] temp_registers;

   assign test_so = temp_registers[7] ;

   SDFFRQX2M S_DATA_reg (.SI(DONE), 
	.SE(test_se), 
	.RN(RST), 
	.Q(S_DATA), 
	.D(n29), 
	.CK(CLK));
   SDFFRQX2M \temp_registers_reg[5]  (.SI(temp_registers[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(temp_registers[5]), 
	.D(n40), 
	.CK(CLK));
   SDFFRQX2M \temp_registers_reg[1]  (.SI(temp_registers[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(temp_registers[1]), 
	.D(n36), 
	.CK(CLK));
   SDFFRQX2M \temp_registers_reg[7]  (.SI(temp_registers[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(temp_registers[7]), 
	.D(n42), 
	.CK(CLK));
   SDFFRQX2M \temp_registers_reg[3]  (.SI(temp_registers[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(temp_registers[3]), 
	.D(n38), 
	.CK(CLK));
   SDFFRQX2M \temp_registers_reg[6]  (.SI(temp_registers[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(temp_registers[6]), 
	.D(n41), 
	.CK(CLK));
   SDFFRQX2M \temp_registers_reg[2]  (.SI(temp_registers[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(temp_registers[2]), 
	.D(n37), 
	.CK(CLK));
   SDFFRQX2M \temp_registers_reg[4]  (.SI(temp_registers[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(temp_registers[4]), 
	.D(n39), 
	.CK(CLK));
   SDFFRQX2M \temp_registers_reg[0]  (.SI(n19), 
	.SE(test_se), 
	.RN(RST), 
	.Q(temp_registers[0]), 
	.D(n35), 
	.CK(CLK));
   SDFFRQX2M DONE_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(DONE), 
	.D(n30), 
	.CK(CLK));
   SDFFRQX2M \count_reg[3]  (.SI(n18), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\count[3] ), 
	.D(n31), 
	.CK(CLK));
   SDFFRQX2M \count_reg[2]  (.SI(n21), 
	.SE(test_se), 
	.RN(RST), 
	.Q(N6), 
	.D(n32), 
	.CK(CLK));
   SDFFRQX2M \count_reg[1]  (.SI(n17), 
	.SE(test_se), 
	.RN(RST), 
	.Q(N5), 
	.D(n33), 
	.CK(CLK));
   SDFFRQX2M \count_reg[0]  (.SI(S_DATA), 
	.SE(test_se), 
	.RN(RST), 
	.Q(N4), 
	.D(n34), 
	.CK(CLK));
   INVX2M U17 (.Y(n44), 
	.A(EN));
   INVX2M U18 (.Y(n20), 
	.A(n22));
   AOI21X2M U19 (.Y(n27), 
	.B0(n44), 
	.A1(n17), 
	.A0(n19));
   OAI21X2M U20 (.Y(n31), 
	.B0(n23), 
	.A1(n19), 
	.A0(EN));
   INVX2M U21 (.Y(n43), 
	.A(n28));
   OAI32X1M U22 (.Y(n33), 
	.B1(n21), 
	.B0(n27), 
	.A2(n20), 
	.A1(N5), 
	.A0(n17));
   INVX2M U23 (.Y(n21), 
	.A(N5));
   OAI32X1M U24 (.Y(n32), 
	.B1(n18), 
	.B0(n26), 
	.A2(n20), 
	.A1(N6), 
	.A0(n25));
   INVX2M U25 (.Y(n18), 
	.A(N6));
   NAND2X2M U26 (.Y(n25), 
	.B(N4), 
	.A(N5));
   OA21X2M U27 (.Y(n26), 
	.B0(n27), 
	.A1(\count[3] ), 
	.A0(N5));
   NOR2X2M U28 (.Y(n22), 
	.B(\count[3] ), 
	.A(n44));
   OAI22X1M U29 (.Y(n34), 
	.B1(n20), 
	.B0(N4), 
	.A1(n17), 
	.A0(EN));
   NAND4X2M U30 (.Y(n23), 
	.D(n22), 
	.C(N4), 
	.B(N5), 
	.A(N6));
   NAND2X2M U31 (.Y(n28), 
	.B(n44), 
	.A(DATA_VALID));
   INVX2M U32 (.Y(n17), 
	.A(N4));
   INVX2M U33 (.Y(n19), 
	.A(\count[3] ));
   NAND2X2M U34 (.Y(n30), 
	.B(n24), 
	.A(n23));
   OAI21X2M U35 (.Y(n24), 
	.B0(DONE), 
	.A1(n19), 
	.A0(n44));
   AO22X1M U36 (.Y(n29), 
	.B1(n20), 
	.B0(S_DATA), 
	.A1(n22), 
	.A0(N18));
   MX2X2M U37 (.Y(N18), 
	.S0(N6), 
	.B(n15), 
	.A(n16));
   MX4X1M U38 (.Y(n16), 
	.S1(N5), 
	.S0(N4), 
	.D(temp_registers[3]), 
	.C(temp_registers[2]), 
	.B(temp_registers[1]), 
	.A(temp_registers[0]));
   MX4X1M U39 (.Y(n15), 
	.S1(N5), 
	.S0(N4), 
	.D(temp_registers[7]), 
	.C(temp_registers[6]), 
	.B(temp_registers[5]), 
	.A(temp_registers[4]));
   AO22X1M U40 (.Y(n35), 
	.B1(n28), 
	.B0(temp_registers[0]), 
	.A1(n43), 
	.A0(P_DATA[0]));
   AO22X1M U41 (.Y(n36), 
	.B1(n28), 
	.B0(temp_registers[1]), 
	.A1(n43), 
	.A0(P_DATA[1]));
   AO22X1M U42 (.Y(n37), 
	.B1(n28), 
	.B0(temp_registers[2]), 
	.A1(n43), 
	.A0(P_DATA[2]));
   AO22X1M U43 (.Y(n38), 
	.B1(n28), 
	.B0(temp_registers[3]), 
	.A1(n43), 
	.A0(P_DATA[3]));
   AO22X1M U44 (.Y(n39), 
	.B1(n28), 
	.B0(temp_registers[4]), 
	.A1(n43), 
	.A0(P_DATA[4]));
   AO22X1M U45 (.Y(n40), 
	.B1(n28), 
	.B0(temp_registers[5]), 
	.A1(n43), 
	.A0(P_DATA[5]));
   AO22X1M U46 (.Y(n41), 
	.B1(n28), 
	.B0(temp_registers[6]), 
	.A1(n43), 
	.A0(P_DATA[6]));
   AO22X1M U47 (.Y(n42), 
	.B1(n28), 
	.B0(temp_registers[7]), 
	.A1(n43), 
	.A0(P_DATA[7]));
endmodule

module UART_TX_Parity_Calculator_test_1 (
	CLK, 
	RST, 
	DATA, 
	TYPE, 
	EN, 
	PARITY_BIT, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input [7:0] DATA;
   input TYPE;
   input EN;
   output PARITY_BIT;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n8;

   SDFFRQX2M PARITY_BIT_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(PARITY_BIT), 
	.D(n8), 
	.CK(CLK));
   XOR3XLM U2 (.Y(n4), 
	.C(n5), 
	.B(DATA[0]), 
	.A(DATA[1]));
   XNOR2X2M U3 (.Y(n5), 
	.B(DATA[2]), 
	.A(DATA[3]));
   XOR3XLM U4 (.Y(n3), 
	.C(n6), 
	.B(DATA[4]), 
	.A(DATA[5]));
   CLKXOR2X2M U5 (.Y(n6), 
	.B(DATA[6]), 
	.A(DATA[7]));
   OAI2BB2X1M U6 (.Y(n8), 
	.B1(EN), 
	.B0(n1), 
	.A1N(EN), 
	.A0N(PARITY_BIT));
   XOR3XLM U8 (.Y(n1), 
	.C(n4), 
	.B(TYPE), 
	.A(n3));
endmodule

module UART_TX_MUX (
	SELECT, 
	FIRST, 
	LAST, 
	DATA, 
	PARITY, 
	IDLE, 
	OUT);
   input [2:0] SELECT;
   input FIRST;
   input LAST;
   input DATA;
   input PARITY;
   input IDLE;
   output OUT;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire n2;
   wire n3;
   wire n4;
   wire n1;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   INVX2M U1 (.Y(n1), 
	.A(SELECT[0]));
   OAI2BB2X4M U2 (.Y(OUT), 
	.B1(SELECT[2]), 
	.B0(n2), 
	.A1N(HTIE_LTIEHI_NET), 
	.A0N(SELECT[2]));
   AOI2BB2XLM U3 (.Y(n2), 
	.B1(n3), 
	.B0(SELECT[1]), 
	.A1N(n4), 
	.A0N(SELECT[1]));
   AO22X1M U4 (.Y(n3), 
	.B1(SELECT[0]), 
	.B0(PARITY), 
	.A1(n1), 
	.A0(DATA));
   AOI22X1M U5 (.Y(n4), 
	.B1(HTIE_LTIEHI_NET), 
	.B0(SELECT[0]), 
	.A1(n1), 
	.A0(LTIE_LTIELO_NET));
endmodule

module UART_TX_TOP_test_1 (
	clk, 
	rst, 
	parity_enable, 
	parity_type, 
	parallel_data, 
	data_valid, 
	tx_out, 
	busy, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input parity_enable;
   input parity_type;
   input [7:0] parallel_data;
   input data_valid;
   output tx_out;
   output busy;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire flag;
   wire ser_done;
   wire ser_en;
   wire par_calc_en;
   wire ser_data;
   wire parity_bit;
   wire n1;
   wire n3;
   wire n5;
   wire n7;
   wire n9;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n21;
   wire n22;
   wire n23;
   wire [7:0] DATA;
   wire [2:0] sel;

   assign test_so = flag ;

   SDFFRQX2M \DATA_reg[1]  (.SI(DATA[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(DATA[1]), 
	.D(n15), 
	.CK(clk));
   SDFFRQX2M \DATA_reg[5]  (.SI(DATA[4]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(DATA[5]), 
	.D(n7), 
	.CK(clk));
   SDFFRQX2M \DATA_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(DATA[0]), 
	.D(n17), 
	.CK(clk));
   SDFFRQX2M \DATA_reg[4]  (.SI(DATA[3]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(DATA[4]), 
	.D(n9), 
	.CK(clk));
   SDFFRQX2M \DATA_reg[3]  (.SI(DATA[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(DATA[3]), 
	.D(n11), 
	.CK(clk));
   SDFFRQX2M \DATA_reg[2]  (.SI(DATA[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(DATA[2]), 
	.D(n13), 
	.CK(clk));
   SDFFRQX2M \DATA_reg[6]  (.SI(DATA[5]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(DATA[6]), 
	.D(n5), 
	.CK(clk));
   SDFFRQX2M \DATA_reg[7]  (.SI(DATA[6]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(DATA[7]), 
	.D(n3), 
	.CK(clk));
   SDFFRQX2M flag_reg (.SI(n22), 
	.SE(test_se), 
	.RN(rst), 
	.Q(flag), 
	.D(n21), 
	.CK(clk));
   INVX2M U3 (.Y(n21), 
	.A(n1));
   NAND2BX2M U6 (.Y(n1), 
	.B(data_valid), 
	.AN(busy));
   AO22X1M U7 (.Y(n3), 
	.B1(n1), 
	.B0(DATA[7]), 
	.A1(n21), 
	.A0(parallel_data[7]));
   AO22X1M U8 (.Y(n5), 
	.B1(n1), 
	.B0(DATA[6]), 
	.A1(n21), 
	.A0(parallel_data[6]));
   AO22X1M U9 (.Y(n7), 
	.B1(n1), 
	.B0(DATA[5]), 
	.A1(n21), 
	.A0(parallel_data[5]));
   AO22X1M U10 (.Y(n9), 
	.B1(n1), 
	.B0(DATA[4]), 
	.A1(n21), 
	.A0(parallel_data[4]));
   AO22X1M U11 (.Y(n11), 
	.B1(n1), 
	.B0(DATA[3]), 
	.A1(n21), 
	.A0(parallel_data[3]));
   AO22X1M U12 (.Y(n13), 
	.B1(n1), 
	.B0(DATA[2]), 
	.A1(n21), 
	.A0(parallel_data[2]));
   AO22X1M U22 (.Y(n15), 
	.B1(n1), 
	.B0(DATA[1]), 
	.A1(n21), 
	.A0(parallel_data[1]));
   AO22X1M U23 (.Y(n17), 
	.B1(n1), 
	.B0(DATA[0]), 
	.A1(n21), 
	.A0(parallel_data[0]));
   UART_TX_FSM_test_1 F1 (.CLK(clk), 
	.RST(rst), 
	.DATA_VALID(flag), 
	.PAR_EN(parity_enable), 
	.SER_DONE(ser_done), 
	.SER_EN(ser_en), 
	.PAR_CALC_EN(par_calc_en), 
	.MUX_SELECT({ sel[2],
		sel[1],
		sel[0] }), 
	.BUSY(busy), 
	.test_si(DATA[7]), 
	.test_so(n23), 
	.test_se(test_se));
   UART_TX_Serializer_test_1 S1 (.CLK(clk), 
	.RST(rst), 
	.P_DATA({ DATA[7],
		DATA[6],
		DATA[5],
		DATA[4],
		DATA[3],
		DATA[2],
		DATA[1],
		DATA[0] }), 
	.DATA_VALID(flag), 
	.EN(ser_en), 
	.S_DATA(ser_data), 
	.DONE(ser_done), 
	.test_si(parity_bit), 
	.test_so(n22), 
	.test_se(test_se));
   UART_TX_Parity_Calculator_test_1 P1 (.CLK(clk), 
	.RST(rst), 
	.DATA({ DATA[7],
		DATA[6],
		DATA[5],
		DATA[4],
		DATA[3],
		DATA[2],
		DATA[1],
		DATA[0] }), 
	.TYPE(parity_type), 
	.EN(par_calc_en), 
	.PARITY_BIT(parity_bit), 
	.test_si(n23), 
	.test_se(test_se));
   UART_TX_MUX M1 (.SELECT({ sel[2],
		sel[1],
		sel[0] }), 
	.FIRST(1'b0), 
	.LAST(1'b1), 
	.DATA(ser_data), 
	.PARITY(parity_bit), 
	.IDLE(1'b1), 
	.OUT(tx_out));
endmodule

module PULSE_GEN_test_1 (
	CLK, 
	RST, 
	LVL_SIG, 
	PULSE_SIG, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input LVL_SIG;
   output PULSE_SIG;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire pls_flop;
   wire rcv_flop;

   assign test_so = rcv_flop ;

   SDFFRQX2M rcv_flop_reg (.SI(pls_flop), 
	.SE(test_se), 
	.RN(RST), 
	.Q(rcv_flop), 
	.D(LVL_SIG), 
	.CK(CLK));
   SDFFRQX2M pls_flop_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(pls_flop), 
	.D(rcv_flop), 
	.CK(CLK));
   NOR2BX2M U5 (.Y(PULSE_SIG), 
	.B(pls_flop), 
	.AN(rcv_flop));
endmodule

