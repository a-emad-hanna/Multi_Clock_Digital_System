/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Aug 19 03:34:03 2024
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module RST_SYNC_test_0 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
  SDFFRQX1M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module RST_SYNC_test_1 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  SDFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\sync_reg[0] ) );
  SDFFRQX1M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .SI(\sync_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module DATA_SYNC_test_1 ( CLK, RST, unsync_bus, bus_enable, sync_bus, 
        enable_pulse_d, test_si, test_so, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable, test_si, test_se;
  output enable_pulse_d, test_so;
  wire   enable_flop, n1, n4, n6, n8, n10, n12, n14, n16, n18, n22;
  wire   [1:0] sync_reg;
  assign test_so = sync_reg[1];

  SDFFRQX2M enable_flop_reg ( .D(sync_reg[1]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(enable_flop) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_reg_reg[1]  ( .D(sync_reg[0]), .SI(sync_reg[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_reg[1]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n4), .SI(enable_pulse_d), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M enable_pulse_d_reg ( .D(n22), .SI(enable_flop), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(enable_pulse_d) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .SI(sync_bus[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(enable_flop), .B(sync_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n4)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n6)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n8)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n10) );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n12) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n14) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n16) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n18) );
endmodule


module ALU_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n14), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n16), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n17), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n18), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n15), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n14), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n13), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n12), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n18), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n18), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n18), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n18), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n18), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n18), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n17), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n16), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n15), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n14), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n15), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n16), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n15), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n17), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n16), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n17), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n16), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n17), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n17), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n13), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n19) );
  XNOR2X2M U2 ( .A(n19), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n19), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n19), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n19), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n19), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n19), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n19), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n19), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX2M U10 ( .A(b[1]), .Y(n18) );
  NAND2X2M U11 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U12 ( .A(a[5]), .Y(n3) );
  INVX2M U13 ( .A(n19), .Y(n2) );
  NAND2X2M U14 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U15 ( .A(a[4]), .Y(n5) );
  INVX2M U16 ( .A(n19), .Y(n4) );
  NAND2X2M U17 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U18 ( .A(a[3]), .Y(n7) );
  INVX2M U19 ( .A(n19), .Y(n6) );
  NAND2X2M U20 ( .A(n8), .B(n9), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U21 ( .A(a[2]), .Y(n9) );
  INVX2M U22 ( .A(n19), .Y(n8) );
  NAND2X2M U23 ( .A(n6), .B(n10), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U24 ( .A(a[1]), .Y(n10) );
  NAND2X2M U25 ( .A(n4), .B(n11), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U26 ( .A(a[0]), .Y(n11) );
  NAND2X2M U27 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U28 ( .A(a[6]), .Y(n1) );
  INVX2M U29 ( .A(b[6]), .Y(n13) );
  INVX2M U30 ( .A(b[2]), .Y(n17) );
  INVX2M U31 ( .A(b[3]), .Y(n16) );
  INVX2M U32 ( .A(b[4]), .Y(n15) );
  INVX2M U33 ( .A(b[5]), .Y(n14) );
  INVX2M U34 ( .A(b[7]), .Y(n12) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U40 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U41 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U46 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U47 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U52 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U56 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U58 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U59 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U61 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U62 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U63 ( .A(\u_div/CryTmp[7][1] ), .B(n20), .C(n18), .D(n17), .Y(
        quotient[7]) );
  AND3X1M U64 ( .A(n20), .B(n17), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U65 ( .A(\u_div/CryTmp[5][3] ), .B(n20), .Y(quotient[5]) );
  AND2X1M U66 ( .A(n21), .B(n16), .Y(n20) );
  AND2X1M U67 ( .A(\u_div/CryTmp[4][4] ), .B(n21), .Y(quotient[4]) );
  AND3X1M U68 ( .A(n22), .B(n15), .C(n14), .Y(n21) );
  AND3X1M U69 ( .A(n22), .B(n14), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U70 ( .A(\u_div/CryTmp[2][6] ), .B(n22), .Y(quotient[2]) );
  NOR2X1M U71 ( .A(b[6]), .B(b[7]), .Y(n22) );
  AND2X1M U72 ( .A(\u_div/CryTmp[1][7] ), .B(n12), .Y(quotient[1]) );
endmodule


module ALU_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [9:0] carry;

  ADDFX2M U2_5 ( .A(A[5]), .B(n5), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n8), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n3), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n9), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVX2M U1 ( .A(carry[8]), .Y(DIFF[8]) );
  XNOR2X2M U2 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[6]), .Y(n4) );
  INVX2M U4 ( .A(B[1]), .Y(n9) );
  NAND2X2M U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U6 ( .A(A[0]), .Y(n1) );
  INVX2M U7 ( .A(B[0]), .Y(n10) );
  INVX2M U8 ( .A(B[7]), .Y(n3) );
  INVX2M U9 ( .A(B[2]), .Y(n8) );
  INVX2M U10 ( .A(B[3]), .Y(n7) );
  INVX2M U11 ( .A(B[4]), .Y(n6) );
  INVX2M U12 ( .A(B[5]), .Y(n5) );
endmodule


module ALU_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20
;
  assign SUM[6] = A[6];
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  NAND2X2M U2 ( .A(A[7]), .B(B[7]), .Y(n8) );
  AOI21BX2M U3 ( .A0(n11), .A1(A[12]), .B0N(n12), .Y(n1) );
  XNOR2X2M U4 ( .A(A[7]), .B(n2), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n2) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X1M U7 ( .A(n3), .B(n4), .Y(SUM[9]) );
  NOR2X1M U8 ( .A(n5), .B(n6), .Y(n4) );
  CLKXOR2X2M U9 ( .A(n7), .B(n8), .Y(SUM[8]) );
  NAND2BX1M U10 ( .AN(n9), .B(n10), .Y(n7) );
  OAI21X1M U11 ( .A0(A[12]), .A1(n11), .B0(B[12]), .Y(n12) );
  XOR3XLM U12 ( .A(B[12]), .B(A[12]), .C(n11), .Y(SUM[12]) );
  OAI21BX1M U13 ( .A0(n13), .A1(n14), .B0N(n15), .Y(n11) );
  XNOR2X1M U14 ( .A(n14), .B(n16), .Y(SUM[11]) );
  NOR2X1M U15 ( .A(n15), .B(n13), .Y(n16) );
  NOR2X1M U16 ( .A(B[11]), .B(A[11]), .Y(n13) );
  AND2X1M U17 ( .A(B[11]), .B(A[11]), .Y(n15) );
  OA21X1M U18 ( .A0(n17), .A1(n18), .B0(n19), .Y(n14) );
  CLKXOR2X2M U19 ( .A(n20), .B(n18), .Y(SUM[10]) );
  AOI2BB1X1M U20 ( .A0N(n3), .A1N(n6), .B0(n5), .Y(n18) );
  AND2X1M U21 ( .A(B[9]), .B(A[9]), .Y(n5) );
  NOR2X1M U22 ( .A(B[9]), .B(A[9]), .Y(n6) );
  OA21X1M U23 ( .A0(n8), .A1(n9), .B0(n10), .Y(n3) );
  CLKNAND2X2M U24 ( .A(B[8]), .B(A[8]), .Y(n10) );
  NOR2X1M U25 ( .A(B[8]), .B(A[8]), .Y(n9) );
  NAND2BX1M U26 ( .AN(n17), .B(n19), .Y(n20) );
  CLKNAND2X2M U27 ( .A(B[10]), .B(A[10]), .Y(n19) );
  NOR2X1M U28 ( .A(B[10]), .B(A[10]), .Y(n17) );
endmodule


module ALU_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n6), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n4), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  INVX2M U11 ( .A(\SUMB[7][1] ), .Y(n17) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U13 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U18 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U19 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U22 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U23 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U24 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U35 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U36 ( .A(A[1]), .Y(n30) );
  INVX2M U37 ( .A(A[6]), .Y(n25) );
  INVX2M U38 ( .A(A[7]), .Y(n24) );
  INVX2M U39 ( .A(A[0]), .Y(n31) );
  INVX2M U40 ( .A(A[2]), .Y(n29) );
  INVX2M U41 ( .A(A[3]), .Y(n28) );
  INVX2M U42 ( .A(A[4]), .Y(n27) );
  INVX2M U43 ( .A(A[5]), .Y(n26) );
  INVX2M U44 ( .A(B[6]), .Y(n33) );
  INVX2M U45 ( .A(B[1]), .Y(n38) );
  XNOR2X2M U46 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U47 ( .A(B[0]), .Y(n39) );
  INVX2M U48 ( .A(B[2]), .Y(n37) );
  INVX2M U49 ( .A(B[3]), .Y(n36) );
  INVX2M U50 ( .A(B[7]), .Y(n32) );
  INVX2M U51 ( .A(B[5]), .Y(n34) );
  INVX2M U52 ( .A(B[4]), .Y(n35) );
  NOR2X1M U54 ( .A(n24), .B(n32), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n24), .B(n33), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n24), .B(n34), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n24), .B(n35), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n24), .B(n36), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n24), .B(n37), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n24), .B(n38), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n24), .B(n39), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n32), .B(n25), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n33), .B(n25), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n34), .B(n25), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n35), .B(n25), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n36), .B(n25), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n37), .B(n25), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n38), .B(n25), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n39), .B(n25), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n32), .B(n26), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n33), .B(n26), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n34), .B(n26), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n35), .B(n26), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n36), .B(n26), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n37), .B(n26), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n38), .B(n26), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n39), .B(n26), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n32), .B(n27), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n33), .B(n27), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n34), .B(n27), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n35), .B(n27), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n36), .B(n27), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n37), .B(n27), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n38), .B(n27), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n39), .B(n27), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n32), .B(n28), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n33), .B(n28), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n34), .B(n28), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n35), .B(n28), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n36), .B(n28), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n37), .B(n28), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n38), .B(n28), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n39), .B(n28), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n32), .B(n29), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n33), .B(n29), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n34), .B(n29), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n35), .B(n29), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n36), .B(n29), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n37), .B(n29), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n38), .B(n29), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n39), .B(n29), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n32), .B(n30), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n33), .B(n30), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n34), .B(n30), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n35), .B(n30), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n36), .B(n30), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n37), .B(n30), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n38), .B(n30), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n39), .B(n30), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n32), .B(n31), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n33), .B(n31), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n34), .B(n31), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n35), .B(n31), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n36), .B(n31), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n37), .B(n31), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n38), .B(n31), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n39), .B(n31), .Y(PRODUCT[0]) );
  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_test_1 ( CLK, RST, EN, A, B, ALU_FUN, ALU_OUT, OUT_VALID, test_si, 
        test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, EN, test_si, test_se;
  output OUT_VALID;
  wire   N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101,
         N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N124,
         N125, N126, N127, N128, N129, N130, N131, N164, N165, N166, n10, n11,
         n12, n13, n14, n15, n16, n18, n19, n20, n23, n25, n26, n27, n28, n30,
         n31, n36, n37, n38, n39, n40, n41, n42, n43, n45, n46, n47, n48, n49,
         n50, n51, n53, n54, n55, n56, n58, n60, n63, n64, n65, n66, n67, n69,
         n71, n72, n73, n74, n75, n77, n79, n80, n81, n82, n83, n85, n87, n88,
         n89, n90, n91, n93, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n107, n108, n109, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n124, n126, n128, n130, n132, n134, n136,
         n138, n140, n142, n144, n146, n148, n150, n152, n154, n4, n5, n6, n7,
         n8, n9, n17, n21, n22, n24, n29, n32, n33, n34, n35, n44, n52, n57,
         n59, n61, n62, n68, n70, n76, n78, n84, n86, n92, n94, n105, n106,
         n110, n111, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189;

  SDFFRQX2M OUT_VALID_reg ( .D(EN), .SI(ALU_OUT[15]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(OUT_VALID) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(n138), .SI(ALU_OUT[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(n136), .SI(ALU_OUT[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(n134), .SI(ALU_OUT[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(n132), .SI(ALU_OUT[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(n130), .SI(ALU_OUT[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(n128), .SI(ALU_OUT[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(n126), .SI(ALU_OUT[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(n124), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(n152), .SI(ALU_OUT[13]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(n144), .SI(ALU_OUT[9]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(n148), .SI(ALU_OUT[11]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(n154), .SI(ALU_OUT[14]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(n146), .SI(ALU_OUT[10]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(n150), .SI(ALU_OUT[12]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(n142), .SI(ALU_OUT[8]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX1M \ALU_OUT_reg[8]  ( .D(n140), .SI(ALU_OUT[7]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[8]) );
  BUFX2M U4 ( .A(A[1]), .Y(n9) );
  BUFX2M U5 ( .A(A[6]), .Y(n29) );
  INVX2M U8 ( .A(n30), .Y(n167) );
  NOR3X2M U9 ( .A(n45), .B(n171), .C(n177), .Y(n95) );
  NOR2X2M U10 ( .A(n171), .B(n47), .Y(n25) );
  NOR2X2M U11 ( .A(n107), .B(n170), .Y(n41) );
  NAND2X2M U12 ( .A(n95), .B(n174), .Y(n30) );
  INVX2M U13 ( .A(n18), .Y(n170) );
  AND2X2M U14 ( .A(n115), .B(n177), .Y(n14) );
  INVX2M U15 ( .A(n28), .Y(n172) );
  INVX2M U16 ( .A(n51), .Y(n168) );
  INVX2M U17 ( .A(n5), .Y(n169) );
  NOR4X2M U18 ( .A(n107), .B(n171), .C(ALU_FUN[0]), .D(ALU_FUN[3]), .Y(n27) );
  NOR3X2M U19 ( .A(n174), .B(ALU_FUN[2]), .C(n177), .Y(n49) );
  NOR3X2M U20 ( .A(n174), .B(ALU_FUN[0]), .C(n171), .Y(n18) );
  NOR3BX2M U21 ( .AN(N166), .B(n170), .C(n45), .Y(n15) );
  OAI2BB2X1M U22 ( .B0(ALU_FUN[3]), .B1(n45), .A0N(n176), .A1N(n49), .Y(n50)
         );
  NAND2X2M U23 ( .A(ALU_FUN[1]), .B(ALU_FUN[2]), .Y(n107) );
  AOI2BB2XLM U24 ( .B0(n176), .B1(n49), .A0N(ALU_FUN[3]), .A1N(n107), .Y(n47)
         );
  INVX2M U25 ( .A(EN), .Y(n171) );
  NAND3X2M U26 ( .A(n175), .B(n174), .C(EN), .Y(n104) );
  NAND2X2M U27 ( .A(n95), .B(ALU_FUN[3]), .Y(n51) );
  INVX2M U28 ( .A(ALU_FUN[0]), .Y(n177) );
  NAND2X2M U29 ( .A(ALU_FUN[2]), .B(n176), .Y(n45) );
  INVX2M U30 ( .A(ALU_FUN[3]), .Y(n174) );
  INVX2M U31 ( .A(ALU_FUN[1]), .Y(n176) );
  NAND2X2M U32 ( .A(EN), .B(n50), .Y(n28) );
  NOR2X2M U33 ( .A(n104), .B(ALU_FUN[1]), .Y(n115) );
  AND2X2M U34 ( .A(n115), .B(ALU_FUN[0]), .Y(n20) );
  INVX2M U35 ( .A(ALU_FUN[2]), .Y(n175) );
  BUFX2M U36 ( .A(n26), .Y(n5) );
  NOR3X2M U37 ( .A(ALU_FUN[1]), .B(ALU_FUN[2]), .C(n170), .Y(n26) );
  BUFX2M U38 ( .A(n31), .Y(n4) );
  NOR3X2M U39 ( .A(n176), .B(ALU_FUN[0]), .C(n104), .Y(n31) );
  AND4X2M U40 ( .A(N164), .B(n175), .C(n18), .D(ALU_FUN[1]), .Y(n16) );
  NAND4X2M U41 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n126) );
  AOI221XLM U42 ( .A0(n6), .A1(n40), .B0(n41), .B1(n8), .C0(n42), .Y(n39) );
  AOI222X1M U43 ( .A0(EN), .A1(n46), .B0(N90), .B1(n14), .C0(N99), .C1(n20), 
        .Y(n38) );
  AOI222X1M U44 ( .A0(N108), .A1(n4), .B0(n17), .B1(n168), .C0(N125), .C1(n173), .Y(n37) );
  NAND4BX1M U45 ( .AN(n87), .B(n88), .C(n89), .D(n90), .Y(n136) );
  OAI222X1M U46 ( .A0(n91), .A1(n186), .B0(n7), .B1(n93), .C0(n51), .C1(n178), 
        .Y(n87) );
  AOI222X1M U47 ( .A0(n27), .A1(n179), .B0(N130), .B1(n173), .C0(N113), .C1(n4), .Y(n90) );
  AOI222X1M U48 ( .A0(N104), .A1(n20), .B0(n24), .B1(n41), .C0(N95), .C1(n14), 
        .Y(n88) );
  AOI21X2M U49 ( .A0(N106), .A1(n20), .B0(n25), .Y(n112) );
  AOI221XLM U50 ( .A0(n5), .A1(n178), .B0(n32), .B1(n172), .C0(n167), .Y(n108)
         );
  AOI221XLM U51 ( .A0(n32), .A1(n5), .B0(n25), .B1(n178), .C0(n27), .Y(n109)
         );
  AOI221XLM U52 ( .A0(n5), .A1(n183), .B0(n17), .B1(n172), .C0(n167), .Y(n58)
         );
  AOI221XLM U53 ( .A0(n5), .A1(n182), .B0(n21), .B1(n172), .C0(n167), .Y(n67)
         );
  AOI221XLM U54 ( .A0(n5), .A1(n181), .B0(n22), .B1(n172), .C0(n167), .Y(n75)
         );
  AOI221XLM U55 ( .A0(n5), .A1(n180), .B0(n24), .B1(n172), .C0(n167), .Y(n83)
         );
  AOI221XLM U56 ( .A0(n5), .A1(n179), .B0(n29), .B1(n172), .C0(n167), .Y(n91)
         );
  AOI221XLM U57 ( .A0(n17), .A1(n5), .B0(n25), .B1(n183), .C0(n27), .Y(n60) );
  AOI221XLM U58 ( .A0(n21), .A1(n5), .B0(n25), .B1(n182), .C0(n27), .Y(n69) );
  AOI221XLM U59 ( .A0(n22), .A1(n5), .B0(n25), .B1(n181), .C0(n27), .Y(n77) );
  AOI221XLM U60 ( .A0(n24), .A1(n5), .B0(n25), .B1(n180), .C0(n27), .Y(n85) );
  AOI221XLM U61 ( .A0(n29), .A1(n5), .B0(n25), .B1(n179), .C0(n27), .Y(n93) );
  OAI31X1M U62 ( .A0(n47), .A1(n6), .A2(n9), .B0(n48), .Y(n46) );
  AOI33X2M U63 ( .A0(n49), .A1(ALU_FUN[1]), .A2(N165), .B0(n9), .B1(n50), .B2(
        n6), .Y(n48) );
  OAI221X1M U64 ( .A0(n184), .A1(n28), .B0(n8), .B1(n169), .C0(n30), .Y(n19)
         );
  INVX2M U65 ( .A(n33), .Y(n163) );
  INVX2M U66 ( .A(n76), .Y(n165) );
  NAND4BX1M U67 ( .AN(n6), .B(n161), .C(n189), .D(n162), .Y(n102) );
  OAI21BX1M U68 ( .A0(n6), .A1(n43), .B0N(n15), .Y(n42) );
  AOI21X2M U69 ( .A0(n9), .A1(n5), .B0(n27), .Y(n43) );
  OAI21X2M U70 ( .A0(n9), .A1(n169), .B0(n30), .Y(n40) );
  INVX2M U71 ( .A(n160), .Y(N165) );
  INVX2M U72 ( .A(n100), .Y(n173) );
  OAI211X2M U73 ( .A0(n101), .A1(n102), .B0(ALU_FUN[1]), .C0(n103), .Y(n100)
         );
  NAND4X2M U74 ( .A(n188), .B(n187), .C(n186), .D(n185), .Y(n101) );
  NOR2X2M U75 ( .A(n104), .B(n177), .Y(n103) );
  INVX2M U76 ( .A(n23), .Y(n166) );
  AOI221XLM U77 ( .A0(n184), .A1(n25), .B0(n5), .B1(n8), .C0(n27), .Y(n23) );
  INVX2M U78 ( .A(n32), .Y(n178) );
  INVX2M U79 ( .A(n29), .Y(n179) );
  INVX2M U80 ( .A(n21), .Y(n182) );
  INVX2M U81 ( .A(n22), .Y(n181) );
  INVX2M U82 ( .A(n24), .Y(n180) );
  INVX2M U83 ( .A(n7), .Y(n186) );
  INVX2M U84 ( .A(n17), .Y(n183) );
  INVX2M U85 ( .A(n8), .Y(n184) );
  INVX2M U86 ( .A(n9), .Y(n164) );
  AOI222X1M U87 ( .A0(ALU_OUT[0]), .A1(n171), .B0(n27), .B1(n184), .C0(n167), 
        .C1(n8), .Y(n10) );
  AOI222X1M U88 ( .A0(ALU_OUT[1]), .A1(n171), .B0(n27), .B1(n164), .C0(n167), 
        .C1(n9), .Y(n36) );
  AOI22X1M U89 ( .A0(n17), .A1(n167), .B0(ALU_OUT[2]), .B1(n171), .Y(n55) );
  AOI22X1M U90 ( .A0(n21), .A1(n167), .B0(ALU_OUT[3]), .B1(n171), .Y(n65) );
  AOI22X1M U91 ( .A0(n22), .A1(n167), .B0(ALU_OUT[4]), .B1(n171), .Y(n73) );
  AOI22X1M U92 ( .A0(n24), .A1(n167), .B0(ALU_OUT[5]), .B1(n171), .Y(n81) );
  AOI22X1M U93 ( .A0(n29), .A1(n167), .B0(ALU_OUT[6]), .B1(n171), .Y(n89) );
  AOI22X1M U94 ( .A0(n32), .A1(n167), .B0(ALU_OUT[7]), .B1(n171), .Y(n98) );
  NAND4X2M U95 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(n124) );
  AOI211X2M U96 ( .A0(N89), .A1(n14), .B0(n15), .C0(n16), .Y(n13) );
  AOI222X1M U97 ( .A0(B[0]), .A1(n19), .B0(N98), .B1(n20), .C0(n166), .C1(n161), .Y(n12) );
  AOI222X1M U98 ( .A0(N107), .A1(n4), .B0(n9), .B1(n168), .C0(N124), .C1(n173), 
        .Y(n11) );
  NAND2X2M U99 ( .A(n116), .B(n112), .Y(n142) );
  AOI22X1M U100 ( .A0(N116), .A1(n4), .B0(ALU_OUT[9]), .B1(n171), .Y(n116) );
  NAND2X2M U101 ( .A(n117), .B(n112), .Y(n144) );
  AOI22X1M U102 ( .A0(N117), .A1(n4), .B0(ALU_OUT[10]), .B1(n171), .Y(n117) );
  NAND2X2M U103 ( .A(n118), .B(n112), .Y(n146) );
  AOI22X1M U104 ( .A0(N118), .A1(n4), .B0(ALU_OUT[11]), .B1(n171), .Y(n118) );
  NAND2X2M U105 ( .A(n119), .B(n112), .Y(n148) );
  AOI22X1M U106 ( .A0(N119), .A1(n4), .B0(ALU_OUT[12]), .B1(n171), .Y(n119) );
  NAND2X2M U107 ( .A(n120), .B(n112), .Y(n150) );
  AOI22X1M U108 ( .A0(N120), .A1(n4), .B0(ALU_OUT[13]), .B1(n171), .Y(n120) );
  NAND2X2M U109 ( .A(n121), .B(n112), .Y(n152) );
  AOI22X1M U110 ( .A0(N121), .A1(n4), .B0(ALU_OUT[14]), .B1(n171), .Y(n121) );
  NAND2X2M U111 ( .A(n122), .B(n112), .Y(n154) );
  AOI22X1M U112 ( .A0(N122), .A1(n4), .B0(ALU_OUT[15]), .B1(n171), .Y(n122) );
  NAND4BX1M U113 ( .AN(n53), .B(n54), .C(n55), .D(n56), .Y(n128) );
  OAI222X1M U114 ( .A0(n58), .A1(n189), .B0(B[2]), .B1(n60), .C0(n51), .C1(
        n182), .Y(n53) );
  AOI222X1M U115 ( .A0(n27), .A1(n183), .B0(N126), .B1(n173), .C0(N109), .C1(
        n4), .Y(n56) );
  AOI222X1M U116 ( .A0(N100), .A1(n20), .B0(n41), .B1(n9), .C0(N91), .C1(n14), 
        .Y(n54) );
  NAND4BX1M U117 ( .AN(n63), .B(n64), .C(n65), .D(n66), .Y(n130) );
  OAI222X1M U118 ( .A0(n67), .A1(n162), .B0(B[3]), .B1(n69), .C0(n51), .C1(
        n181), .Y(n63) );
  AOI222X1M U119 ( .A0(n27), .A1(n182), .B0(N127), .B1(n173), .C0(N110), .C1(
        n4), .Y(n66) );
  AOI222X1M U120 ( .A0(N101), .A1(n20), .B0(n17), .B1(n41), .C0(N92), .C1(n14), 
        .Y(n64) );
  NAND4BX1M U121 ( .AN(n71), .B(n72), .C(n73), .D(n74), .Y(n132) );
  OAI222X1M U122 ( .A0(n75), .A1(n188), .B0(B[4]), .B1(n77), .C0(n51), .C1(
        n180), .Y(n71) );
  AOI222X1M U123 ( .A0(n27), .A1(n181), .B0(N128), .B1(n173), .C0(N111), .C1(
        n4), .Y(n74) );
  AOI222X1M U124 ( .A0(N102), .A1(n20), .B0(n21), .B1(n41), .C0(N93), .C1(n14), 
        .Y(n72) );
  NAND4BX1M U125 ( .AN(n79), .B(n80), .C(n81), .D(n82), .Y(n134) );
  OAI222X1M U126 ( .A0(n83), .A1(n187), .B0(B[5]), .B1(n85), .C0(n51), .C1(
        n179), .Y(n79) );
  AOI222X1M U127 ( .A0(n27), .A1(n180), .B0(N129), .B1(n173), .C0(N112), .C1(
        n4), .Y(n82) );
  AOI222X1M U128 ( .A0(N103), .A1(n20), .B0(n22), .B1(n41), .C0(N94), .C1(n14), 
        .Y(n80) );
  NAND4BX1M U129 ( .AN(n96), .B(n97), .C(n98), .D(n99), .Y(n138) );
  OAI22X1M U130 ( .A0(n108), .A1(n185), .B0(B[7]), .B1(n109), .Y(n96) );
  AOI222X1M U131 ( .A0(n27), .A1(n178), .B0(N131), .B1(n173), .C0(N114), .C1(
        n4), .Y(n99) );
  AOI222X1M U132 ( .A0(N105), .A1(n20), .B0(n29), .B1(n41), .C0(N96), .C1(n14), 
        .Y(n97) );
  OAI2B11X2M U133 ( .A1N(ALU_OUT[8]), .A0(EN), .B0(n112), .C0(n113), .Y(n140)
         );
  AOI221XLM U134 ( .A0(N115), .A1(n4), .B0(N97), .B1(n14), .C0(n114), .Y(n113)
         );
  NOR4X1M U152 ( .A(ALU_FUN[0]), .B(n171), .C(n107), .D(n178), .Y(n114) );
  BUFX2M U153 ( .A(A[0]), .Y(n8) );
  BUFX2M U154 ( .A(A[7]), .Y(n32) );
  BUFX2M U155 ( .A(A[2]), .Y(n17) );
  BUFX2M U156 ( .A(A[3]), .Y(n21) );
  BUFX2M U157 ( .A(A[4]), .Y(n22) );
  BUFX2M U158 ( .A(A[5]), .Y(n24) );
  INVX2M U159 ( .A(B[7]), .Y(n185) );
  BUFX2M U160 ( .A(B[6]), .Y(n7) );
  INVX2M U161 ( .A(B[4]), .Y(n188) );
  INVX2M U162 ( .A(B[5]), .Y(n187) );
  BUFX2M U163 ( .A(B[1]), .Y(n6) );
  INVX2M U164 ( .A(B[2]), .Y(n189) );
  INVX2M U165 ( .A(B[0]), .Y(n161) );
  INVX2M U166 ( .A(B[3]), .Y(n162) );
  NOR2X1M U167 ( .A(n178), .B(B[7]), .Y(n157) );
  NAND2BX1M U168 ( .AN(B[4]), .B(n22), .Y(n92) );
  NAND2BX1M U169 ( .AN(n22), .B(B[4]), .Y(n52) );
  CLKNAND2X2M U170 ( .A(n92), .B(n52), .Y(n105) );
  NOR2X1M U171 ( .A(n162), .B(n21), .Y(n78) );
  NOR2X1M U172 ( .A(n189), .B(n17), .Y(n44) );
  NOR2X1M U173 ( .A(n161), .B(n8), .Y(n33) );
  CLKNAND2X2M U174 ( .A(n17), .B(n189), .Y(n86) );
  NAND2BX1M U175 ( .AN(n44), .B(n86), .Y(n68) );
  AOI21X1M U176 ( .A0(n33), .A1(n164), .B0(n6), .Y(n34) );
  AOI211X1M U177 ( .A0(n9), .A1(n163), .B0(n68), .C0(n34), .Y(n35) );
  CLKNAND2X2M U178 ( .A(n21), .B(n162), .Y(n84) );
  OAI31X1M U179 ( .A0(n78), .A1(n44), .A2(n35), .B0(n84), .Y(n57) );
  NAND2BX1M U180 ( .AN(n24), .B(B[5]), .Y(n111) );
  OAI211X1M U181 ( .A0(n105), .A1(n57), .B0(n52), .C0(n111), .Y(n59) );
  NAND2BX1M U182 ( .AN(B[5]), .B(n24), .Y(n94) );
  XNOR2X1M U183 ( .A(n29), .B(n7), .Y(n110) );
  AOI32X1M U184 ( .A0(n59), .A1(n94), .A2(n110), .B0(n7), .B1(n179), .Y(n61)
         );
  CLKNAND2X2M U185 ( .A(B[7]), .B(n178), .Y(n158) );
  OAI21X1M U186 ( .A0(n157), .A1(n61), .B0(n158), .Y(N166) );
  CLKNAND2X2M U187 ( .A(n8), .B(n161), .Y(n70) );
  OA21X1M U188 ( .A0(n70), .A1(n164), .B0(n6), .Y(n62) );
  AOI211X1M U189 ( .A0(n70), .A1(n164), .B0(n68), .C0(n62), .Y(n76) );
  AOI31X1M U190 ( .A0(n165), .A1(n86), .A2(n84), .B0(n78), .Y(n106) );
  OAI2B11X1M U191 ( .A1N(n106), .A0(n105), .B0(n94), .C0(n92), .Y(n156) );
  AOI32X1M U192 ( .A0(n156), .A1(n111), .A2(n110), .B0(n29), .B1(n186), .Y(
        n159) );
  AOI2B1X1M U193 ( .A1N(n159), .A0(n158), .B0(n157), .Y(n160) );
  NOR2X1M U194 ( .A(N166), .B(N165), .Y(N164) );
  ALU_DW_div_uns_0 div_41 ( .a({n32, n29, n24, n22, n21, n17, n9, n8}), .b({
        B[7], n7, B[5:2], n6, B[0]}), .quotient({N131, N130, N129, N128, N127, 
        N126, N125, N124}) );
  ALU_DW01_sub_0 sub_35 ( .A({1'b0, n32, n29, n24, n22, n21, n17, n9, n8}), 
        .B({1'b0, B[7], n7, B[5:2], n6, B[0]}), .CI(1'b0), .DIFF({N106, N105, 
        N104, N103, N102, N101, N100, N99, N98}) );
  ALU_DW01_add_0 add_34 ( .A({1'b0, n32, n29, n24, n22, n21, n17, n9, n8}), 
        .B({1'b0, B[7], n7, B[5:2], n6, B[0]}), .CI(1'b0), .SUM({N97, N96, N95, 
        N94, N93, N92, N91, N90, N89}) );
  ALU_DW02_mult_0 mult_36 ( .A({n32, n29, n24, n22, n21, n17, n9, n8}), .B({
        B[7], n7, B[5:2], n6, B[0]}), .TC(1'b0), .PRODUCT({N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, 
        N107}) );
endmodule


module RegFile_test_1 ( CLK, RST, WrData, Address, WrEn, RdEn, RdData, 
        RdData_Valid, REG0, REG1, REG2, REG3, test_si3, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn, test_si3, test_si2, test_si1, test_se;
  output RdData_Valid, test_so2, test_so1;
  wire   N11, N12, N13, N14, \registers[4][7] , \registers[4][6] ,
         \registers[4][5] , \registers[4][4] , \registers[4][3] ,
         \registers[4][2] , \registers[4][1] , \registers[4][0] ,
         \registers[5][7] , \registers[5][6] , \registers[5][5] ,
         \registers[5][4] , \registers[5][3] , \registers[5][2] ,
         \registers[5][1] , \registers[5][0] , \registers[6][7] ,
         \registers[6][6] , \registers[6][5] , \registers[6][4] ,
         \registers[6][3] , \registers[6][2] , \registers[6][1] ,
         \registers[6][0] , \registers[7][7] , \registers[7][6] ,
         \registers[7][5] , \registers[7][4] , \registers[7][3] ,
         \registers[7][2] , \registers[7][1] , \registers[7][0] ,
         \registers[8][7] , \registers[8][6] , \registers[8][5] ,
         \registers[8][4] , \registers[8][3] , \registers[8][2] ,
         \registers[8][1] , \registers[8][0] , \registers[9][7] ,
         \registers[9][6] , \registers[9][5] , \registers[9][4] ,
         \registers[9][3] , \registers[9][2] , \registers[9][1] ,
         \registers[9][0] , \registers[10][7] , \registers[10][6] ,
         \registers[10][5] , \registers[10][4] , \registers[10][3] ,
         \registers[10][2] , \registers[10][1] , \registers[10][0] ,
         \registers[11][7] , \registers[11][6] , \registers[11][5] ,
         \registers[11][4] , \registers[11][3] , \registers[11][2] ,
         \registers[11][1] , \registers[11][0] , \registers[12][7] ,
         \registers[12][6] , \registers[12][5] , \registers[12][4] ,
         \registers[12][3] , \registers[12][2] , \registers[12][1] ,
         \registers[12][0] , \registers[13][7] , \registers[13][6] ,
         \registers[13][5] , \registers[13][4] , \registers[13][3] ,
         \registers[13][2] , \registers[13][1] , \registers[13][0] ,
         \registers[14][7] , \registers[14][6] , \registers[14][5] ,
         \registers[14][4] , \registers[14][3] , \registers[14][2] ,
         \registers[14][1] , \registers[14][0] , \registers[15][7] ,
         \registers[15][6] , \registers[15][5] , \registers[15][4] ,
         \registers[15][3] , \registers[15][2] , \registers[15][1] ,
         \registers[15][0] , N36, N37, N38, N39, N40, N41, N42, N43, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n372, n373,
         n374, n375;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so1 = \registers[14][0] ;
  assign test_so2 = \registers[15][7] ;

  SDFFRQX2M \RdData_reg[7]  ( .D(n187), .SI(RdData[6]), .SE(n374), .CK(CLK), 
        .RN(n342), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n186), .SI(RdData[5]), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n185), .SI(RdData[4]), .SE(n372), .CK(CLK), 
        .RN(n342), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n184), .SI(RdData[3]), .SE(n375), .CK(CLK), 
        .RN(n342), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n183), .SI(RdData[2]), .SE(n374), .CK(CLK), 
        .RN(n342), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n182), .SI(RdData[1]), .SE(n373), .CK(CLK), 
        .RN(n342), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n181), .SI(RdData[0]), .SE(n372), .CK(CLK), 
        .RN(n342), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n180), .SI(RdData_Valid), .SE(n375), .CK(CLK), 
        .RN(n342), .Q(RdData[0]) );
  SDFFRQX2M \registers_reg[5][7]  ( .D(n275), .SI(\registers[5][6] ), .SE(n374), .CK(CLK), .RN(n349), .Q(\registers[5][7] ) );
  SDFFRQX2M \registers_reg[5][6]  ( .D(n274), .SI(\registers[5][5] ), .SE(n373), .CK(CLK), .RN(n349), .Q(\registers[5][6] ) );
  SDFFRQX2M \registers_reg[5][5]  ( .D(n273), .SI(\registers[5][4] ), .SE(n372), .CK(CLK), .RN(n349), .Q(\registers[5][5] ) );
  SDFFRQX2M \registers_reg[5][4]  ( .D(n272), .SI(\registers[5][3] ), .SE(n375), .CK(CLK), .RN(n349), .Q(\registers[5][4] ) );
  SDFFRQX2M \registers_reg[5][3]  ( .D(n271), .SI(\registers[5][2] ), .SE(n374), .CK(CLK), .RN(n348), .Q(\registers[5][3] ) );
  SDFFRQX2M \registers_reg[5][2]  ( .D(n270), .SI(\registers[5][1] ), .SE(n373), .CK(CLK), .RN(n348), .Q(\registers[5][2] ) );
  SDFFRQX2M \registers_reg[5][1]  ( .D(n269), .SI(\registers[5][0] ), .SE(n372), .CK(CLK), .RN(n348), .Q(\registers[5][1] ) );
  SDFFRQX2M \registers_reg[5][0]  ( .D(n268), .SI(\registers[4][7] ), .SE(n375), .CK(CLK), .RN(n348), .Q(\registers[5][0] ) );
  SDFFRQX2M \registers_reg[9][7]  ( .D(n243), .SI(\registers[9][6] ), .SE(n374), .CK(CLK), .RN(n346), .Q(\registers[9][7] ) );
  SDFFRQX2M \registers_reg[9][6]  ( .D(n242), .SI(\registers[9][5] ), .SE(n373), .CK(CLK), .RN(n346), .Q(\registers[9][6] ) );
  SDFFRQX2M \registers_reg[9][5]  ( .D(n241), .SI(\registers[9][4] ), .SE(n372), .CK(CLK), .RN(n346), .Q(\registers[9][5] ) );
  SDFFRQX2M \registers_reg[9][4]  ( .D(n240), .SI(\registers[9][3] ), .SE(n375), .CK(CLK), .RN(n346), .Q(\registers[9][4] ) );
  SDFFRQX2M \registers_reg[9][3]  ( .D(n239), .SI(\registers[9][2] ), .SE(n374), .CK(CLK), .RN(n346), .Q(\registers[9][3] ) );
  SDFFRQX2M \registers_reg[9][2]  ( .D(n238), .SI(\registers[9][1] ), .SE(n373), .CK(CLK), .RN(n346), .Q(\registers[9][2] ) );
  SDFFRQX2M \registers_reg[9][1]  ( .D(n237), .SI(\registers[9][0] ), .SE(n372), .CK(CLK), .RN(n346), .Q(\registers[9][1] ) );
  SDFFRQX2M \registers_reg[9][0]  ( .D(n236), .SI(\registers[8][7] ), .SE(n375), .CK(CLK), .RN(n346), .Q(\registers[9][0] ) );
  SDFFRQX2M \registers_reg[13][7]  ( .D(n211), .SI(\registers[13][6] ), .SE(
        n374), .CK(CLK), .RN(n344), .Q(\registers[13][7] ) );
  SDFFRQX2M \registers_reg[13][6]  ( .D(n210), .SI(\registers[13][5] ), .SE(
        n373), .CK(CLK), .RN(n344), .Q(\registers[13][6] ) );
  SDFFRQX2M \registers_reg[13][5]  ( .D(n209), .SI(\registers[13][4] ), .SE(
        n372), .CK(CLK), .RN(n344), .Q(\registers[13][5] ) );
  SDFFRQX2M \registers_reg[13][4]  ( .D(n208), .SI(\registers[13][3] ), .SE(
        n375), .CK(CLK), .RN(n344), .Q(\registers[13][4] ) );
  SDFFRQX2M \registers_reg[13][3]  ( .D(n207), .SI(\registers[13][2] ), .SE(
        n374), .CK(CLK), .RN(n344), .Q(\registers[13][3] ) );
  SDFFRQX2M \registers_reg[13][2]  ( .D(n206), .SI(\registers[13][1] ), .SE(
        n373), .CK(CLK), .RN(n344), .Q(\registers[13][2] ) );
  SDFFRQX2M \registers_reg[13][1]  ( .D(n205), .SI(\registers[13][0] ), .SE(
        n372), .CK(CLK), .RN(n344), .Q(\registers[13][1] ) );
  SDFFRQX2M \registers_reg[13][0]  ( .D(n204), .SI(\registers[12][7] ), .SE(
        n375), .CK(CLK), .RN(n344), .Q(\registers[13][0] ) );
  SDFFRQX2M \registers_reg[7][7]  ( .D(n259), .SI(\registers[7][6] ), .SE(n374), .CK(CLK), .RN(n348), .Q(\registers[7][7] ) );
  SDFFRQX2M \registers_reg[7][6]  ( .D(n258), .SI(\registers[7][5] ), .SE(n373), .CK(CLK), .RN(n348), .Q(\registers[7][6] ) );
  SDFFRQX2M \registers_reg[7][5]  ( .D(n257), .SI(\registers[7][4] ), .SE(n372), .CK(CLK), .RN(n347), .Q(\registers[7][5] ) );
  SDFFRQX2M \registers_reg[7][4]  ( .D(n256), .SI(\registers[7][3] ), .SE(n375), .CK(CLK), .RN(n347), .Q(\registers[7][4] ) );
  SDFFRQX2M \registers_reg[7][3]  ( .D(n255), .SI(\registers[7][2] ), .SE(n374), .CK(CLK), .RN(n347), .Q(\registers[7][3] ) );
  SDFFRQX2M \registers_reg[7][2]  ( .D(n254), .SI(\registers[7][1] ), .SE(n373), .CK(CLK), .RN(n347), .Q(\registers[7][2] ) );
  SDFFRQX2M \registers_reg[7][1]  ( .D(n253), .SI(\registers[7][0] ), .SE(n372), .CK(CLK), .RN(n347), .Q(\registers[7][1] ) );
  SDFFRQX2M \registers_reg[7][0]  ( .D(n252), .SI(\registers[6][7] ), .SE(n375), .CK(CLK), .RN(n347), .Q(\registers[7][0] ) );
  SDFFRQX2M \registers_reg[11][7]  ( .D(n227), .SI(\registers[11][6] ), .SE(
        n374), .CK(CLK), .RN(n345), .Q(\registers[11][7] ) );
  SDFFRQX2M \registers_reg[11][6]  ( .D(n226), .SI(\registers[11][5] ), .SE(
        n373), .CK(CLK), .RN(n345), .Q(\registers[11][6] ) );
  SDFFRQX2M \registers_reg[11][5]  ( .D(n225), .SI(\registers[11][4] ), .SE(
        n372), .CK(CLK), .RN(n345), .Q(\registers[11][5] ) );
  SDFFRQX2M \registers_reg[11][4]  ( .D(n224), .SI(\registers[11][3] ), .SE(
        n375), .CK(CLK), .RN(n345), .Q(\registers[11][4] ) );
  SDFFRQX2M \registers_reg[11][3]  ( .D(n223), .SI(\registers[11][2] ), .SE(
        n374), .CK(CLK), .RN(n345), .Q(\registers[11][3] ) );
  SDFFRQX2M \registers_reg[11][2]  ( .D(n222), .SI(\registers[11][1] ), .SE(
        n373), .CK(CLK), .RN(n345), .Q(\registers[11][2] ) );
  SDFFRQX2M \registers_reg[11][1]  ( .D(n221), .SI(\registers[11][0] ), .SE(
        n372), .CK(CLK), .RN(n345), .Q(\registers[11][1] ) );
  SDFFRQX2M \registers_reg[11][0]  ( .D(n220), .SI(\registers[10][7] ), .SE(
        n375), .CK(CLK), .RN(n345), .Q(\registers[11][0] ) );
  SDFFRQX2M \registers_reg[15][7]  ( .D(n195), .SI(\registers[15][6] ), .SE(
        n374), .CK(CLK), .RN(n343), .Q(\registers[15][7] ) );
  SDFFRQX2M \registers_reg[15][6]  ( .D(n194), .SI(\registers[15][5] ), .SE(
        n373), .CK(CLK), .RN(n343), .Q(\registers[15][6] ) );
  SDFFRQX2M \registers_reg[15][5]  ( .D(n193), .SI(\registers[15][4] ), .SE(
        n372), .CK(CLK), .RN(n343), .Q(\registers[15][5] ) );
  SDFFRQX2M \registers_reg[15][4]  ( .D(n192), .SI(\registers[15][3] ), .SE(
        n375), .CK(CLK), .RN(n343), .Q(\registers[15][4] ) );
  SDFFRQX2M \registers_reg[15][3]  ( .D(n191), .SI(\registers[15][2] ), .SE(
        n374), .CK(CLK), .RN(n343), .Q(\registers[15][3] ) );
  SDFFRQX2M \registers_reg[15][2]  ( .D(n190), .SI(\registers[15][1] ), .SE(
        n373), .CK(CLK), .RN(n343), .Q(\registers[15][2] ) );
  SDFFRQX2M \registers_reg[15][1]  ( .D(n189), .SI(\registers[15][0] ), .SE(
        n372), .CK(CLK), .RN(n342), .Q(\registers[15][1] ) );
  SDFFRQX2M \registers_reg[15][0]  ( .D(n188), .SI(\registers[14][7] ), .SE(
        n375), .CK(CLK), .RN(n343), .Q(\registers[15][0] ) );
  SDFFRQX2M \registers_reg[6][7]  ( .D(n267), .SI(\registers[6][6] ), .SE(n374), .CK(CLK), .RN(n348), .Q(\registers[6][7] ) );
  SDFFRQX2M \registers_reg[6][6]  ( .D(n266), .SI(\registers[6][5] ), .SE(n373), .CK(CLK), .RN(n348), .Q(\registers[6][6] ) );
  SDFFRQX2M \registers_reg[6][5]  ( .D(n265), .SI(\registers[6][4] ), .SE(n372), .CK(CLK), .RN(n348), .Q(\registers[6][5] ) );
  SDFFRQX2M \registers_reg[6][4]  ( .D(n264), .SI(\registers[6][3] ), .SE(n375), .CK(CLK), .RN(n348), .Q(\registers[6][4] ) );
  SDFFRQX2M \registers_reg[6][3]  ( .D(n263), .SI(\registers[6][2] ), .SE(n374), .CK(CLK), .RN(n348), .Q(\registers[6][3] ) );
  SDFFRQX2M \registers_reg[6][2]  ( .D(n262), .SI(\registers[6][1] ), .SE(n373), .CK(CLK), .RN(n348), .Q(\registers[6][2] ) );
  SDFFRQX2M \registers_reg[6][1]  ( .D(n261), .SI(\registers[6][0] ), .SE(n372), .CK(CLK), .RN(n348), .Q(\registers[6][1] ) );
  SDFFRQX2M \registers_reg[6][0]  ( .D(n260), .SI(\registers[5][7] ), .SE(n375), .CK(CLK), .RN(n348), .Q(\registers[6][0] ) );
  SDFFRQX2M \registers_reg[10][7]  ( .D(n235), .SI(\registers[10][6] ), .SE(
        n374), .CK(CLK), .RN(n346), .Q(\registers[10][7] ) );
  SDFFRQX2M \registers_reg[10][6]  ( .D(n234), .SI(\registers[10][5] ), .SE(
        n373), .CK(CLK), .RN(n346), .Q(\registers[10][6] ) );
  SDFFRQX2M \registers_reg[10][5]  ( .D(n233), .SI(\registers[10][4] ), .SE(
        n372), .CK(CLK), .RN(n346), .Q(\registers[10][5] ) );
  SDFFRQX2M \registers_reg[10][4]  ( .D(n232), .SI(\registers[10][3] ), .SE(
        n375), .CK(CLK), .RN(n346), .Q(\registers[10][4] ) );
  SDFFRQX2M \registers_reg[10][3]  ( .D(n231), .SI(\registers[10][2] ), .SE(
        n374), .CK(CLK), .RN(n346), .Q(\registers[10][3] ) );
  SDFFRQX2M \registers_reg[10][2]  ( .D(n230), .SI(\registers[10][1] ), .SE(
        n373), .CK(CLK), .RN(n345), .Q(\registers[10][2] ) );
  SDFFRQX2M \registers_reg[10][1]  ( .D(n229), .SI(\registers[10][0] ), .SE(
        n372), .CK(CLK), .RN(n345), .Q(\registers[10][1] ) );
  SDFFRQX2M \registers_reg[10][0]  ( .D(n228), .SI(\registers[9][7] ), .SE(
        n375), .CK(CLK), .RN(n345), .Q(\registers[10][0] ) );
  SDFFRQX2M \registers_reg[14][7]  ( .D(n203), .SI(\registers[14][6] ), .SE(
        n374), .CK(CLK), .RN(n344), .Q(\registers[14][7] ) );
  SDFFRQX2M \registers_reg[14][6]  ( .D(n202), .SI(\registers[14][5] ), .SE(
        n373), .CK(CLK), .RN(n343), .Q(\registers[14][6] ) );
  SDFFRQX2M \registers_reg[14][5]  ( .D(n201), .SI(\registers[14][4] ), .SE(
        n372), .CK(CLK), .RN(n343), .Q(\registers[14][5] ) );
  SDFFRQX2M \registers_reg[14][4]  ( .D(n200), .SI(\registers[14][3] ), .SE(
        n375), .CK(CLK), .RN(n343), .Q(\registers[14][4] ) );
  SDFFRQX2M \registers_reg[14][3]  ( .D(n199), .SI(\registers[14][2] ), .SE(
        n374), .CK(CLK), .RN(n343), .Q(\registers[14][3] ) );
  SDFFRQX2M \registers_reg[14][2]  ( .D(n198), .SI(\registers[14][1] ), .SE(
        n373), .CK(CLK), .RN(n343), .Q(\registers[14][2] ) );
  SDFFRQX2M \registers_reg[14][1]  ( .D(n197), .SI(test_si3), .SE(n372), .CK(
        CLK), .RN(n343), .Q(\registers[14][1] ) );
  SDFFRQX2M \registers_reg[14][0]  ( .D(n196), .SI(\registers[13][7] ), .SE(
        n375), .CK(CLK), .RN(n343), .Q(\registers[14][0] ) );
  SDFFRQX2M \registers_reg[4][7]  ( .D(n283), .SI(\registers[4][6] ), .SE(n374), .CK(CLK), .RN(n349), .Q(\registers[4][7] ) );
  SDFFRQX2M \registers_reg[4][6]  ( .D(n282), .SI(\registers[4][5] ), .SE(n373), .CK(CLK), .RN(n349), .Q(\registers[4][6] ) );
  SDFFRQX2M \registers_reg[4][5]  ( .D(n281), .SI(\registers[4][4] ), .SE(n372), .CK(CLK), .RN(n349), .Q(\registers[4][5] ) );
  SDFFRQX2M \registers_reg[4][4]  ( .D(n280), .SI(\registers[4][3] ), .SE(n375), .CK(CLK), .RN(n349), .Q(\registers[4][4] ) );
  SDFFRQX2M \registers_reg[4][3]  ( .D(n279), .SI(\registers[4][2] ), .SE(n374), .CK(CLK), .RN(n349), .Q(\registers[4][3] ) );
  SDFFRQX2M \registers_reg[4][2]  ( .D(n278), .SI(\registers[4][1] ), .SE(n373), .CK(CLK), .RN(n349), .Q(\registers[4][2] ) );
  SDFFRQX2M \registers_reg[4][1]  ( .D(n277), .SI(\registers[4][0] ), .SE(n372), .CK(CLK), .RN(n349), .Q(\registers[4][1] ) );
  SDFFRQX2M \registers_reg[4][0]  ( .D(n276), .SI(REG3[7]), .SE(n375), .CK(CLK), .RN(n349), .Q(\registers[4][0] ) );
  SDFFRQX2M \registers_reg[8][7]  ( .D(n251), .SI(\registers[8][6] ), .SE(n374), .CK(CLK), .RN(n347), .Q(\registers[8][7] ) );
  SDFFRQX2M \registers_reg[8][6]  ( .D(n250), .SI(\registers[8][5] ), .SE(n373), .CK(CLK), .RN(n347), .Q(\registers[8][6] ) );
  SDFFRQX2M \registers_reg[8][5]  ( .D(n249), .SI(\registers[8][4] ), .SE(n372), .CK(CLK), .RN(n347), .Q(\registers[8][5] ) );
  SDFFRQX2M \registers_reg[8][4]  ( .D(n248), .SI(\registers[8][3] ), .SE(n375), .CK(CLK), .RN(n347), .Q(\registers[8][4] ) );
  SDFFRQX2M \registers_reg[8][3]  ( .D(n247), .SI(\registers[8][2] ), .SE(n374), .CK(CLK), .RN(n347), .Q(\registers[8][3] ) );
  SDFFRQX2M \registers_reg[8][2]  ( .D(n246), .SI(\registers[8][1] ), .SE(n373), .CK(CLK), .RN(n347), .Q(\registers[8][2] ) );
  SDFFRQX2M \registers_reg[8][1]  ( .D(n245), .SI(\registers[8][0] ), .SE(n372), .CK(CLK), .RN(n347), .Q(\registers[8][1] ) );
  SDFFRQX2M \registers_reg[8][0]  ( .D(n244), .SI(\registers[7][7] ), .SE(n375), .CK(CLK), .RN(n346), .Q(\registers[8][0] ) );
  SDFFRQX2M \registers_reg[12][7]  ( .D(n219), .SI(\registers[12][6] ), .SE(
        n374), .CK(CLK), .RN(n345), .Q(\registers[12][7] ) );
  SDFFRQX2M \registers_reg[12][6]  ( .D(n218), .SI(\registers[12][5] ), .SE(
        n373), .CK(CLK), .RN(n345), .Q(\registers[12][6] ) );
  SDFFRQX2M \registers_reg[12][5]  ( .D(n217), .SI(\registers[12][4] ), .SE(
        n372), .CK(CLK), .RN(n345), .Q(\registers[12][5] ) );
  SDFFRQX2M \registers_reg[12][4]  ( .D(n216), .SI(\registers[12][3] ), .SE(
        n375), .CK(CLK), .RN(n344), .Q(\registers[12][4] ) );
  SDFFRQX2M \registers_reg[12][3]  ( .D(n215), .SI(\registers[12][2] ), .SE(
        n374), .CK(CLK), .RN(n344), .Q(\registers[12][3] ) );
  SDFFRQX2M \registers_reg[12][2]  ( .D(n214), .SI(\registers[12][1] ), .SE(
        n373), .CK(CLK), .RN(n344), .Q(\registers[12][2] ) );
  SDFFRQX2M \registers_reg[12][1]  ( .D(n213), .SI(\registers[12][0] ), .SE(
        n372), .CK(CLK), .RN(n344), .Q(\registers[12][1] ) );
  SDFFRQX2M \registers_reg[12][0]  ( .D(n212), .SI(\registers[11][7] ), .SE(
        n375), .CK(CLK), .RN(n344), .Q(\registers[12][0] ) );
  SDFFRQX2M \registers_reg[3][0]  ( .D(n284), .SI(REG2[7]), .SE(n374), .CK(CLK), .RN(n349), .Q(REG3[0]) );
  SDFFSQX2M \registers_reg[2][0]  ( .D(n292), .SI(REG1[7]), .SE(test_se), .CK(
        CLK), .SN(n342), .Q(REG2[0]) );
  SDFFRQX2M \registers_reg[1][6]  ( .D(n306), .SI(REG1[5]), .SE(n373), .CK(CLK), .RN(n351), .Q(REG1[6]) );
  SDFFRQX2M \registers_reg[1][1]  ( .D(n301), .SI(REG1[0]), .SE(n372), .CK(CLK), .RN(n350), .Q(REG1[1]) );
  SDFFRQX2M \registers_reg[0][7]  ( .D(n315), .SI(REG0[6]), .SE(n375), .CK(CLK), .RN(n342), .Q(REG0[7]) );
  SDFFRQX2M \registers_reg[0][6]  ( .D(n314), .SI(REG0[5]), .SE(n374), .CK(CLK), .RN(n351), .Q(REG0[6]) );
  SDFFRQX2M \registers_reg[0][5]  ( .D(n313), .SI(REG0[4]), .SE(n373), .CK(CLK), .RN(n351), .Q(REG0[5]) );
  SDFFRQX2M \registers_reg[0][4]  ( .D(n312), .SI(REG0[3]), .SE(n372), .CK(CLK), .RN(n351), .Q(REG0[4]) );
  SDFFRQX2M \registers_reg[0][3]  ( .D(n311), .SI(REG0[2]), .SE(n375), .CK(CLK), .RN(n351), .Q(REG0[3]) );
  SDFFRQX2M \registers_reg[0][2]  ( .D(n310), .SI(REG0[1]), .SE(n374), .CK(CLK), .RN(n351), .Q(REG0[2]) );
  SDFFRQX2M \registers_reg[0][1]  ( .D(n309), .SI(REG0[0]), .SE(n373), .CK(CLK), .RN(n351), .Q(REG0[1]) );
  SDFFRQX2M \registers_reg[0][0]  ( .D(n308), .SI(RdData[7]), .SE(n372), .CK(
        CLK), .RN(n351), .Q(REG0[0]) );
  SDFFRQX2M \registers_reg[2][1]  ( .D(n293), .SI(REG2[0]), .SE(n375), .CK(CLK), .RN(n350), .Q(REG2[1]) );
  SDFFRQX2M \registers_reg[1][5]  ( .D(n305), .SI(REG1[4]), .SE(n374), .CK(CLK), .RN(n351), .Q(REG1[5]) );
  SDFFRQX2M \registers_reg[1][4]  ( .D(n304), .SI(REG1[3]), .SE(n373), .CK(CLK), .RN(n351), .Q(REG1[4]) );
  SDFFRQX2M \registers_reg[1][7]  ( .D(n307), .SI(REG1[6]), .SE(n372), .CK(CLK), .RN(n351), .Q(REG1[7]) );
  SDFFRQX2M \registers_reg[1][3]  ( .D(n303), .SI(REG1[2]), .SE(n375), .CK(CLK), .RN(n351), .Q(REG1[3]) );
  SDFFRQX2M \registers_reg[1][2]  ( .D(n302), .SI(REG1[1]), .SE(n374), .CK(CLK), .RN(n350), .Q(REG1[2]) );
  SDFFRQX2M \registers_reg[1][0]  ( .D(n300), .SI(REG0[7]), .SE(n373), .CK(CLK), .RN(n350), .Q(REG1[0]) );
  SDFFRQX2M RdData_Valid_reg ( .D(n179), .SI(test_si1), .SE(n372), .CK(CLK), 
        .RN(n347), .Q(RdData_Valid) );
  SDFFRQX2M \registers_reg[3][6]  ( .D(n290), .SI(REG3[5]), .SE(n375), .CK(CLK), .RN(n350), .Q(REG3[6]) );
  SDFFRQX2M \registers_reg[3][7]  ( .D(n291), .SI(REG3[6]), .SE(n374), .CK(CLK), .RN(n350), .Q(REG3[7]) );
  SDFFSQX2M \registers_reg[3][5]  ( .D(n289), .SI(REG3[4]), .SE(n372), .CK(CLK), .SN(n342), .Q(REG3[5]) );
  SDFFRQX2M \registers_reg[3][4]  ( .D(n288), .SI(REG3[3]), .SE(n373), .CK(CLK), .RN(n350), .Q(REG3[4]) );
  SDFFRQX2M \registers_reg[3][2]  ( .D(n286), .SI(REG3[1]), .SE(n372), .CK(CLK), .RN(n350), .Q(REG3[2]) );
  SDFFRQX2M \registers_reg[3][3]  ( .D(n287), .SI(REG3[2]), .SE(n375), .CK(CLK), .RN(n350), .Q(REG3[3]) );
  SDFFRQX2M \registers_reg[3][1]  ( .D(n285), .SI(test_si2), .SE(n374), .CK(
        CLK), .RN(n349), .Q(REG3[1]) );
  SDFFSQX2M \registers_reg[2][7]  ( .D(n299), .SI(REG2[6]), .SE(n375), .CK(CLK), .SN(n342), .Q(REG2[7]) );
  SDFFRQX2M \registers_reg[2][3]  ( .D(n295), .SI(REG2[2]), .SE(n373), .CK(CLK), .RN(n350), .Q(REG2[3]) );
  SDFFRQX2M \registers_reg[2][4]  ( .D(n296), .SI(REG2[3]), .SE(n372), .CK(CLK), .RN(n350), .Q(REG2[4]) );
  SDFFRQX2M \registers_reg[2][5]  ( .D(n297), .SI(REG2[4]), .SE(n375), .CK(CLK), .RN(n350), .Q(REG2[5]) );
  SDFFRQX2M \registers_reg[2][6]  ( .D(n298), .SI(REG2[5]), .SE(n374), .CK(CLK), .RN(n350), .Q(REG2[6]) );
  SDFFRQX2M \registers_reg[2][2]  ( .D(n294), .SI(REG2[1]), .SE(n373), .CK(CLK), .RN(n350), .Q(REG2[2]) );
  NOR2X2M U140 ( .A(n367), .B(n336), .Y(n159) );
  NOR2X2M U141 ( .A(n367), .B(n341), .Y(n154) );
  NOR2X2M U142 ( .A(n336), .B(N13), .Y(n165) );
  INVX2M U143 ( .A(WrData[6]), .Y(n365) );
  INVX2M U144 ( .A(WrData[5]), .Y(n364) );
  INVX2M U145 ( .A(WrData[7]), .Y(n366) );
  NOR2X2M U146 ( .A(n341), .B(N13), .Y(n162) );
  INVX2M U147 ( .A(n337), .Y(n338) );
  INVX2M U148 ( .A(n335), .Y(n336) );
  INVX2M U149 ( .A(WrEn), .Y(n358) );
  INVX2M U150 ( .A(n152), .Y(n357) );
  INVX2M U151 ( .A(n337), .Y(n339) );
  BUFX2M U152 ( .A(n340), .Y(n337) );
  BUFX2M U153 ( .A(n341), .Y(n335) );
  NOR2X2M U154 ( .A(n358), .B(RdEn), .Y(n151) );
  NAND2X2M U155 ( .A(n159), .B(n155), .Y(n158) );
  NAND2X2M U156 ( .A(n159), .B(n157), .Y(n160) );
  NAND2X2M U157 ( .A(n157), .B(n154), .Y(n156) );
  NAND2X2M U158 ( .A(n169), .B(n154), .Y(n168) );
  NAND2X2M U159 ( .A(n171), .B(n154), .Y(n170) );
  NAND2X2M U160 ( .A(n169), .B(n159), .Y(n172) );
  NAND2X2M U161 ( .A(n171), .B(n159), .Y(n173) );
  NAND2X2M U162 ( .A(n154), .B(n155), .Y(n153) );
  NAND2X2M U163 ( .A(RdEn), .B(n358), .Y(n152) );
  BUFX2M U164 ( .A(n356), .Y(n343) );
  BUFX2M U165 ( .A(n355), .Y(n344) );
  BUFX2M U166 ( .A(n355), .Y(n345) );
  BUFX2M U167 ( .A(n354), .Y(n346) );
  BUFX2M U168 ( .A(n354), .Y(n347) );
  BUFX2M U169 ( .A(n353), .Y(n348) );
  BUFX2M U170 ( .A(n353), .Y(n349) );
  BUFX2M U171 ( .A(n352), .Y(n350) );
  BUFX2M U172 ( .A(n356), .Y(n342) );
  BUFX2M U173 ( .A(n352), .Y(n351) );
  NAND2X2M U174 ( .A(n169), .B(n162), .Y(n174) );
  NAND2X2M U175 ( .A(n171), .B(n162), .Y(n175) );
  AND2X2M U176 ( .A(n177), .B(N11), .Y(n169) );
  AND2X2M U177 ( .A(n177), .B(n340), .Y(n171) );
  NAND2X2M U178 ( .A(n162), .B(n155), .Y(n161) );
  NAND2X2M U179 ( .A(n162), .B(n157), .Y(n163) );
  NAND2X2M U180 ( .A(n165), .B(n155), .Y(n164) );
  NAND2X2M U181 ( .A(n165), .B(n157), .Y(n167) );
  NAND2X2M U182 ( .A(n169), .B(n165), .Y(n176) );
  NAND2X2M U183 ( .A(n171), .B(n165), .Y(n178) );
  INVX2M U184 ( .A(WrData[0]), .Y(n363) );
  INVX2M U185 ( .A(WrData[1]), .Y(n362) );
  INVX2M U186 ( .A(WrData[2]), .Y(n361) );
  INVX2M U187 ( .A(WrData[3]), .Y(n360) );
  INVX2M U188 ( .A(WrData[4]), .Y(n359) );
  AND2X2M U189 ( .A(n166), .B(N11), .Y(n155) );
  AND2X2M U190 ( .A(n166), .B(n340), .Y(n157) );
  BUFX2M U191 ( .A(RST), .Y(n355) );
  BUFX2M U192 ( .A(RST), .Y(n354) );
  BUFX2M U193 ( .A(RST), .Y(n353) );
  BUFX2M U194 ( .A(RST), .Y(n352) );
  BUFX2M U195 ( .A(RST), .Y(n356) );
  OAI2BB2X1M U196 ( .B0(n364), .B1(n174), .A0N(REG3[5]), .A1N(n174), .Y(n289)
         );
  OAI2BB2X1M U197 ( .B0(n363), .B1(n175), .A0N(REG2[0]), .A1N(n175), .Y(n292)
         );
  OAI2BB2X1M U198 ( .B0(n366), .B1(n175), .A0N(REG2[7]), .A1N(n175), .Y(n299)
         );
  NOR2BX2M U199 ( .AN(n151), .B(N14), .Y(n177) );
  OAI2BB2X1M U200 ( .B0(n153), .B1(n363), .A0N(\registers[15][0] ), .A1N(n153), 
        .Y(n188) );
  OAI2BB2X1M U201 ( .B0(n153), .B1(n362), .A0N(\registers[15][1] ), .A1N(n153), 
        .Y(n189) );
  OAI2BB2X1M U202 ( .B0(n153), .B1(n361), .A0N(\registers[15][2] ), .A1N(n153), 
        .Y(n190) );
  OAI2BB2X1M U203 ( .B0(n153), .B1(n360), .A0N(\registers[15][3] ), .A1N(n153), 
        .Y(n191) );
  OAI2BB2X1M U204 ( .B0(n153), .B1(n359), .A0N(\registers[15][4] ), .A1N(n153), 
        .Y(n192) );
  OAI2BB2X1M U205 ( .B0(n153), .B1(n364), .A0N(\registers[15][5] ), .A1N(n153), 
        .Y(n193) );
  OAI2BB2X1M U206 ( .B0(n153), .B1(n365), .A0N(\registers[15][6] ), .A1N(n153), 
        .Y(n194) );
  OAI2BB2X1M U207 ( .B0(n153), .B1(n366), .A0N(\registers[15][7] ), .A1N(n153), 
        .Y(n195) );
  OAI2BB2X1M U208 ( .B0(n363), .B1(n158), .A0N(\registers[13][0] ), .A1N(n158), 
        .Y(n204) );
  OAI2BB2X1M U209 ( .B0(n362), .B1(n158), .A0N(\registers[13][1] ), .A1N(n158), 
        .Y(n205) );
  OAI2BB2X1M U210 ( .B0(n361), .B1(n158), .A0N(\registers[13][2] ), .A1N(n158), 
        .Y(n206) );
  OAI2BB2X1M U211 ( .B0(n360), .B1(n158), .A0N(\registers[13][3] ), .A1N(n158), 
        .Y(n207) );
  OAI2BB2X1M U212 ( .B0(n359), .B1(n158), .A0N(\registers[13][4] ), .A1N(n158), 
        .Y(n208) );
  OAI2BB2X1M U213 ( .B0(n364), .B1(n158), .A0N(\registers[13][5] ), .A1N(n158), 
        .Y(n209) );
  OAI2BB2X1M U214 ( .B0(n365), .B1(n158), .A0N(\registers[13][6] ), .A1N(n158), 
        .Y(n210) );
  OAI2BB2X1M U215 ( .B0(n366), .B1(n158), .A0N(\registers[13][7] ), .A1N(n158), 
        .Y(n211) );
  OAI2BB2X1M U216 ( .B0(n363), .B1(n160), .A0N(\registers[12][0] ), .A1N(n160), 
        .Y(n212) );
  OAI2BB2X1M U217 ( .B0(n362), .B1(n160), .A0N(\registers[12][1] ), .A1N(n160), 
        .Y(n213) );
  OAI2BB2X1M U218 ( .B0(n361), .B1(n160), .A0N(\registers[12][2] ), .A1N(n160), 
        .Y(n214) );
  OAI2BB2X1M U219 ( .B0(n360), .B1(n160), .A0N(\registers[12][3] ), .A1N(n160), 
        .Y(n215) );
  OAI2BB2X1M U220 ( .B0(n359), .B1(n160), .A0N(\registers[12][4] ), .A1N(n160), 
        .Y(n216) );
  OAI2BB2X1M U221 ( .B0(n364), .B1(n160), .A0N(\registers[12][5] ), .A1N(n160), 
        .Y(n217) );
  OAI2BB2X1M U222 ( .B0(n365), .B1(n160), .A0N(\registers[12][6] ), .A1N(n160), 
        .Y(n218) );
  OAI2BB2X1M U223 ( .B0(n366), .B1(n160), .A0N(\registers[12][7] ), .A1N(n160), 
        .Y(n219) );
  OAI2BB2X1M U224 ( .B0(n363), .B1(n161), .A0N(\registers[11][0] ), .A1N(n161), 
        .Y(n220) );
  OAI2BB2X1M U225 ( .B0(n362), .B1(n161), .A0N(\registers[11][1] ), .A1N(n161), 
        .Y(n221) );
  OAI2BB2X1M U226 ( .B0(n361), .B1(n161), .A0N(\registers[11][2] ), .A1N(n161), 
        .Y(n222) );
  OAI2BB2X1M U227 ( .B0(n360), .B1(n161), .A0N(\registers[11][3] ), .A1N(n161), 
        .Y(n223) );
  OAI2BB2X1M U228 ( .B0(n359), .B1(n161), .A0N(\registers[11][4] ), .A1N(n161), 
        .Y(n224) );
  OAI2BB2X1M U229 ( .B0(n364), .B1(n161), .A0N(\registers[11][5] ), .A1N(n161), 
        .Y(n225) );
  OAI2BB2X1M U230 ( .B0(n365), .B1(n161), .A0N(\registers[11][6] ), .A1N(n161), 
        .Y(n226) );
  OAI2BB2X1M U231 ( .B0(n366), .B1(n161), .A0N(\registers[11][7] ), .A1N(n161), 
        .Y(n227) );
  OAI2BB2X1M U232 ( .B0(n363), .B1(n163), .A0N(\registers[10][0] ), .A1N(n163), 
        .Y(n228) );
  OAI2BB2X1M U233 ( .B0(n362), .B1(n163), .A0N(\registers[10][1] ), .A1N(n163), 
        .Y(n229) );
  OAI2BB2X1M U234 ( .B0(n361), .B1(n163), .A0N(\registers[10][2] ), .A1N(n163), 
        .Y(n230) );
  OAI2BB2X1M U235 ( .B0(n360), .B1(n163), .A0N(\registers[10][3] ), .A1N(n163), 
        .Y(n231) );
  OAI2BB2X1M U236 ( .B0(n359), .B1(n163), .A0N(\registers[10][4] ), .A1N(n163), 
        .Y(n232) );
  OAI2BB2X1M U237 ( .B0(n364), .B1(n163), .A0N(\registers[10][5] ), .A1N(n163), 
        .Y(n233) );
  OAI2BB2X1M U238 ( .B0(n365), .B1(n163), .A0N(\registers[10][6] ), .A1N(n163), 
        .Y(n234) );
  OAI2BB2X1M U239 ( .B0(n366), .B1(n163), .A0N(\registers[10][7] ), .A1N(n163), 
        .Y(n235) );
  OAI2BB2X1M U240 ( .B0(n363), .B1(n164), .A0N(\registers[9][0] ), .A1N(n164), 
        .Y(n236) );
  OAI2BB2X1M U241 ( .B0(n362), .B1(n164), .A0N(\registers[9][1] ), .A1N(n164), 
        .Y(n237) );
  OAI2BB2X1M U242 ( .B0(n361), .B1(n164), .A0N(\registers[9][2] ), .A1N(n164), 
        .Y(n238) );
  OAI2BB2X1M U243 ( .B0(n360), .B1(n164), .A0N(\registers[9][3] ), .A1N(n164), 
        .Y(n239) );
  OAI2BB2X1M U244 ( .B0(n359), .B1(n164), .A0N(\registers[9][4] ), .A1N(n164), 
        .Y(n240) );
  OAI2BB2X1M U245 ( .B0(n364), .B1(n164), .A0N(\registers[9][5] ), .A1N(n164), 
        .Y(n241) );
  OAI2BB2X1M U246 ( .B0(n365), .B1(n164), .A0N(\registers[9][6] ), .A1N(n164), 
        .Y(n242) );
  OAI2BB2X1M U247 ( .B0(n366), .B1(n164), .A0N(\registers[9][7] ), .A1N(n164), 
        .Y(n243) );
  OAI2BB2X1M U248 ( .B0(n363), .B1(n167), .A0N(\registers[8][0] ), .A1N(n167), 
        .Y(n244) );
  OAI2BB2X1M U249 ( .B0(n362), .B1(n167), .A0N(\registers[8][1] ), .A1N(n167), 
        .Y(n245) );
  OAI2BB2X1M U250 ( .B0(n361), .B1(n167), .A0N(\registers[8][2] ), .A1N(n167), 
        .Y(n246) );
  OAI2BB2X1M U251 ( .B0(n360), .B1(n167), .A0N(\registers[8][3] ), .A1N(n167), 
        .Y(n247) );
  OAI2BB2X1M U252 ( .B0(n359), .B1(n167), .A0N(\registers[8][4] ), .A1N(n167), 
        .Y(n248) );
  OAI2BB2X1M U253 ( .B0(n364), .B1(n167), .A0N(\registers[8][5] ), .A1N(n167), 
        .Y(n249) );
  OAI2BB2X1M U254 ( .B0(n365), .B1(n167), .A0N(\registers[8][6] ), .A1N(n167), 
        .Y(n250) );
  OAI2BB2X1M U255 ( .B0(n366), .B1(n167), .A0N(\registers[8][7] ), .A1N(n167), 
        .Y(n251) );
  OAI2BB2X1M U256 ( .B0(n363), .B1(n156), .A0N(\registers[14][0] ), .A1N(n156), 
        .Y(n196) );
  OAI2BB2X1M U257 ( .B0(n362), .B1(n156), .A0N(\registers[14][1] ), .A1N(n156), 
        .Y(n197) );
  OAI2BB2X1M U258 ( .B0(n361), .B1(n156), .A0N(\registers[14][2] ), .A1N(n156), 
        .Y(n198) );
  OAI2BB2X1M U259 ( .B0(n360), .B1(n156), .A0N(\registers[14][3] ), .A1N(n156), 
        .Y(n199) );
  OAI2BB2X1M U260 ( .B0(n359), .B1(n156), .A0N(\registers[14][4] ), .A1N(n156), 
        .Y(n200) );
  OAI2BB2X1M U261 ( .B0(n364), .B1(n156), .A0N(\registers[14][5] ), .A1N(n156), 
        .Y(n201) );
  OAI2BB2X1M U262 ( .B0(n365), .B1(n156), .A0N(\registers[14][6] ), .A1N(n156), 
        .Y(n202) );
  OAI2BB2X1M U263 ( .B0(n366), .B1(n156), .A0N(\registers[14][7] ), .A1N(n156), 
        .Y(n203) );
  OAI2BB2X1M U264 ( .B0(n363), .B1(n168), .A0N(\registers[7][0] ), .A1N(n168), 
        .Y(n252) );
  OAI2BB2X1M U265 ( .B0(n362), .B1(n168), .A0N(\registers[7][1] ), .A1N(n168), 
        .Y(n253) );
  OAI2BB2X1M U266 ( .B0(n361), .B1(n168), .A0N(\registers[7][2] ), .A1N(n168), 
        .Y(n254) );
  OAI2BB2X1M U267 ( .B0(n360), .B1(n168), .A0N(\registers[7][3] ), .A1N(n168), 
        .Y(n255) );
  OAI2BB2X1M U268 ( .B0(n359), .B1(n168), .A0N(\registers[7][4] ), .A1N(n168), 
        .Y(n256) );
  OAI2BB2X1M U269 ( .B0(n364), .B1(n168), .A0N(\registers[7][5] ), .A1N(n168), 
        .Y(n257) );
  OAI2BB2X1M U270 ( .B0(n365), .B1(n168), .A0N(\registers[7][6] ), .A1N(n168), 
        .Y(n258) );
  OAI2BB2X1M U271 ( .B0(n366), .B1(n168), .A0N(\registers[7][7] ), .A1N(n168), 
        .Y(n259) );
  OAI2BB2X1M U272 ( .B0(n363), .B1(n170), .A0N(\registers[6][0] ), .A1N(n170), 
        .Y(n260) );
  OAI2BB2X1M U273 ( .B0(n362), .B1(n170), .A0N(\registers[6][1] ), .A1N(n170), 
        .Y(n261) );
  OAI2BB2X1M U274 ( .B0(n361), .B1(n170), .A0N(\registers[6][2] ), .A1N(n170), 
        .Y(n262) );
  OAI2BB2X1M U275 ( .B0(n360), .B1(n170), .A0N(\registers[6][3] ), .A1N(n170), 
        .Y(n263) );
  OAI2BB2X1M U276 ( .B0(n359), .B1(n170), .A0N(\registers[6][4] ), .A1N(n170), 
        .Y(n264) );
  OAI2BB2X1M U277 ( .B0(n364), .B1(n170), .A0N(\registers[6][5] ), .A1N(n170), 
        .Y(n265) );
  OAI2BB2X1M U278 ( .B0(n365), .B1(n170), .A0N(\registers[6][6] ), .A1N(n170), 
        .Y(n266) );
  OAI2BB2X1M U279 ( .B0(n366), .B1(n170), .A0N(\registers[6][7] ), .A1N(n170), 
        .Y(n267) );
  OAI2BB2X1M U280 ( .B0(n363), .B1(n172), .A0N(\registers[5][0] ), .A1N(n172), 
        .Y(n268) );
  OAI2BB2X1M U281 ( .B0(n362), .B1(n172), .A0N(\registers[5][1] ), .A1N(n172), 
        .Y(n269) );
  OAI2BB2X1M U282 ( .B0(n361), .B1(n172), .A0N(\registers[5][2] ), .A1N(n172), 
        .Y(n270) );
  OAI2BB2X1M U283 ( .B0(n360), .B1(n172), .A0N(\registers[5][3] ), .A1N(n172), 
        .Y(n271) );
  OAI2BB2X1M U284 ( .B0(n359), .B1(n172), .A0N(\registers[5][4] ), .A1N(n172), 
        .Y(n272) );
  OAI2BB2X1M U285 ( .B0(n364), .B1(n172), .A0N(\registers[5][5] ), .A1N(n172), 
        .Y(n273) );
  OAI2BB2X1M U286 ( .B0(n365), .B1(n172), .A0N(\registers[5][6] ), .A1N(n172), 
        .Y(n274) );
  OAI2BB2X1M U287 ( .B0(n366), .B1(n172), .A0N(\registers[5][7] ), .A1N(n172), 
        .Y(n275) );
  OAI2BB2X1M U288 ( .B0(n363), .B1(n173), .A0N(\registers[4][0] ), .A1N(n173), 
        .Y(n276) );
  OAI2BB2X1M U289 ( .B0(n362), .B1(n173), .A0N(\registers[4][1] ), .A1N(n173), 
        .Y(n277) );
  OAI2BB2X1M U290 ( .B0(n361), .B1(n173), .A0N(\registers[4][2] ), .A1N(n173), 
        .Y(n278) );
  OAI2BB2X1M U291 ( .B0(n360), .B1(n173), .A0N(\registers[4][3] ), .A1N(n173), 
        .Y(n279) );
  OAI2BB2X1M U292 ( .B0(n359), .B1(n173), .A0N(\registers[4][4] ), .A1N(n173), 
        .Y(n280) );
  OAI2BB2X1M U293 ( .B0(n364), .B1(n173), .A0N(\registers[4][5] ), .A1N(n173), 
        .Y(n281) );
  OAI2BB2X1M U294 ( .B0(n365), .B1(n173), .A0N(\registers[4][6] ), .A1N(n173), 
        .Y(n282) );
  OAI2BB2X1M U295 ( .B0(n366), .B1(n173), .A0N(\registers[4][7] ), .A1N(n173), 
        .Y(n283) );
  OAI2BB2X1M U296 ( .B0(n363), .B1(n174), .A0N(REG3[0]), .A1N(n174), .Y(n284)
         );
  OAI2BB2X1M U297 ( .B0(n362), .B1(n174), .A0N(REG3[1]), .A1N(n174), .Y(n285)
         );
  OAI2BB2X1M U298 ( .B0(n361), .B1(n174), .A0N(REG3[2]), .A1N(n174), .Y(n286)
         );
  OAI2BB2X1M U299 ( .B0(n360), .B1(n174), .A0N(REG3[3]), .A1N(n174), .Y(n287)
         );
  OAI2BB2X1M U300 ( .B0(n359), .B1(n174), .A0N(REG3[4]), .A1N(n174), .Y(n288)
         );
  OAI2BB2X1M U301 ( .B0(n365), .B1(n174), .A0N(REG3[6]), .A1N(n174), .Y(n290)
         );
  OAI2BB2X1M U302 ( .B0(n366), .B1(n174), .A0N(REG3[7]), .A1N(n174), .Y(n291)
         );
  OAI2BB2X1M U303 ( .B0(n362), .B1(n175), .A0N(REG2[1]), .A1N(n175), .Y(n293)
         );
  OAI2BB2X1M U304 ( .B0(n361), .B1(n175), .A0N(REG2[2]), .A1N(n175), .Y(n294)
         );
  OAI2BB2X1M U305 ( .B0(n360), .B1(n175), .A0N(REG2[3]), .A1N(n175), .Y(n295)
         );
  OAI2BB2X1M U306 ( .B0(n359), .B1(n175), .A0N(REG2[4]), .A1N(n175), .Y(n296)
         );
  OAI2BB2X1M U307 ( .B0(n364), .B1(n175), .A0N(REG2[5]), .A1N(n175), .Y(n297)
         );
  OAI2BB2X1M U308 ( .B0(n365), .B1(n175), .A0N(REG2[6]), .A1N(n175), .Y(n298)
         );
  OAI2BB2X1M U309 ( .B0(n363), .B1(n176), .A0N(REG1[0]), .A1N(n176), .Y(n300)
         );
  OAI2BB2X1M U310 ( .B0(n362), .B1(n176), .A0N(REG1[1]), .A1N(n176), .Y(n301)
         );
  OAI2BB2X1M U311 ( .B0(n361), .B1(n176), .A0N(REG1[2]), .A1N(n176), .Y(n302)
         );
  OAI2BB2X1M U312 ( .B0(n360), .B1(n176), .A0N(REG1[3]), .A1N(n176), .Y(n303)
         );
  OAI2BB2X1M U313 ( .B0(n359), .B1(n176), .A0N(REG1[4]), .A1N(n176), .Y(n304)
         );
  OAI2BB2X1M U314 ( .B0(n364), .B1(n176), .A0N(REG1[5]), .A1N(n176), .Y(n305)
         );
  OAI2BB2X1M U315 ( .B0(n365), .B1(n176), .A0N(REG1[6]), .A1N(n176), .Y(n306)
         );
  OAI2BB2X1M U316 ( .B0(n366), .B1(n176), .A0N(REG1[7]), .A1N(n176), .Y(n307)
         );
  OAI2BB2X1M U317 ( .B0(n363), .B1(n178), .A0N(REG0[0]), .A1N(n178), .Y(n308)
         );
  OAI2BB2X1M U318 ( .B0(n362), .B1(n178), .A0N(REG0[1]), .A1N(n178), .Y(n309)
         );
  OAI2BB2X1M U319 ( .B0(n361), .B1(n178), .A0N(REG0[2]), .A1N(n178), .Y(n310)
         );
  OAI2BB2X1M U320 ( .B0(n360), .B1(n178), .A0N(REG0[3]), .A1N(n178), .Y(n311)
         );
  OAI2BB2X1M U321 ( .B0(n359), .B1(n178), .A0N(REG0[4]), .A1N(n178), .Y(n312)
         );
  OAI2BB2X1M U322 ( .B0(n364), .B1(n178), .A0N(REG0[5]), .A1N(n178), .Y(n313)
         );
  OAI2BB2X1M U323 ( .B0(n365), .B1(n178), .A0N(REG0[6]), .A1N(n178), .Y(n314)
         );
  OAI2BB2X1M U324 ( .B0(n366), .B1(n178), .A0N(REG0[7]), .A1N(n178), .Y(n315)
         );
  MX4X1M U325 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n338), 
        .S1(n336), .Y(n145) );
  MX4X1M U326 ( .A(\registers[4][0] ), .B(\registers[5][0] ), .C(
        \registers[6][0] ), .D(\registers[7][0] ), .S0(N11), .S1(n336), .Y(
        n140) );
  MX4X1M U327 ( .A(\registers[4][1] ), .B(\registers[5][1] ), .C(
        \registers[6][1] ), .D(\registers[7][1] ), .S0(n338), .S1(n336), .Y(
        n144) );
  MX4X1M U328 ( .A(\registers[4][2] ), .B(\registers[5][2] ), .C(
        \registers[6][2] ), .D(\registers[7][2] ), .S0(n338), .S1(N12), .Y(
        n148) );
  MX4X1M U329 ( .A(\registers[4][3] ), .B(\registers[5][3] ), .C(
        \registers[6][3] ), .D(\registers[7][3] ), .S0(n338), .S1(n336), .Y(
        n317) );
  MX4X1M U330 ( .A(\registers[4][4] ), .B(\registers[5][4] ), .C(
        \registers[6][4] ), .D(\registers[7][4] ), .S0(n338), .S1(N12), .Y(
        n321) );
  MX4X1M U331 ( .A(\registers[4][5] ), .B(\registers[5][5] ), .C(
        \registers[6][5] ), .D(\registers[7][5] ), .S0(n339), .S1(N12), .Y(
        n325) );
  MX4X1M U332 ( .A(\registers[4][6] ), .B(\registers[5][6] ), .C(
        \registers[6][6] ), .D(\registers[7][6] ), .S0(n339), .S1(N12), .Y(
        n329) );
  MX4X1M U333 ( .A(\registers[4][7] ), .B(\registers[5][7] ), .C(
        \registers[6][7] ), .D(\registers[7][7] ), .S0(n339), .S1(N12), .Y(
        n333) );
  MX4X1M U334 ( .A(\registers[12][0] ), .B(\registers[13][0] ), .C(
        \registers[14][0] ), .D(\registers[15][0] ), .S0(n339), .S1(n336), .Y(
        n138) );
  MX4X1M U335 ( .A(\registers[12][2] ), .B(\registers[13][2] ), .C(
        \registers[14][2] ), .D(\registers[15][2] ), .S0(n338), .S1(n336), .Y(
        n146) );
  MX4X1M U336 ( .A(\registers[12][3] ), .B(\registers[13][3] ), .C(
        \registers[14][3] ), .D(\registers[15][3] ), .S0(n338), .S1(n336), .Y(
        n150) );
  MX4X1M U337 ( .A(\registers[12][4] ), .B(\registers[13][4] ), .C(
        \registers[14][4] ), .D(\registers[15][4] ), .S0(n338), .S1(n336), .Y(
        n319) );
  MX4X1M U338 ( .A(\registers[12][5] ), .B(\registers[13][5] ), .C(
        \registers[14][5] ), .D(\registers[15][5] ), .S0(n339), .S1(N12), .Y(
        n323) );
  MX4X1M U339 ( .A(\registers[12][6] ), .B(\registers[13][6] ), .C(
        \registers[14][6] ), .D(\registers[15][6] ), .S0(n339), .S1(N12), .Y(
        n327) );
  MX4X1M U340 ( .A(\registers[12][7] ), .B(\registers[13][7] ), .C(
        \registers[14][7] ), .D(\registers[15][7] ), .S0(n339), .S1(N12), .Y(
        n331) );
  AND2X2M U341 ( .A(N14), .B(n151), .Y(n166) );
  AO22X1M U342 ( .A0(N43), .A1(n357), .B0(RdData[0]), .B1(n152), .Y(n180) );
  MX4X1M U343 ( .A(n141), .B(n139), .C(n140), .D(n138), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U344 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(n336), .Y(n141) );
  MX4X1M U345 ( .A(\registers[8][0] ), .B(\registers[9][0] ), .C(
        \registers[10][0] ), .D(\registers[11][0] ), .S0(N11), .S1(n336), .Y(
        n139) );
  AO22X1M U346 ( .A0(N42), .A1(n357), .B0(RdData[1]), .B1(n152), .Y(n181) );
  MX4X1M U347 ( .A(n145), .B(n143), .C(n144), .D(n142), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U348 ( .A(\registers[8][1] ), .B(\registers[9][1] ), .C(
        \registers[10][1] ), .D(\registers[11][1] ), .S0(N11), .S1(n336), .Y(
        n143) );
  MX4X1M U349 ( .A(\registers[12][1] ), .B(\registers[13][1] ), .C(
        \registers[14][1] ), .D(\registers[15][1] ), .S0(n338), .S1(n336), .Y(
        n142) );
  AO22X1M U350 ( .A0(N41), .A1(n357), .B0(RdData[2]), .B1(n152), .Y(n182) );
  MX4X1M U351 ( .A(n149), .B(n147), .C(n148), .D(n146), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U352 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n338), 
        .S1(N12), .Y(n149) );
  MX4X1M U353 ( .A(\registers[8][2] ), .B(\registers[9][2] ), .C(
        \registers[10][2] ), .D(\registers[11][2] ), .S0(n338), .S1(N12), .Y(
        n147) );
  AO22X1M U354 ( .A0(N40), .A1(n357), .B0(RdData[3]), .B1(n152), .Y(n183) );
  MX4X1M U355 ( .A(n318), .B(n316), .C(n317), .D(n150), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U356 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n338), 
        .S1(N12), .Y(n318) );
  MX4X1M U357 ( .A(\registers[8][3] ), .B(\registers[9][3] ), .C(
        \registers[10][3] ), .D(\registers[11][3] ), .S0(n338), .S1(N12), .Y(
        n316) );
  AO22X1M U358 ( .A0(N39), .A1(n357), .B0(RdData[4]), .B1(n152), .Y(n184) );
  MX4X1M U359 ( .A(n322), .B(n320), .C(n321), .D(n319), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U360 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n339), 
        .S1(N12), .Y(n322) );
  MX4X1M U361 ( .A(\registers[8][4] ), .B(\registers[9][4] ), .C(
        \registers[10][4] ), .D(\registers[11][4] ), .S0(n338), .S1(N12), .Y(
        n320) );
  AO22X1M U362 ( .A0(N38), .A1(n357), .B0(RdData[5]), .B1(n152), .Y(n185) );
  MX4X1M U363 ( .A(n326), .B(n324), .C(n325), .D(n323), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U364 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n339), 
        .S1(N12), .Y(n326) );
  MX4X1M U365 ( .A(\registers[8][5] ), .B(\registers[9][5] ), .C(
        \registers[10][5] ), .D(\registers[11][5] ), .S0(n339), .S1(N12), .Y(
        n324) );
  AO22X1M U366 ( .A0(N37), .A1(n357), .B0(RdData[6]), .B1(n152), .Y(n186) );
  MX4X1M U367 ( .A(n330), .B(n328), .C(n329), .D(n327), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U368 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n339), 
        .S1(N12), .Y(n330) );
  MX4X1M U369 ( .A(\registers[8][6] ), .B(\registers[9][6] ), .C(
        \registers[10][6] ), .D(\registers[11][6] ), .S0(n339), .S1(N12), .Y(
        n328) );
  AO22X1M U370 ( .A0(N36), .A1(n357), .B0(RdData[7]), .B1(n152), .Y(n187) );
  MX4X1M U371 ( .A(n334), .B(n332), .C(n333), .D(n331), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U372 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n339), 
        .S1(N12), .Y(n334) );
  MX4X1M U373 ( .A(\registers[8][7] ), .B(\registers[9][7] ), .C(
        \registers[10][7] ), .D(\registers[11][7] ), .S0(n339), .S1(N12), .Y(
        n332) );
  INVX2M U374 ( .A(N12), .Y(n341) );
  AO21XLM U375 ( .A0(RdData_Valid), .A1(n151), .B0(n357), .Y(n179) );
  INVX2M U376 ( .A(N11), .Y(n340) );
  INVX2M U377 ( .A(N13), .Y(n367) );
  DLY1X1M U378 ( .A(test_se), .Y(n372) );
  DLY1X1M U379 ( .A(test_se), .Y(n373) );
  DLY1X1M U380 ( .A(test_se), .Y(n374) );
  DLY1X1M U381 ( .A(test_se), .Y(n375) );
endmodule


module CLK_GATE ( CLK, EN, GATED_CLK );
  input CLK, EN;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module ClkDiv_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module ClkDiv_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n1, n2, n3, n4, n5, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFRQX2M div_clk_reg ( .D(n27), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(div_clk) );
  SDFFSQX2M odd_edge_tog_reg ( .D(n26), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst_n), .Q(odd_edge_tog) );
  SDFFRQX2M \count_reg[6]  ( .D(n28), .SI(count[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[6]) );
  SDFFRQX2M \count_reg[0]  ( .D(n34), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[0]) );
  SDFFRQX2M \count_reg[5]  ( .D(n29), .SI(count[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n30), .SI(count[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n31), .SI(count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n32), .SI(count[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n33), .SI(count[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[1]) );
  INVX2M U5 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  NAND2BX2M U6 ( .AN(n23), .B(i_clk_en), .Y(n16) );
  INVX2M U11 ( .A(i_div_ratio[5]), .Y(n15) );
  MX2X2M U15 ( .A(i_ref_clk), .B(div_clk), .S0(n52), .Y(o_div_clk) );
  NAND2BX1M U16 ( .AN(i_div_ratio[2]), .B(edge_flip_half[0]), .Y(n1) );
  OAI2BB1X1M U17 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U18 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U20 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U21 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U22 ( .A(n3), .B(n15), .Y(n4) );
  OAI21X1M U23 ( .A0(n3), .A1(n15), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U25 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U26 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U27 ( .A0(n16), .A1(count[0]), .B0(N16), .B1(n17), .Y(n34) );
  AO22X1M U28 ( .A0(n16), .A1(count[1]), .B0(N17), .B1(n17), .Y(n33) );
  AO22X1M U29 ( .A0(n16), .A1(count[2]), .B0(N18), .B1(n17), .Y(n32) );
  AO22X1M U30 ( .A0(n16), .A1(count[3]), .B0(N19), .B1(n17), .Y(n31) );
  AO22X1M U31 ( .A0(n16), .A1(count[4]), .B0(N20), .B1(n17), .Y(n30) );
  AO22X1M U32 ( .A0(n16), .A1(count[5]), .B0(N21), .B1(n17), .Y(n29) );
  AO22X1M U33 ( .A0(n16), .A1(count[6]), .B0(N22), .B1(n17), .Y(n28) );
  AND3X1M U34 ( .A(n18), .B(n19), .C(n52), .Y(n17) );
  CLKINVX1M U35 ( .A(n16), .Y(n52) );
  CLKXOR2X2M U36 ( .A(div_clk), .B(n20), .Y(n27) );
  AOI21X1M U37 ( .A0(n19), .A1(n18), .B0(n16), .Y(n20) );
  OR2X1M U38 ( .A(n21), .B(i_div_ratio[0]), .Y(n18) );
  XNOR2X1M U39 ( .A(odd_edge_tog), .B(n22), .Y(n26) );
  OR2X1M U40 ( .A(n19), .B(n16), .Y(n22) );
  NOR4BX1M U41 ( .AN(n24), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n23) );
  NOR4X1M U42 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n24) );
  CLKNAND2X2M U43 ( .A(n25), .B(i_div_ratio[0]), .Y(n19) );
  MXI2X1M U44 ( .A(n35), .B(n21), .S0(odd_edge_tog), .Y(n25) );
  NAND4X1M U45 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n21) );
  NOR4X1M U46 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(n39) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n43) );
  CLKXOR2X2M U48 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n42) );
  CLKXOR2X2M U49 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n41) );
  CLKXOR2X2M U50 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n40) );
  XNOR2X1M U51 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n38) );
  XNOR2X1M U52 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n37) );
  XNOR2X1M U53 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n36) );
  NAND4X1M U54 ( .A(n44), .B(n45), .C(n46), .D(n47), .Y(n35) );
  NOR4X1M U55 ( .A(n48), .B(n49), .C(n50), .D(n51), .Y(n47) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n51) );
  CLKXOR2X2M U57 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n50) );
  CLKXOR2X2M U58 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n49) );
  CLKXOR2X2M U59 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n48) );
  XNOR2X1M U60 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n46) );
  XNOR2X1M U61 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n45) );
  XNOR2X1M U62 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n44) );
  ClkDiv_0_DW01_inc_0 add_48 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module ClkDiv_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  INVX2M U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKXOR2X2M U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module ClkDiv_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n2, n3, n4,
         n5, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;
  assign test_so = odd_edge_tog;

  SDFFRQX2M div_clk_reg ( .D(n61), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(div_clk) );
  SDFFRQX2M \count_reg[6]  ( .D(n60), .SI(count[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[6]) );
  SDFFRQX2M \count_reg[0]  ( .D(n54), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[0]) );
  SDFFRQX2M \count_reg[5]  ( .D(n59), .SI(count[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[5]) );
  SDFFRQX2M \count_reg[4]  ( .D(n58), .SI(count[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[4]) );
  SDFFRQX2M \count_reg[3]  ( .D(n57), .SI(count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[3]) );
  SDFFRQX2M \count_reg[2]  ( .D(n56), .SI(count[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[2]) );
  SDFFRQX2M \count_reg[1]  ( .D(n55), .SI(count[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[1]) );
  SDFFSQX1M odd_edge_tog_reg ( .D(n62), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst_n), .Q(odd_edge_tog) );
  INVX2M U6 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  NAND2BX2M U11 ( .AN(n24), .B(i_clk_en), .Y(n17) );
  INVX2M U15 ( .A(i_div_ratio[5]), .Y(n16) );
  MX2X2M U16 ( .A(i_ref_clk), .B(div_clk), .S0(n53), .Y(o_div_clk) );
  NAND2BX1M U17 ( .AN(i_div_ratio[2]), .B(edge_flip_half[0]), .Y(n2) );
  OAI2BB1X1M U18 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        edge_flip_half[1]) );
  OR2X1M U19 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U20 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(
        edge_flip_half[2]) );
  NOR2X1M U21 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  AO21XLM U22 ( .A0(n3), .A1(i_div_ratio[4]), .B0(n4), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U23 ( .A(n4), .B(n16), .Y(n5) );
  OAI21X1M U24 ( .A0(n4), .A1(n16), .B0(n5), .Y(edge_flip_half[4]) );
  XNOR2X1M U25 ( .A(i_div_ratio[6]), .B(n5), .Y(edge_flip_half[5]) );
  NOR2X1M U26 ( .A(i_div_ratio[6]), .B(n5), .Y(n15) );
  CLKXOR2X2M U27 ( .A(i_div_ratio[7]), .B(n15), .Y(edge_flip_half[6]) );
  AO22X1M U28 ( .A0(n17), .A1(count[0]), .B0(N16), .B1(n18), .Y(n54) );
  AO22X1M U29 ( .A0(n17), .A1(count[1]), .B0(N17), .B1(n18), .Y(n55) );
  AO22X1M U30 ( .A0(n17), .A1(count[2]), .B0(N18), .B1(n18), .Y(n56) );
  AO22X1M U31 ( .A0(n17), .A1(count[3]), .B0(N19), .B1(n18), .Y(n57) );
  AO22X1M U32 ( .A0(n17), .A1(count[4]), .B0(N20), .B1(n18), .Y(n58) );
  AO22X1M U33 ( .A0(n17), .A1(count[5]), .B0(N21), .B1(n18), .Y(n59) );
  AO22X1M U34 ( .A0(n17), .A1(count[6]), .B0(N22), .B1(n18), .Y(n60) );
  AND3X1M U35 ( .A(n19), .B(n20), .C(n53), .Y(n18) );
  CLKINVX1M U36 ( .A(n17), .Y(n53) );
  CLKXOR2X2M U37 ( .A(div_clk), .B(n21), .Y(n61) );
  AOI21X1M U38 ( .A0(n20), .A1(n19), .B0(n17), .Y(n21) );
  OR2X1M U39 ( .A(n22), .B(i_div_ratio[0]), .Y(n19) );
  XNOR2X1M U40 ( .A(odd_edge_tog), .B(n23), .Y(n62) );
  OR2X1M U41 ( .A(n20), .B(n17), .Y(n23) );
  NOR4BX1M U42 ( .AN(n25), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n24) );
  NOR4X1M U43 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n25) );
  CLKNAND2X2M U44 ( .A(n35), .B(i_div_ratio[0]), .Y(n20) );
  MXI2X1M U45 ( .A(n36), .B(n22), .S0(odd_edge_tog), .Y(n35) );
  NAND4X1M U46 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n22) );
  NOR4X1M U47 ( .A(n41), .B(n42), .C(n43), .D(n44), .Y(n40) );
  CLKXOR2X2M U48 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n44) );
  CLKXOR2X2M U49 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n43) );
  CLKXOR2X2M U50 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n42) );
  CLKXOR2X2M U51 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n41) );
  XNOR2X1M U52 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n39) );
  XNOR2X1M U53 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n38) );
  XNOR2X1M U54 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n37) );
  NAND4X1M U55 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n36) );
  NOR4X1M U56 ( .A(n49), .B(n50), .C(n51), .D(n52), .Y(n48) );
  CLKXOR2X2M U57 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n52) );
  CLKXOR2X2M U58 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n51) );
  CLKXOR2X2M U59 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n50) );
  CLKXOR2X2M U60 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n49) );
  XNOR2X1M U61 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n47) );
  XNOR2X1M U62 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n46) );
  XNOR2X1M U63 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n45) );
  ClkDiv_1_DW01_inc_0 add_48 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, ALU_OUT, RdData, RX_P_DATA, OUT_VALID, 
        RX_D_VLD, RdData_Valid, FIFO_FULL, ALU_EN, GATE_EN, ALU_FUN, 
        FIFO_WR_DATA, WrData, Address, WrEn, RdEn, FIFO_W_INC, test_si, 
        test_so, test_se );
  input [15:0] ALU_OUT;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [7:0] FIFO_WR_DATA;
  output [7:0] WrData;
  output [3:0] Address;
  input CLK, RST, OUT_VALID, RX_D_VLD, RdData_Valid, FIFO_FULL, test_si,
         test_se;
  output ALU_EN, GATE_EN, WrEn, RdEn, FIFO_W_INC, test_so;
  wire   n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n1,
         n2, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  assign test_so = current_state[3];

  SDFFSQX2M \Address_reg[2]  ( .D(n81), .SI(Address[1]), .SE(test_se), .CK(CLK), .SN(RST), .Q(Address[2]) );
  SDFFRQX2M \Address_reg[3]  ( .D(n80), .SI(Address[2]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Address[3]) );
  SDFFRQX2M \Address_reg[0]  ( .D(n83), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Address[0]) );
  SDFFRQX2M \Address_reg[1]  ( .D(n82), .SI(Address[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(Address[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(Address[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n18), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .SI(n22), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[3]) );
  NOR4X1M U5 ( .A(n20), .B(n18), .C(n21), .D(n22), .Y(n40) );
  NOR2X2M U12 ( .A(n34), .B(n28), .Y(ALU_EN) );
  NOR2X2M U13 ( .A(n26), .B(n17), .Y(ALU_FUN[1]) );
  NOR2X2M U14 ( .A(n27), .B(n17), .Y(ALU_FUN[0]) );
  NOR2X2M U15 ( .A(n25), .B(n17), .Y(ALU_FUN[2]) );
  NOR2X2M U16 ( .A(n24), .B(n17), .Y(ALU_FUN[3]) );
  NAND2X2M U17 ( .A(n12), .B(n17), .Y(WrEn) );
  INVX2M U18 ( .A(ALU_EN), .Y(n17) );
  INVX2M U19 ( .A(n69), .Y(n12) );
  NOR2X2M U20 ( .A(n19), .B(n40), .Y(n70) );
  INVX2M U21 ( .A(n64), .Y(n14) );
  INVX2M U22 ( .A(n48), .Y(n15) );
  OAI211X2M U23 ( .A0(n28), .A1(n58), .B0(n33), .C0(n35), .Y(n69) );
  INVX2M U24 ( .A(n47), .Y(n19) );
  NOR3BX2M U25 ( .AN(n67), .B(n21), .C(n22), .Y(RdEn) );
  AOI31X2M U26 ( .A0(n41), .A1(n23), .A2(n27), .B0(n51), .Y(n31) );
  NOR2X2M U27 ( .A(n12), .B(n27), .Y(WrData[0]) );
  NOR2X2M U28 ( .A(n12), .B(n26), .Y(WrData[1]) );
  NOR2X2M U29 ( .A(n12), .B(n25), .Y(WrData[2]) );
  NOR2X2M U30 ( .A(n12), .B(n24), .Y(WrData[3]) );
  NOR2X2M U31 ( .A(n12), .B(n23), .Y(WrData[4]) );
  NOR2X2M U32 ( .A(n32), .B(n28), .Y(n64) );
  NAND2X2M U33 ( .A(n66), .B(n68), .Y(n32) );
  NAND4X2M U34 ( .A(n31), .B(n29), .C(n32), .D(n33), .Y(next_state[2]) );
  NAND3X2M U35 ( .A(n14), .B(n54), .C(n62), .Y(n61) );
  AND3X2M U36 ( .A(n67), .B(n22), .C(n21), .Y(n38) );
  NAND3X2M U37 ( .A(n20), .B(n22), .C(n66), .Y(n48) );
  NAND3X2M U38 ( .A(n18), .B(n21), .C(n68), .Y(n35) );
  NAND2X2M U39 ( .A(n29), .B(n30), .Y(next_state[3]) );
  INVX2M U40 ( .A(n62), .Y(n13) );
  NAND2X2M U41 ( .A(n70), .B(n17), .Y(GATE_EN) );
  NOR2X2M U42 ( .A(n22), .B(current_state[1]), .Y(n68) );
  NOR2X2M U43 ( .A(n18), .B(current_state[3]), .Y(n66) );
  INVX2M U44 ( .A(current_state[2]), .Y(n22) );
  NAND3X2M U45 ( .A(n68), .B(n18), .C(current_state[3]), .Y(n34) );
  NAND3X2M U46 ( .A(current_state[3]), .B(n68), .C(current_state[0]), .Y(n47)
         );
  INVX2M U47 ( .A(current_state[0]), .Y(n18) );
  INVX2M U48 ( .A(current_state[3]), .Y(n21) );
  INVX2M U49 ( .A(current_state[1]), .Y(n20) );
  NOR2X2M U50 ( .A(n20), .B(current_state[0]), .Y(n67) );
  NOR2X2M U51 ( .A(FIFO_FULL), .B(n71), .Y(FIFO_W_INC) );
  AOI21BX2M U52 ( .A0(n50), .A1(RdData_Valid), .B0N(n70), .Y(n71) );
  NAND3X2M U53 ( .A(current_state[1]), .B(n22), .C(n66), .Y(n58) );
  AND3X2M U54 ( .A(n67), .B(current_state[3]), .C(n22), .Y(n50) );
  NOR3BX2M U55 ( .AN(n67), .B(n22), .C(current_state[3]), .Y(n51) );
  AOI2B1X1M U56 ( .A1N(n49), .A0(n50), .B0(RdEn), .Y(n30) );
  NOR2BX2M U57 ( .AN(RdData_Valid), .B(FIFO_FULL), .Y(n49) );
  AOI2BB2XLM U58 ( .B0(n40), .B1(FIFO_FULL), .A0N(RX_D_VLD), .A1N(n58), .Y(n42) );
  NAND2X2M U59 ( .A(n51), .B(RX_D_VLD), .Y(n54) );
  NAND3X2M U60 ( .A(current_state[1]), .B(current_state[2]), .C(n66), .Y(n33)
         );
  NAND4X2M U61 ( .A(n31), .B(n30), .C(n42), .D(n43), .Y(next_state[1]) );
  AOI211X2M U62 ( .A0(n44), .A1(n45), .B0(n46), .C0(n38), .Y(n43) );
  NOR2X2M U63 ( .A(n27), .B(n23), .Y(n44) );
  OAI32X1M U64 ( .A0(n1), .A1(FIFO_FULL), .A2(n47), .B0(n28), .B1(n48), .Y(n46) );
  OAI21X2M U65 ( .A0(RX_D_VLD), .A1(n32), .B0(n42), .Y(n57) );
  AND4X2M U66 ( .A(n34), .B(n35), .C(n36), .D(n37), .Y(n29) );
  NAND3X2M U67 ( .A(n41), .B(RX_P_DATA[0]), .C(RX_P_DATA[4]), .Y(n36) );
  AOI222X1M U68 ( .A0(n38), .A1(RX_D_VLD), .B0(n19), .B1(n39), .C0(FIFO_FULL), 
        .C1(n40), .Y(n37) );
  OAI2BB1X2M U69 ( .A0N(RdData[0]), .A1N(n50), .B0(n79), .Y(FIFO_WR_DATA[0])
         );
  AOI22X1M U70 ( .A0(ALU_OUT[8]), .A1(n40), .B0(ALU_OUT[0]), .B1(n19), .Y(n79)
         );
  OAI2BB1X2M U71 ( .A0N(RdData[1]), .A1N(n50), .B0(n78), .Y(FIFO_WR_DATA[1])
         );
  AOI22X1M U72 ( .A0(ALU_OUT[9]), .A1(n40), .B0(ALU_OUT[1]), .B1(n19), .Y(n78)
         );
  OAI2BB1X2M U73 ( .A0N(RdData[2]), .A1N(n50), .B0(n77), .Y(FIFO_WR_DATA[2])
         );
  AOI22X1M U74 ( .A0(ALU_OUT[10]), .A1(n40), .B0(ALU_OUT[2]), .B1(n19), .Y(n77) );
  OAI2BB1X2M U75 ( .A0N(RdData[3]), .A1N(n50), .B0(n76), .Y(FIFO_WR_DATA[3])
         );
  AOI22X1M U76 ( .A0(ALU_OUT[11]), .A1(n40), .B0(ALU_OUT[3]), .B1(n19), .Y(n76) );
  OAI2BB1X2M U77 ( .A0N(RdData[4]), .A1N(n50), .B0(n75), .Y(FIFO_WR_DATA[4])
         );
  AOI22X1M U78 ( .A0(ALU_OUT[12]), .A1(n40), .B0(ALU_OUT[4]), .B1(n19), .Y(n75) );
  OAI2BB1X2M U79 ( .A0N(RdData[5]), .A1N(n50), .B0(n74), .Y(FIFO_WR_DATA[5])
         );
  AOI22X1M U80 ( .A0(ALU_OUT[13]), .A1(n40), .B0(ALU_OUT[5]), .B1(n19), .Y(n74) );
  OAI2BB1X2M U81 ( .A0N(RdData[6]), .A1N(n50), .B0(n73), .Y(FIFO_WR_DATA[6])
         );
  AOI22X1M U82 ( .A0(ALU_OUT[14]), .A1(n40), .B0(ALU_OUT[6]), .B1(n19), .Y(n73) );
  OAI2BB1X2M U83 ( .A0N(RdData[7]), .A1N(n50), .B0(n72), .Y(FIFO_WR_DATA[7])
         );
  AOI22X1M U84 ( .A0(ALU_OUT[15]), .A1(n40), .B0(ALU_OUT[7]), .B1(n19), .Y(n72) );
  NAND3X2M U85 ( .A(n14), .B(n54), .C(n65), .Y(n62) );
  OAI21X2M U86 ( .A0(n38), .A1(n15), .B0(RX_D_VLD), .Y(n65) );
  OAI2BB2X1M U87 ( .B0(n13), .B1(n63), .A0N(Address[0]), .A1N(n13), .Y(n83) );
  AOI21X2M U88 ( .A0(RX_P_DATA[0]), .A1(n54), .B0(n64), .Y(n63) );
  OAI2BB2X1M U89 ( .B0(n26), .B1(n61), .A0N(Address[1]), .A1N(n13), .Y(n82) );
  OAI2BB2X1M U90 ( .B0(n24), .B1(n61), .A0N(Address[3]), .A1N(n13), .Y(n80) );
  OAI2BB2X1M U91 ( .B0(n25), .B1(n61), .A0N(Address[2]), .A1N(n13), .Y(n81) );
  AND2X2M U92 ( .A(RX_P_DATA[5]), .B(n69), .Y(WrData[5]) );
  AND2X2M U93 ( .A(RX_P_DATA[6]), .B(n69), .Y(WrData[6]) );
  AND2X2M U94 ( .A(RX_P_DATA[7]), .B(n69), .Y(WrData[7]) );
  INVX2M U95 ( .A(RX_D_VLD), .Y(n28) );
  NAND4X2M U96 ( .A(n33), .B(n54), .C(n55), .D(n56), .Y(next_state[0]) );
  AOI31X2M U97 ( .A0(n27), .A1(n23), .A2(n45), .B0(n15), .Y(n55) );
  AOI221XLM U98 ( .A0(n19), .A1(n39), .B0(OUT_VALID), .B1(n16), .C0(n57), .Y(
        n56) );
  INVX2M U99 ( .A(n34), .Y(n16) );
  AND4X2M U100 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .C(n52), .D(n53), .Y(n41)
         );
  NOR2X2M U101 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .Y(n52) );
  AND4X2M U102 ( .A(RX_P_DATA[3]), .B(RX_D_VLD), .C(RX_P_DATA[7]), .D(n60), 
        .Y(n53) );
  NOR4X1M U103 ( .A(current_state[3]), .B(current_state[2]), .C(
        current_state[1]), .D(current_state[0]), .Y(n60) );
  AND4X2M U104 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .C(n59), .D(n53), .Y(n45)
         );
  NOR2X2M U105 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .Y(n59) );
  INVX2M U106 ( .A(RX_P_DATA[0]), .Y(n27) );
  INVX2M U107 ( .A(RX_P_DATA[2]), .Y(n25) );
  INVX2M U108 ( .A(RX_P_DATA[1]), .Y(n26) );
  INVX2M U109 ( .A(RX_P_DATA[4]), .Y(n23) );
  INVX2M U110 ( .A(RX_P_DATA[3]), .Y(n24) );
  NAND2BX2M U111 ( .AN(FIFO_FULL), .B(n1), .Y(n39) );
  AND2X2M U112 ( .A(n11), .B(n2), .Y(n1) );
  NOR4X1M U113 ( .A(ALU_OUT[13]), .B(ALU_OUT[12]), .C(ALU_OUT[11]), .D(
        ALU_OUT[10]), .Y(n11) );
  NOR4X1M U114 ( .A(ALU_OUT[9]), .B(ALU_OUT[8]), .C(ALU_OUT[15]), .D(
        ALU_OUT[14]), .Y(n2) );
endmodule


module FIFO_DF_SYNC_test_1 ( CLK, RST, in, out, test_si, test_se );
  input [3:0] in;
  output [3:0] out;
  input CLK, RST, test_si, test_se;

  wire   [3:0] Q1;

  SDFFRQX2M \out_reg[3]  ( .D(Q1[3]), .SI(out[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(out[3]) );
  SDFFRQX2M \out_reg[2]  ( .D(Q1[2]), .SI(out[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(out[2]) );
  SDFFRQX2M \out_reg[1]  ( .D(Q1[1]), .SI(out[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(out[1]) );
  SDFFRQX2M \out_reg[0]  ( .D(Q1[0]), .SI(Q1[3]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(out[0]) );
  SDFFRQX2M \Q1_reg[3]  ( .D(in[3]), .SI(Q1[2]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Q1[3]) );
  SDFFRQX2M \Q1_reg[2]  ( .D(in[2]), .SI(Q1[1]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Q1[2]) );
  SDFFRQX2M \Q1_reg[1]  ( .D(in[1]), .SI(Q1[0]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Q1[1]) );
  SDFFRQX2M \Q1_reg[0]  ( .D(in[0]), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Q1[0]) );
endmodule


module FIFO_DF_SYNC_test_0 ( CLK, RST, in, out, test_se );
  input [3:0] in;
  output [3:0] out;
  input CLK, RST, test_se;

  wire   [3:0] Q1;

  SDFFRQX2M \out_reg[3]  ( .D(Q1[3]), .SI(out[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(out[3]) );
  SDFFRQX2M \out_reg[2]  ( .D(Q1[2]), .SI(out[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(out[2]) );
  SDFFRQX2M \out_reg[1]  ( .D(Q1[1]), .SI(out[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(out[1]) );
  SDFFRQX2M \out_reg[0]  ( .D(Q1[0]), .SI(Q1[3]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(out[0]) );
  SDFFRQX2M \Q1_reg[3]  ( .D(in[3]), .SI(Q1[2]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Q1[3]) );
  SDFFRQX2M \Q1_reg[2]  ( .D(in[2]), .SI(Q1[1]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Q1[2]) );
  SDFFRQX2M \Q1_reg[1]  ( .D(in[1]), .SI(Q1[0]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Q1[1]) );
  SDFFRQX2M \Q1_reg[0]  ( .D(in[0]), .SI(in[3]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(Q1[0]) );
endmodule


module FIFO_MEM_CNTRL_test_1 ( wclk, wfull, winc, waddr, raddr, wdata, rdata, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wfull, winc, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N9, N10, N11, \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , \mem[1][7] ,
         \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] ,
         \mem[1][1] , \mem[1][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] ,
         \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] ,
         \mem[3][7] , \mem[3][6] , \mem[3][5] , \mem[3][4] , \mem[3][3] ,
         \mem[3][2] , \mem[3][1] , \mem[3][0] , \mem[4][7] , \mem[4][6] ,
         \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] , \mem[4][1] ,
         \mem[4][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] ,
         \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n66, n67, n68, n69, n70, n71, n72, n73, n74, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n176, n177, n178;
  assign N9 = raddr[0];
  assign N10 = raddr[1];
  assign N11 = raddr[2];
  assign test_so2 = \mem[7][7] ;
  assign test_so1 = \mem[7][2] ;

  SDFFQX2M \mem_reg[1][7]  ( .D(n141), .SI(\mem[1][6] ), .SE(n178), .CK(wclk), 
        .Q(\mem[1][7] ) );
  SDFFQX2M \mem_reg[1][6]  ( .D(n140), .SI(\mem[1][5] ), .SE(n177), .CK(wclk), 
        .Q(\mem[1][6] ) );
  SDFFQX2M \mem_reg[1][5]  ( .D(n139), .SI(\mem[1][4] ), .SE(n176), .CK(wclk), 
        .Q(\mem[1][5] ) );
  SDFFQX2M \mem_reg[1][4]  ( .D(n138), .SI(\mem[1][3] ), .SE(n178), .CK(wclk), 
        .Q(\mem[1][4] ) );
  SDFFQX2M \mem_reg[1][3]  ( .D(n137), .SI(\mem[1][2] ), .SE(n177), .CK(wclk), 
        .Q(\mem[1][3] ) );
  SDFFQX2M \mem_reg[1][2]  ( .D(n136), .SI(\mem[1][1] ), .SE(n176), .CK(wclk), 
        .Q(\mem[1][2] ) );
  SDFFQX2M \mem_reg[1][1]  ( .D(n135), .SI(\mem[1][0] ), .SE(n178), .CK(wclk), 
        .Q(\mem[1][1] ) );
  SDFFQX2M \mem_reg[1][0]  ( .D(n134), .SI(\mem[0][7] ), .SE(n177), .CK(wclk), 
        .Q(\mem[1][0] ) );
  SDFFQX2M \mem_reg[5][7]  ( .D(n109), .SI(\mem[5][6] ), .SE(n176), .CK(wclk), 
        .Q(\mem[5][7] ) );
  SDFFQX2M \mem_reg[5][6]  ( .D(n108), .SI(\mem[5][5] ), .SE(n178), .CK(wclk), 
        .Q(\mem[5][6] ) );
  SDFFQX2M \mem_reg[5][5]  ( .D(n107), .SI(\mem[5][4] ), .SE(n177), .CK(wclk), 
        .Q(\mem[5][5] ) );
  SDFFQX2M \mem_reg[5][4]  ( .D(n106), .SI(\mem[5][3] ), .SE(n176), .CK(wclk), 
        .Q(\mem[5][4] ) );
  SDFFQX2M \mem_reg[5][3]  ( .D(n105), .SI(\mem[5][2] ), .SE(n178), .CK(wclk), 
        .Q(\mem[5][3] ) );
  SDFFQX2M \mem_reg[5][2]  ( .D(n104), .SI(\mem[5][1] ), .SE(n177), .CK(wclk), 
        .Q(\mem[5][2] ) );
  SDFFQX2M \mem_reg[5][1]  ( .D(n103), .SI(\mem[5][0] ), .SE(n176), .CK(wclk), 
        .Q(\mem[5][1] ) );
  SDFFQX2M \mem_reg[5][0]  ( .D(n102), .SI(\mem[4][7] ), .SE(n178), .CK(wclk), 
        .Q(\mem[5][0] ) );
  SDFFQX2M \mem_reg[3][7]  ( .D(n125), .SI(\mem[3][6] ), .SE(n177), .CK(wclk), 
        .Q(\mem[3][7] ) );
  SDFFQX2M \mem_reg[3][6]  ( .D(n124), .SI(\mem[3][5] ), .SE(n176), .CK(wclk), 
        .Q(\mem[3][6] ) );
  SDFFQX2M \mem_reg[3][5]  ( .D(n123), .SI(\mem[3][4] ), .SE(n178), .CK(wclk), 
        .Q(\mem[3][5] ) );
  SDFFQX2M \mem_reg[3][4]  ( .D(n122), .SI(\mem[3][3] ), .SE(n177), .CK(wclk), 
        .Q(\mem[3][4] ) );
  SDFFQX2M \mem_reg[3][3]  ( .D(n121), .SI(\mem[3][2] ), .SE(n176), .CK(wclk), 
        .Q(\mem[3][3] ) );
  SDFFQX2M \mem_reg[3][2]  ( .D(n120), .SI(\mem[3][1] ), .SE(n178), .CK(wclk), 
        .Q(\mem[3][2] ) );
  SDFFQX2M \mem_reg[3][1]  ( .D(n119), .SI(\mem[3][0] ), .SE(n177), .CK(wclk), 
        .Q(\mem[3][1] ) );
  SDFFQX2M \mem_reg[3][0]  ( .D(n118), .SI(\mem[2][7] ), .SE(n176), .CK(wclk), 
        .Q(\mem[3][0] ) );
  SDFFQX2M \mem_reg[7][7]  ( .D(n93), .SI(\mem[7][6] ), .SE(n178), .CK(wclk), 
        .Q(\mem[7][7] ) );
  SDFFQX2M \mem_reg[7][6]  ( .D(n92), .SI(\mem[7][5] ), .SE(n177), .CK(wclk), 
        .Q(\mem[7][6] ) );
  SDFFQX2M \mem_reg[7][5]  ( .D(n91), .SI(\mem[7][4] ), .SE(n176), .CK(wclk), 
        .Q(\mem[7][5] ) );
  SDFFQX2M \mem_reg[7][4]  ( .D(n90), .SI(\mem[7][3] ), .SE(n178), .CK(wclk), 
        .Q(\mem[7][4] ) );
  SDFFQX2M \mem_reg[7][3]  ( .D(n89), .SI(test_si2), .SE(n177), .CK(wclk), .Q(
        \mem[7][3] ) );
  SDFFQX2M \mem_reg[7][2]  ( .D(n88), .SI(\mem[7][1] ), .SE(n176), .CK(wclk), 
        .Q(\mem[7][2] ) );
  SDFFQX2M \mem_reg[7][1]  ( .D(n87), .SI(\mem[7][0] ), .SE(n178), .CK(wclk), 
        .Q(\mem[7][1] ) );
  SDFFQX2M \mem_reg[7][0]  ( .D(n86), .SI(\mem[6][7] ), .SE(n177), .CK(wclk), 
        .Q(\mem[7][0] ) );
  SDFFQX2M \mem_reg[2][7]  ( .D(n133), .SI(\mem[2][6] ), .SE(n176), .CK(wclk), 
        .Q(\mem[2][7] ) );
  SDFFQX2M \mem_reg[2][6]  ( .D(n132), .SI(\mem[2][5] ), .SE(n178), .CK(wclk), 
        .Q(\mem[2][6] ) );
  SDFFQX2M \mem_reg[2][5]  ( .D(n131), .SI(\mem[2][4] ), .SE(n177), .CK(wclk), 
        .Q(\mem[2][5] ) );
  SDFFQX2M \mem_reg[2][4]  ( .D(n130), .SI(\mem[2][3] ), .SE(n176), .CK(wclk), 
        .Q(\mem[2][4] ) );
  SDFFQX2M \mem_reg[2][3]  ( .D(n129), .SI(\mem[2][2] ), .SE(n178), .CK(wclk), 
        .Q(\mem[2][3] ) );
  SDFFQX2M \mem_reg[2][2]  ( .D(n128), .SI(\mem[2][1] ), .SE(n177), .CK(wclk), 
        .Q(\mem[2][2] ) );
  SDFFQX2M \mem_reg[2][1]  ( .D(n127), .SI(\mem[2][0] ), .SE(n176), .CK(wclk), 
        .Q(\mem[2][1] ) );
  SDFFQX2M \mem_reg[2][0]  ( .D(n126), .SI(\mem[1][7] ), .SE(n178), .CK(wclk), 
        .Q(\mem[2][0] ) );
  SDFFQX2M \mem_reg[6][6]  ( .D(n100), .SI(\mem[6][5] ), .SE(n177), .CK(wclk), 
        .Q(\mem[6][6] ) );
  SDFFQX2M \mem_reg[6][5]  ( .D(n99), .SI(\mem[6][4] ), .SE(n176), .CK(wclk), 
        .Q(\mem[6][5] ) );
  SDFFQX2M \mem_reg[6][4]  ( .D(n98), .SI(\mem[6][3] ), .SE(n178), .CK(wclk), 
        .Q(\mem[6][4] ) );
  SDFFQX2M \mem_reg[6][3]  ( .D(n97), .SI(\mem[6][2] ), .SE(n177), .CK(wclk), 
        .Q(\mem[6][3] ) );
  SDFFQX2M \mem_reg[6][2]  ( .D(n96), .SI(\mem[6][1] ), .SE(n176), .CK(wclk), 
        .Q(\mem[6][2] ) );
  SDFFQX2M \mem_reg[6][1]  ( .D(n95), .SI(\mem[6][0] ), .SE(n178), .CK(wclk), 
        .Q(\mem[6][1] ) );
  SDFFQX2M \mem_reg[6][0]  ( .D(n94), .SI(\mem[5][7] ), .SE(n177), .CK(wclk), 
        .Q(\mem[6][0] ) );
  SDFFQX2M \mem_reg[0][7]  ( .D(n149), .SI(\mem[0][6] ), .SE(n176), .CK(wclk), 
        .Q(\mem[0][7] ) );
  SDFFQX2M \mem_reg[0][6]  ( .D(n148), .SI(\mem[0][5] ), .SE(n178), .CK(wclk), 
        .Q(\mem[0][6] ) );
  SDFFQX2M \mem_reg[0][5]  ( .D(n147), .SI(\mem[0][4] ), .SE(n177), .CK(wclk), 
        .Q(\mem[0][5] ) );
  SDFFQX2M \mem_reg[0][4]  ( .D(n146), .SI(\mem[0][3] ), .SE(n176), .CK(wclk), 
        .Q(\mem[0][4] ) );
  SDFFQX2M \mem_reg[0][3]  ( .D(n145), .SI(\mem[0][2] ), .SE(n178), .CK(wclk), 
        .Q(\mem[0][3] ) );
  SDFFQX2M \mem_reg[0][2]  ( .D(n144), .SI(\mem[0][1] ), .SE(n177), .CK(wclk), 
        .Q(\mem[0][2] ) );
  SDFFQX2M \mem_reg[0][1]  ( .D(n143), .SI(\mem[0][0] ), .SE(n176), .CK(wclk), 
        .Q(\mem[0][1] ) );
  SDFFQX2M \mem_reg[0][0]  ( .D(n142), .SI(test_si1), .SE(n178), .CK(wclk), 
        .Q(\mem[0][0] ) );
  SDFFQX2M \mem_reg[4][7]  ( .D(n117), .SI(\mem[4][6] ), .SE(n177), .CK(wclk), 
        .Q(\mem[4][7] ) );
  SDFFQX2M \mem_reg[4][6]  ( .D(n116), .SI(\mem[4][5] ), .SE(n176), .CK(wclk), 
        .Q(\mem[4][6] ) );
  SDFFQX2M \mem_reg[4][5]  ( .D(n115), .SI(\mem[4][4] ), .SE(n178), .CK(wclk), 
        .Q(\mem[4][5] ) );
  SDFFQX2M \mem_reg[4][4]  ( .D(n114), .SI(\mem[4][3] ), .SE(n177), .CK(wclk), 
        .Q(\mem[4][4] ) );
  SDFFQX2M \mem_reg[4][3]  ( .D(n113), .SI(\mem[4][2] ), .SE(n176), .CK(wclk), 
        .Q(\mem[4][3] ) );
  SDFFQX2M \mem_reg[4][2]  ( .D(n112), .SI(\mem[4][1] ), .SE(n178), .CK(wclk), 
        .Q(\mem[4][2] ) );
  SDFFQX2M \mem_reg[4][1]  ( .D(n111), .SI(\mem[4][0] ), .SE(n177), .CK(wclk), 
        .Q(\mem[4][1] ) );
  SDFFQX2M \mem_reg[4][0]  ( .D(n110), .SI(\mem[3][7] ), .SE(n176), .CK(wclk), 
        .Q(\mem[4][0] ) );
  SDFFQX1M \mem_reg[6][7]  ( .D(n101), .SI(\mem[6][6] ), .SE(n176), .CK(wclk), 
        .Q(\mem[6][7] ) );
  BUFX2M U67 ( .A(n81), .Y(n161) );
  BUFX2M U68 ( .A(n83), .Y(n160) );
  BUFX2M U69 ( .A(n84), .Y(n159) );
  BUFX2M U70 ( .A(n77), .Y(n162) );
  NAND3X2M U71 ( .A(n163), .B(n164), .C(n76), .Y(n79) );
  NAND3X2M U72 ( .A(n163), .B(n164), .C(n82), .Y(n85) );
  NAND3X2M U73 ( .A(n76), .B(n164), .C(waddr[0]), .Y(n78) );
  NAND3X2M U74 ( .A(waddr[0]), .B(n76), .C(waddr[1]), .Y(n75) );
  NOR2BX2M U75 ( .AN(n80), .B(waddr[2]), .Y(n82) );
  OAI2BB2X1M U76 ( .B0(n75), .B1(n165), .A0N(\mem[7][0] ), .A1N(n75), .Y(n86)
         );
  OAI2BB2X1M U77 ( .B0(n75), .B1(n166), .A0N(\mem[7][1] ), .A1N(n75), .Y(n87)
         );
  OAI2BB2X1M U78 ( .B0(n75), .B1(n167), .A0N(\mem[7][2] ), .A1N(n75), .Y(n88)
         );
  OAI2BB2X1M U79 ( .B0(n75), .B1(n168), .A0N(\mem[7][3] ), .A1N(n75), .Y(n89)
         );
  OAI2BB2X1M U80 ( .B0(n75), .B1(n169), .A0N(\mem[7][4] ), .A1N(n75), .Y(n90)
         );
  OAI2BB2X1M U81 ( .B0(n75), .B1(n170), .A0N(\mem[7][5] ), .A1N(n75), .Y(n91)
         );
  OAI2BB2X1M U82 ( .B0(n75), .B1(n171), .A0N(\mem[7][6] ), .A1N(n75), .Y(n92)
         );
  OAI2BB2X1M U83 ( .B0(n75), .B1(n172), .A0N(\mem[7][7] ), .A1N(n75), .Y(n93)
         );
  OAI2BB2X1M U84 ( .B0(n165), .B1(n78), .A0N(\mem[5][0] ), .A1N(n78), .Y(n102)
         );
  OAI2BB2X1M U85 ( .B0(n166), .B1(n78), .A0N(\mem[5][1] ), .A1N(n78), .Y(n103)
         );
  OAI2BB2X1M U86 ( .B0(n167), .B1(n78), .A0N(\mem[5][2] ), .A1N(n78), .Y(n104)
         );
  OAI2BB2X1M U87 ( .B0(n168), .B1(n78), .A0N(\mem[5][3] ), .A1N(n78), .Y(n105)
         );
  OAI2BB2X1M U88 ( .B0(n169), .B1(n78), .A0N(\mem[5][4] ), .A1N(n78), .Y(n106)
         );
  OAI2BB2X1M U89 ( .B0(n170), .B1(n78), .A0N(\mem[5][5] ), .A1N(n78), .Y(n107)
         );
  OAI2BB2X1M U90 ( .B0(n171), .B1(n78), .A0N(\mem[5][6] ), .A1N(n78), .Y(n108)
         );
  OAI2BB2X1M U91 ( .B0(n172), .B1(n78), .A0N(\mem[5][7] ), .A1N(n78), .Y(n109)
         );
  OAI2BB2X1M U92 ( .B0(n165), .B1(n85), .A0N(\mem[0][0] ), .A1N(n85), .Y(n142)
         );
  OAI2BB2X1M U93 ( .B0(n166), .B1(n85), .A0N(\mem[0][1] ), .A1N(n85), .Y(n143)
         );
  OAI2BB2X1M U94 ( .B0(n167), .B1(n85), .A0N(\mem[0][2] ), .A1N(n85), .Y(n144)
         );
  OAI2BB2X1M U95 ( .B0(n168), .B1(n85), .A0N(\mem[0][3] ), .A1N(n85), .Y(n145)
         );
  OAI2BB2X1M U96 ( .B0(n169), .B1(n85), .A0N(\mem[0][4] ), .A1N(n85), .Y(n146)
         );
  OAI2BB2X1M U97 ( .B0(n170), .B1(n85), .A0N(\mem[0][5] ), .A1N(n85), .Y(n147)
         );
  OAI2BB2X1M U98 ( .B0(n171), .B1(n85), .A0N(\mem[0][6] ), .A1N(n85), .Y(n148)
         );
  OAI2BB2X1M U99 ( .B0(n172), .B1(n85), .A0N(\mem[0][7] ), .A1N(n85), .Y(n149)
         );
  OAI2BB2X1M U100 ( .B0(n165), .B1(n79), .A0N(\mem[4][0] ), .A1N(n79), .Y(n110) );
  OAI2BB2X1M U101 ( .B0(n166), .B1(n79), .A0N(\mem[4][1] ), .A1N(n79), .Y(n111) );
  OAI2BB2X1M U102 ( .B0(n167), .B1(n79), .A0N(\mem[4][2] ), .A1N(n79), .Y(n112) );
  OAI2BB2X1M U103 ( .B0(n168), .B1(n79), .A0N(\mem[4][3] ), .A1N(n79), .Y(n113) );
  OAI2BB2X1M U104 ( .B0(n169), .B1(n79), .A0N(\mem[4][4] ), .A1N(n79), .Y(n114) );
  OAI2BB2X1M U105 ( .B0(n170), .B1(n79), .A0N(\mem[4][5] ), .A1N(n79), .Y(n115) );
  OAI2BB2X1M U106 ( .B0(n171), .B1(n79), .A0N(\mem[4][6] ), .A1N(n79), .Y(n116) );
  OAI2BB2X1M U107 ( .B0(n172), .B1(n79), .A0N(\mem[4][7] ), .A1N(n79), .Y(n117) );
  INVX2M U108 ( .A(wdata[0]), .Y(n165) );
  INVX2M U109 ( .A(wdata[1]), .Y(n166) );
  INVX2M U110 ( .A(wdata[2]), .Y(n167) );
  INVX2M U111 ( .A(wdata[3]), .Y(n168) );
  INVX2M U112 ( .A(wdata[4]), .Y(n169) );
  INVX2M U113 ( .A(wdata[5]), .Y(n170) );
  INVX2M U114 ( .A(wdata[6]), .Y(n171) );
  INVX2M U115 ( .A(wdata[7]), .Y(n172) );
  NOR2BX2M U116 ( .AN(winc), .B(wfull), .Y(n80) );
  OAI2BB2X1M U117 ( .B0(n165), .B1(n162), .A0N(\mem[6][0] ), .A1N(n162), .Y(
        n94) );
  OAI2BB2X1M U118 ( .B0(n166), .B1(n162), .A0N(\mem[6][1] ), .A1N(n162), .Y(
        n95) );
  OAI2BB2X1M U119 ( .B0(n167), .B1(n162), .A0N(\mem[6][2] ), .A1N(n162), .Y(
        n96) );
  OAI2BB2X1M U120 ( .B0(n168), .B1(n162), .A0N(\mem[6][3] ), .A1N(n162), .Y(
        n97) );
  OAI2BB2X1M U121 ( .B0(n169), .B1(n162), .A0N(\mem[6][4] ), .A1N(n162), .Y(
        n98) );
  OAI2BB2X1M U122 ( .B0(n170), .B1(n162), .A0N(\mem[6][5] ), .A1N(n162), .Y(
        n99) );
  OAI2BB2X1M U123 ( .B0(n171), .B1(n162), .A0N(\mem[6][6] ), .A1N(n162), .Y(
        n100) );
  OAI2BB2X1M U124 ( .B0(n172), .B1(n162), .A0N(\mem[6][7] ), .A1N(n162), .Y(
        n101) );
  OAI2BB2X1M U125 ( .B0(n165), .B1(n161), .A0N(\mem[3][0] ), .A1N(n161), .Y(
        n118) );
  OAI2BB2X1M U126 ( .B0(n166), .B1(n161), .A0N(\mem[3][1] ), .A1N(n161), .Y(
        n119) );
  OAI2BB2X1M U127 ( .B0(n167), .B1(n161), .A0N(\mem[3][2] ), .A1N(n161), .Y(
        n120) );
  OAI2BB2X1M U128 ( .B0(n168), .B1(n161), .A0N(\mem[3][3] ), .A1N(n161), .Y(
        n121) );
  OAI2BB2X1M U129 ( .B0(n169), .B1(n161), .A0N(\mem[3][4] ), .A1N(n161), .Y(
        n122) );
  OAI2BB2X1M U130 ( .B0(n170), .B1(n161), .A0N(\mem[3][5] ), .A1N(n161), .Y(
        n123) );
  OAI2BB2X1M U131 ( .B0(n171), .B1(n161), .A0N(\mem[3][6] ), .A1N(n161), .Y(
        n124) );
  OAI2BB2X1M U132 ( .B0(n172), .B1(n161), .A0N(\mem[3][7] ), .A1N(n161), .Y(
        n125) );
  OAI2BB2X1M U133 ( .B0(n165), .B1(n160), .A0N(\mem[2][0] ), .A1N(n160), .Y(
        n126) );
  OAI2BB2X1M U134 ( .B0(n166), .B1(n160), .A0N(\mem[2][1] ), .A1N(n160), .Y(
        n127) );
  OAI2BB2X1M U135 ( .B0(n167), .B1(n160), .A0N(\mem[2][2] ), .A1N(n160), .Y(
        n128) );
  OAI2BB2X1M U136 ( .B0(n168), .B1(n160), .A0N(\mem[2][3] ), .A1N(n160), .Y(
        n129) );
  OAI2BB2X1M U137 ( .B0(n169), .B1(n160), .A0N(\mem[2][4] ), .A1N(n160), .Y(
        n130) );
  OAI2BB2X1M U138 ( .B0(n170), .B1(n160), .A0N(\mem[2][5] ), .A1N(n160), .Y(
        n131) );
  OAI2BB2X1M U139 ( .B0(n171), .B1(n160), .A0N(\mem[2][6] ), .A1N(n160), .Y(
        n132) );
  OAI2BB2X1M U140 ( .B0(n172), .B1(n160), .A0N(\mem[2][7] ), .A1N(n160), .Y(
        n133) );
  OAI2BB2X1M U141 ( .B0(n165), .B1(n159), .A0N(\mem[1][0] ), .A1N(n159), .Y(
        n134) );
  OAI2BB2X1M U142 ( .B0(n166), .B1(n159), .A0N(\mem[1][1] ), .A1N(n159), .Y(
        n135) );
  OAI2BB2X1M U143 ( .B0(n167), .B1(n159), .A0N(\mem[1][2] ), .A1N(n159), .Y(
        n136) );
  OAI2BB2X1M U144 ( .B0(n168), .B1(n159), .A0N(\mem[1][3] ), .A1N(n159), .Y(
        n137) );
  OAI2BB2X1M U145 ( .B0(n169), .B1(n159), .A0N(\mem[1][4] ), .A1N(n159), .Y(
        n138) );
  OAI2BB2X1M U146 ( .B0(n170), .B1(n159), .A0N(\mem[1][5] ), .A1N(n159), .Y(
        n139) );
  OAI2BB2X1M U147 ( .B0(n171), .B1(n159), .A0N(\mem[1][6] ), .A1N(n159), .Y(
        n140) );
  OAI2BB2X1M U148 ( .B0(n172), .B1(n159), .A0N(\mem[1][7] ), .A1N(n159), .Y(
        n141) );
  AND2X2M U149 ( .A(waddr[2]), .B(n80), .Y(n76) );
  NAND3X2M U150 ( .A(n76), .B(n163), .C(waddr[1]), .Y(n77) );
  NAND3X2M U151 ( .A(waddr[1]), .B(waddr[0]), .C(n82), .Y(n81) );
  NAND3X2M U152 ( .A(waddr[1]), .B(n163), .C(n82), .Y(n83) );
  NAND3X2M U153 ( .A(waddr[0]), .B(n164), .C(n82), .Y(n84) );
  MX2X2M U154 ( .A(n67), .B(n66), .S0(N11), .Y(rdata[7]) );
  MX4X1M U155 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .C(\mem[2][7] ), .D(
        \mem[3][7] ), .S0(n158), .S1(N10), .Y(n67) );
  MX4X1M U156 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n157), .S1(N10), .Y(n66) );
  MX2X2M U157 ( .A(n69), .B(n68), .S0(N11), .Y(rdata[6]) );
  MX4X1M U158 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .C(\mem[2][6] ), .D(
        \mem[3][6] ), .S0(n158), .S1(N10), .Y(n69) );
  MX4X1M U159 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n157), .S1(N10), .Y(n68) );
  MX2X2M U160 ( .A(n71), .B(n70), .S0(N11), .Y(rdata[5]) );
  MX4X1M U161 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .C(\mem[2][5] ), .D(
        \mem[3][5] ), .S0(n158), .S1(N10), .Y(n71) );
  MX4X1M U162 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n157), .S1(N10), .Y(n70) );
  MX2X2M U163 ( .A(n73), .B(n72), .S0(N11), .Y(rdata[4]) );
  MX4X1M U164 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .C(\mem[2][4] ), .D(
        \mem[3][4] ), .S0(n158), .S1(N10), .Y(n73) );
  MX4X1M U165 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n157), .S1(N10), .Y(n72) );
  MX2X2M U166 ( .A(n150), .B(n74), .S0(N11), .Y(rdata[3]) );
  MX4X1M U167 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .C(\mem[2][3] ), .D(
        \mem[3][3] ), .S0(n158), .S1(N10), .Y(n150) );
  MX4X1M U168 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n157), .S1(N10), .Y(n74) );
  MX2X2M U169 ( .A(n152), .B(n151), .S0(N11), .Y(rdata[2]) );
  MX4X1M U170 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .C(\mem[2][2] ), .D(
        \mem[3][2] ), .S0(n158), .S1(N10), .Y(n152) );
  MX4X1M U171 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n157), .S1(N10), .Y(n151) );
  MX2X2M U172 ( .A(n154), .B(n153), .S0(N11), .Y(rdata[1]) );
  MX4X1M U173 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .C(\mem[2][1] ), .D(
        \mem[3][1] ), .S0(n158), .S1(N10), .Y(n154) );
  MX4X1M U174 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n157), .S1(N10), .Y(n153) );
  MX2X2M U175 ( .A(n156), .B(n155), .S0(N11), .Y(rdata[0]) );
  MX4X1M U176 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .C(\mem[2][0] ), .D(
        \mem[3][0] ), .S0(n158), .S1(N10), .Y(n156) );
  MX4X1M U177 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(n157), .S1(N10), .Y(n155) );
  INVX2M U178 ( .A(waddr[1]), .Y(n164) );
  INVX2M U179 ( .A(waddr[0]), .Y(n163) );
  BUFX2M U180 ( .A(N9), .Y(n157) );
  BUFX2M U181 ( .A(N9), .Y(n158) );
  DLY1X1M U182 ( .A(test_se), .Y(n176) );
  DLY1X1M U183 ( .A(test_se), .Y(n177) );
  DLY1X1M U184 ( .A(test_se), .Y(n178) );
endmodule


module FIFO_RD_test_1 ( rclk, rrst_n, rinc, sync_wr_ptr, raddr, rptr, rempty, 
        test_si, test_se );
  input [3:0] sync_wr_ptr;
  output [2:0] raddr;
  output [3:0] rptr;
  input rclk, rrst_n, rinc, test_si, test_se;
  output rempty;
  wire   \rbin[3] , rempty_val, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [3:0] rbinnext;
  wire   [2:0] rgraynext;

  SDFFRQX2M \rbin_reg[3]  ( .D(rbinnext[3]), .SI(raddr[2]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(\rbin[3] ) );
  SDFFRQX2M \rbin_reg[2]  ( .D(rbinnext[2]), .SI(raddr[1]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(raddr[2]) );
  SDFFSQX2M rempty_reg ( .D(rempty_val), .SI(\rbin[3] ), .SE(test_se), .CK(
        rclk), .SN(rrst_n), .Q(rempty) );
  SDFFRQX2M \rbin_reg[0]  ( .D(rbinnext[0]), .SI(test_si), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(raddr[0]) );
  SDFFRQX2M \rbin_reg[1]  ( .D(rbinnext[1]), .SI(raddr[0]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(raddr[1]) );
  SDFFRQX2M \rptr_reg[3]  ( .D(rbinnext[3]), .SI(rptr[2]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rptr[3]) );
  SDFFRQX2M \rptr_reg[2]  ( .D(rgraynext[2]), .SI(rptr[1]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rptr[2]) );
  SDFFRQX2M \rptr_reg[1]  ( .D(rgraynext[1]), .SI(rptr[0]), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rptr[1]) );
  SDFFRQX2M \rptr_reg[0]  ( .D(rgraynext[0]), .SI(rempty), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rptr[0]) );
  CLKXOR2X2M U12 ( .A(rbinnext[3]), .B(rbinnext[2]), .Y(rgraynext[2]) );
  CLKXOR2X2M U13 ( .A(rbinnext[1]), .B(rbinnext[0]), .Y(rgraynext[0]) );
  CLKXOR2X2M U14 ( .A(rbinnext[2]), .B(rbinnext[1]), .Y(rgraynext[1]) );
  XNOR2X2M U15 ( .A(n14), .B(\rbin[3] ), .Y(rbinnext[3]) );
  NAND3X2M U16 ( .A(raddr[1]), .B(n15), .C(raddr[2]), .Y(n14) );
  NOR4X1M U17 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(rempty_val) );
  CLKXOR2X2M U18 ( .A(sync_wr_ptr[3]), .B(rbinnext[3]), .Y(n11) );
  CLKXOR2X2M U19 ( .A(sync_wr_ptr[2]), .B(rgraynext[2]), .Y(n10) );
  CLKXOR2X2M U20 ( .A(sync_wr_ptr[0]), .B(rgraynext[0]), .Y(n12) );
  NOR2BX2M U21 ( .AN(rinc), .B(rempty), .Y(n17) );
  XNOR2X2M U22 ( .A(n16), .B(raddr[2]), .Y(rbinnext[2]) );
  NAND2X2M U23 ( .A(raddr[1]), .B(n15), .Y(n16) );
  AND2X2M U24 ( .A(raddr[0]), .B(n17), .Y(n15) );
  CLKXOR2X2M U25 ( .A(n15), .B(raddr[1]), .Y(rbinnext[1]) );
  CLKXOR2X2M U26 ( .A(sync_wr_ptr[1]), .B(rgraynext[1]), .Y(n13) );
  CLKXOR2X2M U27 ( .A(n17), .B(raddr[0]), .Y(rbinnext[0]) );
endmodule


module FIFO_WR_test_1 ( sync_rd_ptr, winc, wclk, wrst_n, wfull, waddr, wptr, 
        test_si, test_se );
  input [3:0] sync_rd_ptr;
  output [2:0] waddr;
  output [3:0] wptr;
  input winc, wclk, wrst_n, test_si, test_se;
  output wfull;
  wire   \wbin[3] , wfull_value, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [3:0] wbinnext;
  wire   [2:0] wgraynext;

  SDFFRQX2M \wbin_reg[3]  ( .D(wbinnext[3]), .SI(waddr[2]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(\wbin[3] ) );
  SDFFRQX2M \wbin_reg[2]  ( .D(wbinnext[2]), .SI(waddr[1]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(waddr[2]) );
  SDFFRQX2M wfull_reg ( .D(wfull_value), .SI(\wbin[3] ), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wfull) );
  SDFFRQX2M \wbin_reg[0]  ( .D(wbinnext[0]), .SI(test_si), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(waddr[0]) );
  SDFFRQX2M \wbin_reg[1]  ( .D(wbinnext[1]), .SI(waddr[0]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(waddr[1]) );
  SDFFRQX2M \wptr_reg[3]  ( .D(wbinnext[3]), .SI(wptr[2]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wptr[3]) );
  SDFFRQX2M \wptr_reg[2]  ( .D(wgraynext[2]), .SI(wptr[1]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wptr[2]) );
  SDFFRQX2M \wptr_reg[1]  ( .D(wgraynext[1]), .SI(wptr[0]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wptr[1]) );
  SDFFRQX2M \wptr_reg[0]  ( .D(wgraynext[0]), .SI(wfull), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wptr[0]) );
  CLKXOR2X2M U12 ( .A(wbinnext[1]), .B(wbinnext[0]), .Y(wgraynext[0]) );
  CLKXOR2X2M U13 ( .A(wbinnext[2]), .B(wbinnext[1]), .Y(wgraynext[1]) );
  CLKXOR2X2M U14 ( .A(wbinnext[3]), .B(wbinnext[2]), .Y(wgraynext[2]) );
  XNOR2X2M U15 ( .A(n16), .B(waddr[2]), .Y(wbinnext[2]) );
  NAND2X2M U16 ( .A(waddr[1]), .B(n15), .Y(n16) );
  XNOR2X2M U17 ( .A(n14), .B(\wbin[3] ), .Y(wbinnext[3]) );
  NAND3X2M U18 ( .A(waddr[1]), .B(n15), .C(waddr[2]), .Y(n14) );
  NOR4X1M U19 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(wfull_value) );
  XNOR2X2M U20 ( .A(wbinnext[3]), .B(sync_rd_ptr[3]), .Y(n11) );
  XNOR2X2M U21 ( .A(wgraynext[2]), .B(sync_rd_ptr[2]), .Y(n10) );
  CLKXOR2X2M U22 ( .A(sync_rd_ptr[0]), .B(wgraynext[0]), .Y(n12) );
  NOR2BX2M U23 ( .AN(winc), .B(wfull), .Y(n17) );
  AND2X2M U24 ( .A(waddr[0]), .B(n17), .Y(n15) );
  CLKXOR2X2M U25 ( .A(n15), .B(waddr[1]), .Y(wbinnext[1]) );
  CLKXOR2X2M U26 ( .A(sync_rd_ptr[1]), .B(wgraynext[1]), .Y(n13) );
  CLKXOR2X2M U27 ( .A(n17), .B(waddr[0]), .Y(wbinnext[0]) );
endmodule


module FIFO_TOP_test_1 ( wclk, rclk, wrst_n, rrst_n, rinc, winc, wdata, rdata, 
        wfull, rempty, test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, rclk, wrst_n, rrst_n, rinc, winc, test_si2, test_si1, test_se;
  output wfull, rempty, test_so2, test_so1;
  wire   n1, n2, n3;
  wire   [3:0] WPTR;
  wire   [3:0] S_WPTR;
  wire   [3:0] RPTR;
  wire   [3:0] S_RPTR;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  assign test_so2 = WPTR[3];

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rrst_n), .Y(n2) );
  FIFO_DF_SYNC_test_1 sync_w2r ( .CLK(rclk), .RST(n1), .in(WPTR), .out(S_WPTR), 
        .test_si(S_RPTR[3]), .test_se(test_se) );
  FIFO_DF_SYNC_test_0 sync_r2w ( .CLK(wclk), .RST(wrst_n), .in(RPTR), .out(
        S_RPTR), .test_se(test_se) );
  FIFO_MEM_CNTRL_test_1 fifomem ( .wclk(wclk), .wfull(wfull), .winc(winc), 
        .waddr(waddr), .raddr(raddr), .wdata(wdata), .rdata(rdata), .test_si2(
        test_si2), .test_si1(test_si1), .test_so2(n3), .test_so1(test_so1), 
        .test_se(test_se) );
  FIFO_RD_test_1 rptr_empty ( .rclk(rclk), .rrst_n(n1), .rinc(rinc), 
        .sync_wr_ptr(S_WPTR), .raddr(raddr), .rptr(RPTR), .rempty(rempty), 
        .test_si(n3), .test_se(test_se) );
  FIFO_WR_test_1 wptr_full ( .sync_rd_ptr(S_RPTR), .winc(winc), .wclk(wclk), 
        .wrst_n(wrst_n), .wfull(wfull), .waddr(waddr), .wptr(WPTR), .test_si(
        S_WPTR[3]), .test_se(test_se) );
endmodule


module UART_RX_FSM_test_1 ( CLK, RST, RX_IN, PAR_EN, START_GLITCH, STOP_ERR, 
        PAR_ERR, BIT_COUNT, EDGE_COUNT, PRESCALE, DATA_VALID, COUNT_RST, 
        GLITCH_RST, PAR_ERR_RST, STOP_ERR_RST, START_CHECK_EN, STOP_CHECK_EN, 
        PAR_CHECK_EN, DESERIALIZER_EN, COUNTER_EN, SAMPLER_EN, test_si, 
        test_so, test_se );
  input [3:0] BIT_COUNT;
  input [4:0] EDGE_COUNT;
  input [5:0] PRESCALE;
  input CLK, RST, RX_IN, PAR_EN, START_GLITCH, STOP_ERR, PAR_ERR, test_si,
         test_se;
  output DATA_VALID, COUNT_RST, GLITCH_RST, PAR_ERR_RST, STOP_ERR_RST,
         START_CHECK_EN, STOP_CHECK_EN, PAR_CHECK_EN, DESERIALIZER_EN,
         COUNTER_EN, SAMPLER_EN, test_so;
  wire   PAR_ERR_RST, \first_sample[2] , N70, N71, N72, N73, N74, N75, N76,
         N77, N86, N87, N88, \r109/A[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n76, n77;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  assign STOP_ERR_RST = PAR_ERR_RST;
  assign test_so = current_state[3];

  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n69), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .SI(current_state[2]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[3]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[1]) );
  INVX2M U7 ( .A(\first_sample[2] ), .Y(N86) );
  INVX2M U8 ( .A(PRESCALE[0]), .Y(N70) );
  AND2X1M U9 ( .A(\first_sample[2] ), .B(\r109/A[3] ), .Y(N88) );
  CLKXOR2X2M U10 ( .A(\r109/A[3] ), .B(\first_sample[2] ), .Y(N87) );
  NAND2BX1M U11 ( .AN(PRESCALE[1]), .B(N70), .Y(n1) );
  OAI2BB1X1M U12 ( .A0N(PRESCALE[0]), .A1N(PRESCALE[1]), .B0(n1), .Y(N71) );
  OR2X1M U13 ( .A(n1), .B(PRESCALE[2]), .Y(n2) );
  OAI2BB1X1M U14 ( .A0N(n1), .A1N(PRESCALE[2]), .B0(n2), .Y(N72) );
  OR2X1M U15 ( .A(n2), .B(PRESCALE[3]), .Y(n3) );
  OAI2BB1X1M U16 ( .A0N(n2), .A1N(PRESCALE[3]), .B0(n3), .Y(N73) );
  OR2X1M U17 ( .A(n3), .B(PRESCALE[4]), .Y(n4) );
  OAI2BB1X1M U18 ( .A0N(n3), .A1N(PRESCALE[4]), .B0(n4), .Y(N74) );
  NOR2X1M U19 ( .A(n4), .B(PRESCALE[5]), .Y(N76) );
  AO21XLM U20 ( .A0(n4), .A1(PRESCALE[5]), .B0(N76), .Y(N75) );
  NOR2BX1M U21 ( .AN(EDGE_COUNT[0]), .B(N70), .Y(n5) );
  OAI2B2X1M U22 ( .A1N(N71), .A0(n5), .B0(EDGE_COUNT[1]), .B1(n5), .Y(n8) );
  NOR2BX1M U23 ( .AN(N70), .B(EDGE_COUNT[0]), .Y(n6) );
  OAI2B2X1M U24 ( .A1N(EDGE_COUNT[1]), .A0(n6), .B0(N71), .B1(n6), .Y(n7) );
  NAND4BBX1M U25 ( .AN(N76), .BN(N75), .C(n8), .D(n7), .Y(n12) );
  CLKXOR2X2M U26 ( .A(EDGE_COUNT[4]), .B(N74), .Y(n11) );
  CLKXOR2X2M U27 ( .A(EDGE_COUNT[2]), .B(N72), .Y(n10) );
  CLKXOR2X2M U28 ( .A(EDGE_COUNT[3]), .B(N73), .Y(n9) );
  NOR4X1M U29 ( .A(n12), .B(n11), .C(n10), .D(n9), .Y(N77) );
  CLKINVX1M U30 ( .A(n13), .Y(\r109/A[3] ) );
  OAI21X1M U31 ( .A0(n14), .A1(n15), .B0(n16), .Y(next_state[3]) );
  NAND4X1M U32 ( .A(n15), .B(n17), .C(n18), .D(n19), .Y(next_state[2]) );
  AOI221XLM U33 ( .A0(n20), .A1(n21), .B0(n22), .B1(n23), .C0(n24), .Y(n19) );
  CLKINVX1M U34 ( .A(n25), .Y(n24) );
  OAI21X1M U35 ( .A0(n30), .A1(n31), .B0(n32), .Y(n23) );
  CLKINVX1M U36 ( .A(n33), .Y(n22) );
  OAI221X1M U37 ( .A0(n34), .A1(n35), .B0(n36), .B1(n32), .C0(n37), .Y(
        next_state[1]) );
  AOI211X1M U38 ( .A0(n38), .A1(n21), .B0(n20), .C0(n39), .Y(n37) );
  AOI2BB1X1M U39 ( .A0N(n14), .A1N(n31), .B0(n33), .Y(n39) );
  CLKINVX1M U40 ( .A(n40), .Y(n20) );
  CLKINVX1M U41 ( .A(n41), .Y(n34) );
  NAND3X1M U42 ( .A(n42), .B(n16), .C(n43), .Y(next_state[0]) );
  AOI221XLM U43 ( .A0(n44), .A1(n21), .B0(n45), .B1(n41), .C0(n46), .Y(n43) );
  CLKINVX1M U44 ( .A(n47), .Y(n46) );
  CLKNAND2X2M U45 ( .A(n30), .B(n32), .Y(n41) );
  CLKINVX1M U46 ( .A(N77), .Y(n30) );
  AND3X1M U47 ( .A(n25), .B(n18), .C(n48), .Y(n16) );
  OR4X1M U48 ( .A(PAR_EN), .B(n33), .C(n14), .D(n31), .Y(n48) );
  NAND3BX1M U49 ( .AN(BIT_COUNT[0]), .B(BIT_COUNT[3]), .C(n49), .Y(n31) );
  NOR2X1M U50 ( .A(BIT_COUNT[2]), .B(BIT_COUNT[1]), .Y(n49) );
  NAND3X1M U51 ( .A(current_state[1]), .B(n50), .C(n51), .Y(n33) );
  AOI2BB2XLM U52 ( .B0(n52), .B1(n14), .A0N(n53), .A1N(RX_IN), .Y(n42) );
  CLKNAND2X2M U53 ( .A(n54), .B(n55), .Y(PAR_ERR_RST) );
  NOR2X1M U54 ( .A(n18), .B(n21), .Y(STOP_CHECK_EN) );
  NOR2X1M U55 ( .A(n21), .B(n47), .Y(START_CHECK_EN) );
  NOR2X1M U56 ( .A(n17), .B(n21), .Y(PAR_CHECK_EN) );
  NAND4X1M U57 ( .A(n56), .B(n53), .C(n36), .D(n35), .Y(GLITCH_RST) );
  NOR2X1M U58 ( .A(n40), .B(n21), .Y(DESERIALIZER_EN) );
  NAND4X1M U59 ( .A(n57), .B(n58), .C(n59), .D(n60), .Y(n21) );
  XNOR2X1M U60 ( .A(EDGE_COUNT[2]), .B(N86), .Y(n60) );
  NOR2X1M U61 ( .A(EDGE_COUNT[1]), .B(n61), .Y(n59) );
  XNOR2X1M U62 ( .A(EDGE_COUNT[3]), .B(N87), .Y(n58) );
  XNOR2X1M U63 ( .A(EDGE_COUNT[4]), .B(N88), .Y(n57) );
  NOR4X1M U64 ( .A(n77), .B(PAR_ERR), .C(n36), .D(n14), .Y(DATA_VALID) );
  CLKNAND2X2M U65 ( .A(n54), .B(n35), .Y(COUNT_RST) );
  CLKINVX1M U66 ( .A(n52), .Y(n35) );
  NOR2X1M U67 ( .A(START_GLITCH), .B(n55), .Y(n52) );
  AND3X1M U68 ( .A(n53), .B(n25), .C(n56), .Y(n54) );
  NAND2BX1M U69 ( .AN(n36), .B(n14), .Y(n25) );
  CLKNAND2X2M U70 ( .A(N77), .B(n32), .Y(n14) );
  NAND4BX1M U71 ( .AN(EDGE_COUNT[4]), .B(n61), .C(n62), .D(n63), .Y(n32) );
  NOR2BX1M U72 ( .AN(EDGE_COUNT[1]), .B(n64), .Y(n63) );
  XNOR2X1M U73 ( .A(EDGE_COUNT[3]), .B(n13), .Y(n64) );
  XNOR2X1M U74 ( .A(EDGE_COUNT[2]), .B(\first_sample[2] ), .Y(n62) );
  CLKNAND2X2M U75 ( .A(n13), .B(n65), .Y(\first_sample[2] ) );
  NAND4X1M U76 ( .A(N70), .B(n66), .C(PRESCALE[4]), .D(n67), .Y(n65) );
  NOR3X1M U77 ( .A(PRESCALE[2]), .B(PRESCALE[5]), .C(PRESCALE[3]), .Y(n67) );
  NAND4X1M U78 ( .A(N70), .B(n66), .C(PRESCALE[5]), .D(n68), .Y(n13) );
  NOR3X1M U79 ( .A(PRESCALE[2]), .B(PRESCALE[4]), .C(PRESCALE[3]), .Y(n68) );
  CLKINVX1M U80 ( .A(PRESCALE[1]), .Y(n66) );
  CLKINVX1M U81 ( .A(EDGE_COUNT[0]), .Y(n61) );
  NAND3X1M U82 ( .A(n69), .B(n50), .C(n51), .Y(n53) );
  NAND4X1M U83 ( .A(RX_IN), .B(n56), .C(n55), .D(n36), .Y(COUNTER_EN) );
  CLKNAND2X2M U84 ( .A(n70), .B(n69), .Y(n36) );
  CLKNAND2X2M U85 ( .A(n71), .B(n69), .Y(n55) );
  NOR4BX1M U86 ( .AN(n72), .B(n45), .C(SAMPLER_EN), .D(current_state[1]), .Y(
        n56) );
  NAND3BX1M U87 ( .AN(n38), .B(n40), .C(n17), .Y(SAMPLER_EN) );
  CLKINVX1M U88 ( .A(n44), .Y(n17) );
  NOR4X1M U89 ( .A(n50), .B(n73), .C(current_state[1]), .D(current_state[3]), 
        .Y(n44) );
  NAND3X1M U90 ( .A(current_state[1]), .B(current_state[2]), .C(n51), .Y(n40)
         );
  CLKNAND2X2M U91 ( .A(n18), .B(n47), .Y(n38) );
  CLKNAND2X2M U92 ( .A(n71), .B(current_state[1]), .Y(n47) );
  NOR3X1M U93 ( .A(current_state[2]), .B(current_state[3]), .C(n73), .Y(n71)
         );
  CLKNAND2X2M U94 ( .A(current_state[1]), .B(n70), .Y(n18) );
  NOR3BX1M U95 ( .AN(current_state[3]), .B(n50), .C(n73), .Y(n70) );
  CLKINVX1M U96 ( .A(n15), .Y(n45) );
  NAND3X1M U97 ( .A(current_state[2]), .B(n69), .C(n51), .Y(n15) );
  NOR2X1M U98 ( .A(current_state[3]), .B(current_state[0]), .Y(n51) );
  CLKINVX1M U99 ( .A(current_state[1]), .Y(n69) );
  OAI21X1M U100 ( .A0(n73), .A1(n50), .B0(current_state[3]), .Y(n72) );
  CLKINVX1M U101 ( .A(current_state[2]), .Y(n50) );
  CLKINVX1M U102 ( .A(current_state[0]), .Y(n73) );
  INVXLM U103 ( .A(STOP_ERR), .Y(n76) );
  INVXLM U104 ( .A(n76), .Y(n77) );
endmodule


module UART_RX_data_sampler_test_1 ( CLK, RST, EN, RX_IN, sampled_bit, test_si, 
        test_so, test_se );
  input CLK, RST, EN, RX_IN, test_si, test_se;
  output sampled_bit, test_so;
  wire   n1, n4, n5, n6, n8, n10, n12, n14, n2, n3, n7;
  wire   [2:0] current_state;
  assign test_so = n7;

  SDFFRQX2M \current_state_reg[2]  ( .D(n10), .SI(current_state[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(n14), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(n12), .SI(n2), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(current_state[1]) );
  OAI22X1M U3 ( .A0(EN), .A1(n3), .B0(n6), .B1(n4), .Y(n12) );
  AOI2BB2XLM U4 ( .B0(RX_IN), .B1(n3), .A0N(n2), .A1N(RX_IN), .Y(n6) );
  NAND2X2M U5 ( .A(EN), .B(n7), .Y(n4) );
  OAI32X1M U6 ( .A0(n4), .A1(current_state[1]), .A2(current_state[0]), .B0(n8), 
        .B1(n2), .Y(n14) );
  OA21X2M U7 ( .A0(n3), .A1(current_state[2]), .B0(EN), .Y(n8) );
  OAI22X1M U8 ( .A0(EN), .A1(n7), .B0(n4), .B1(n5), .Y(n10) );
  OAI21X2M U9 ( .A0(RX_IN), .A1(current_state[1]), .B0(current_state[0]), .Y(
        n5) );
  NOR2X2M U10 ( .A(n1), .B(n7), .Y(sampled_bit) );
  AOI22X1M U11 ( .A0(current_state[1]), .A1(RX_IN), .B0(current_state[0]), 
        .B1(n3), .Y(n1) );
  INVX2M U12 ( .A(current_state[2]), .Y(n7) );
  INVX2M U13 ( .A(current_state[1]), .Y(n3) );
  INVX2M U14 ( .A(current_state[0]), .Y(n2) );
endmodule


module UART_RX_deserializer_test_1 ( CLK, RST, EN, sampled_bit, P_DATA, 
        test_si, test_so, test_se );
  output [7:0] P_DATA;
  input CLK, RST, EN, sampled_bit, test_si, test_se;
  output test_so;
  wire   n10, n12, n14, n16, n18, n20, n22, n24, n1, n2, n3, n4, n5, n6, n7,
         n8, n25;
  assign test_so = n3;

  SDFFRQX2M \P_DATA_reg[0]  ( .D(n10), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n12), .SI(P_DATA[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n18), .SI(n7), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n24), .SI(n4), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[7]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n16), .SI(n8), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n14), .SI(n25), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[2]) );
  SDFFRQX2M \P_DATA_reg[5]  ( .D(n20), .SI(n6), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n22), .SI(n5), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(P_DATA[6]) );
  INVX2M U2 ( .A(n1), .Y(n2) );
  BUFX2M U3 ( .A(EN), .Y(n1) );
  OAI22X1M U4 ( .A0(n2), .A1(n8), .B0(n1), .B1(n25), .Y(n12) );
  OAI22X1M U5 ( .A0(n2), .A1(n7), .B0(n1), .B1(n8), .Y(n14) );
  OAI22X1M U6 ( .A0(n2), .A1(n6), .B0(n1), .B1(n7), .Y(n16) );
  OAI22X1M U7 ( .A0(n2), .A1(n5), .B0(n1), .B1(n6), .Y(n18) );
  OAI22X1M U8 ( .A0(n2), .A1(n4), .B0(n1), .B1(n5), .Y(n20) );
  OAI22X1M U9 ( .A0(n2), .A1(n3), .B0(n1), .B1(n4), .Y(n22) );
  OAI2BB2X1M U10 ( .B0(n1), .B1(n3), .A0N(sampled_bit), .A1N(n1), .Y(n24) );
  OAI2BB2X1M U11 ( .B0(n2), .B1(n25), .A0N(P_DATA[0]), .A1N(n2), .Y(n10) );
  INVX2M U12 ( .A(P_DATA[2]), .Y(n8) );
  INVX2M U13 ( .A(P_DATA[6]), .Y(n4) );
  INVX2M U14 ( .A(P_DATA[7]), .Y(n3) );
  INVX2M U15 ( .A(P_DATA[3]), .Y(n7) );
  INVX2M U16 ( .A(P_DATA[1]), .Y(n25) );
  INVX2M U17 ( .A(P_DATA[4]), .Y(n6) );
  INVX2M U26 ( .A(P_DATA[5]), .Y(n5) );
endmodule


module UART_RX_edge_bit_counter_test_1 ( CLK, RST, EN, COUNT_RST, PRESCALE, 
        EDGE_COUNT, BIT_COUNT, test_si, test_so, test_se );
  input [5:0] PRESCALE;
  output [4:0] EDGE_COUNT;
  output [3:0] BIT_COUNT;
  input CLK, RST, EN, COUNT_RST, test_si, test_se;
  output test_so;
  wire   N20, N21, N22, N23, n1, n2, n4, n5, n14, n15, n16, n17, n20, n21, n22,
         n23, n24, n25, n26, n28, n31, n32, n34, n35, n37, n43, n45, n47, n49,
         n51, n52, n53, n54, n55, \add_25/carry[4] , \add_25/carry[3] ,
         \add_25/carry[2] , n3, n6, n7, n8, n9, n10, n11, n12, n13, n18, n19,
         n27, n29, n30, n33, n36;
  assign test_so = n19;

  SDFFRQX2M \BIT_COUNT_reg[3]  ( .D(n52), .SI(n30), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(BIT_COUNT[3]) );
  SDFFRQX2M \BIT_COUNT_reg[2]  ( .D(n53), .SI(n29), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(BIT_COUNT[2]) );
  SDFFRQX2M \BIT_COUNT_reg[0]  ( .D(n55), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(BIT_COUNT[0]) );
  SDFFRQX2M \BIT_COUNT_reg[1]  ( .D(n54), .SI(n27), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(BIT_COUNT[1]) );
  SDFFRQX2M \EDGE_COUNT_reg[4]  ( .D(n43), .SI(n12), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(EDGE_COUNT[4]) );
  SDFFRQX2M \EDGE_COUNT_reg[0]  ( .D(n51), .SI(n33), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(EDGE_COUNT[0]) );
  SDFFRQX2M \EDGE_COUNT_reg[1]  ( .D(n47), .SI(n11), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(EDGE_COUNT[1]) );
  SDFFRQX2M \EDGE_COUNT_reg[2]  ( .D(n45), .SI(n13), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(EDGE_COUNT[2]) );
  SDFFRQX2M \EDGE_COUNT_reg[3]  ( .D(n49), .SI(n18), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(EDGE_COUNT[3]) );
  OAI31X1M U3 ( .A0(n32), .A1(n7), .A2(n34), .B0(EN), .Y(n31) );
  INVX2M U4 ( .A(n4), .Y(n3) );
  INVX2M U5 ( .A(n23), .Y(n10) );
  NAND4X2M U6 ( .A(n6), .B(COUNT_RST), .C(n21), .D(n26), .Y(n4) );
  AOI21X2M U7 ( .A0(n27), .A1(n3), .B0(n31), .Y(n5) );
  INVX2M U8 ( .A(n31), .Y(n6) );
  OAI2BB2X1M U9 ( .B0(EN), .B1(n18), .A0N(N21), .A1N(n8), .Y(n45) );
  OAI2BB2X1M U10 ( .B0(EN), .B1(n13), .A0N(N20), .A1N(n8), .Y(n47) );
  OAI2BB2X1M U11 ( .B0(EN), .B1(n12), .A0N(N22), .A1N(n8), .Y(n49) );
  NOR3X2M U12 ( .A(n13), .B(n11), .C(n18), .Y(n37) );
  OAI31X1M U13 ( .A0(n25), .A1(n23), .A2(n12), .B0(n26), .Y(n35) );
  NAND2X2M U14 ( .A(n37), .B(n19), .Y(n23) );
  AND2X2M U15 ( .A(n25), .B(n24), .Y(n17) );
  INVX2M U16 ( .A(n22), .Y(n9) );
  OAI31X1M U17 ( .A0(n24), .A1(EDGE_COUNT[3]), .A2(n23), .B0(n21), .Y(n34) );
  OAI21BX1M U18 ( .A0(n22), .A1(n20), .B0N(n35), .Y(n32) );
  INVX2M U19 ( .A(COUNT_RST), .Y(n7) );
  OAI32X1M U20 ( .A0(n27), .A1(BIT_COUNT[1]), .A2(n4), .B0(n5), .B1(n29), .Y(
        n54) );
  INVX2M U21 ( .A(BIT_COUNT[1]), .Y(n29) );
  OAI32X1M U22 ( .A0(n30), .A1(BIT_COUNT[3]), .A2(n1), .B0(n28), .B1(n33), .Y(
        n52) );
  INVX2M U23 ( .A(BIT_COUNT[3]), .Y(n33) );
  AOI21X2M U24 ( .A0(n3), .A1(n30), .B0(n2), .Y(n28) );
  INVX2M U25 ( .A(BIT_COUNT[2]), .Y(n30) );
  OAI22X1M U26 ( .A0(n6), .A1(n27), .B0(BIT_COUNT[0]), .B1(n4), .Y(n55) );
  OAI21X2M U27 ( .A0(BIT_COUNT[1]), .A1(n4), .B0(n5), .Y(n2) );
  OAI2BB2X1M U28 ( .B0(BIT_COUNT[2]), .B1(n1), .A0N(n2), .A1N(BIT_COUNT[2]), 
        .Y(n53) );
  NAND3X2M U29 ( .A(BIT_COUNT[0]), .B(n3), .C(BIT_COUNT[1]), .Y(n1) );
  OAI2BB2XLM U30 ( .B0(EN), .B1(n19), .A0N(N23), .A1N(n8), .Y(n43) );
  OAI2B2X1M U31 ( .A1N(n8), .A0(EDGE_COUNT[0]), .B0(EN), .B1(n11), .Y(n51) );
  INVX2M U32 ( .A(n14), .Y(n8) );
  OAI211XLM U33 ( .A0(n15), .A1(n16), .B0(COUNT_RST), .C0(EN), .Y(n14) );
  OAI221X1M U34 ( .A0(n12), .A1(n24), .B0(EDGE_COUNT[3]), .B1(n25), .C0(n26), 
        .Y(n15) );
  OAI221X1M U35 ( .A0(n17), .A1(n10), .B0(n9), .B1(n20), .C0(n21), .Y(n16) );
  NOR3X2M U36 ( .A(PRESCALE[2]), .B(PRESCALE[1]), .C(PRESCALE[0]), .Y(n21) );
  OAI21X2M U37 ( .A0(PRESCALE[5]), .A1(n17), .B0(n20), .Y(n26) );
  NAND3BX2M U38 ( .AN(PRESCALE[3]), .B(n36), .C(PRESCALE[5]), .Y(n20) );
  NAND3X2M U39 ( .A(EDGE_COUNT[3]), .B(n37), .C(EDGE_COUNT[4]), .Y(n22) );
  NAND2X2M U40 ( .A(PRESCALE[3]), .B(n36), .Y(n24) );
  INVX2M U41 ( .A(EDGE_COUNT[3]), .Y(n12) );
  NAND2BX2M U42 ( .AN(PRESCALE[3]), .B(PRESCALE[4]), .Y(n25) );
  INVX2M U43 ( .A(EDGE_COUNT[2]), .Y(n18) );
  INVX2M U44 ( .A(EDGE_COUNT[1]), .Y(n13) );
  INVX2M U45 ( .A(EDGE_COUNT[0]), .Y(n11) );
  INVX2M U46 ( .A(PRESCALE[4]), .Y(n36) );
  INVX2M U47 ( .A(EDGE_COUNT[4]), .Y(n19) );
  INVX2M U48 ( .A(BIT_COUNT[0]), .Y(n27) );
  ADDHX1M U58 ( .A(EDGE_COUNT[2]), .B(\add_25/carry[2] ), .CO(
        \add_25/carry[3] ), .S(N21) );
  ADDHX1M U59 ( .A(EDGE_COUNT[1]), .B(EDGE_COUNT[0]), .CO(\add_25/carry[2] ), 
        .S(N20) );
  ADDHX1M U60 ( .A(EDGE_COUNT[3]), .B(\add_25/carry[3] ), .CO(
        \add_25/carry[4] ), .S(N22) );
  CLKXOR2X2M U61 ( .A(\add_25/carry[4] ), .B(EDGE_COUNT[4]), .Y(N23) );
endmodule


module UART_RX_parity_checker_test_1 ( CLK, RST, EN, PARITY_TYPE, SAMPLED_BITS, 
        SAMPLED_PARITY_BIT, ERR_RST, PARITY_ERROR, test_si, test_se );
  input [7:0] SAMPLED_BITS;
  input CLK, RST, EN, PARITY_TYPE, SAMPLED_PARITY_BIT, ERR_RST, test_si,
         test_se;
  output PARITY_ERROR;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n2;

  SDFFRQX2M PARITY_ERROR_reg ( .D(n10), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(PARITY_ERROR) );
  NOR2BX2M U4 ( .AN(ERR_RST), .B(n3), .Y(n10) );
  AOI22X1M U5 ( .A0(EN), .A1(n4), .B0(PARITY_ERROR), .B1(n2), .Y(n3) );
  XOR3XLM U6 ( .A(n5), .B(n6), .C(n7), .Y(n4) );
  INVX2M U7 ( .A(EN), .Y(n2) );
  XOR3XLM U8 ( .A(SAMPLED_BITS[5]), .B(SAMPLED_BITS[4]), .C(n9), .Y(n6) );
  XNOR2X2M U9 ( .A(SAMPLED_BITS[7]), .B(SAMPLED_BITS[6]), .Y(n9) );
  CLKXOR2X2M U10 ( .A(SAMPLED_PARITY_BIT), .B(PARITY_TYPE), .Y(n5) );
  XOR3XLM U11 ( .A(SAMPLED_BITS[1]), .B(SAMPLED_BITS[0]), .C(n8), .Y(n7) );
  XNOR2X2M U12 ( .A(SAMPLED_BITS[3]), .B(SAMPLED_BITS[2]), .Y(n8) );
endmodule


module UART_RX_start_checker_test_1 ( CLK, RST, EN, sampled_bit, glitch_rst, 
        start_glitch, test_si, test_se );
  input CLK, RST, EN, sampled_bit, glitch_rst, test_si, test_se;
  output start_glitch;
  wire   n3, n4, n2;

  SDFFRQX2M start_glitch_reg ( .D(n4), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(start_glitch) );
  NOR2BX2M U4 ( .AN(glitch_rst), .B(n3), .Y(n4) );
  AOI22X1M U5 ( .A0(start_glitch), .A1(n2), .B0(sampled_bit), .B1(EN), .Y(n3)
         );
  INVX2M U6 ( .A(EN), .Y(n2) );
endmodule


module UART_RX_stop_checker_test_1 ( CLK, RST, EN, sampled_bit, error_rst, 
        stop_error, test_si, test_se );
  input CLK, RST, EN, sampled_bit, error_rst, test_si, test_se;
  output stop_error;
  wire   n3, n4, n2;

  SDFFRQX2M stop_error_reg ( .D(n4), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(stop_error) );
  NOR2BX2M U4 ( .AN(error_rst), .B(n3), .Y(n4) );
  AOI2BB2XLM U5 ( .B0(n2), .B1(stop_error), .A0N(sampled_bit), .A1N(n2), .Y(n3) );
  INVX2M U6 ( .A(EN), .Y(n2) );
endmodule


module UART_RX_TOP_test_1 ( CLK, RST, PAR_EN, PAR_TYP, RX_IN, PRESCALE, 
        DATA_VALID, Stop_Error, Parity_Error, P_DATA, test_si2, test_si1, 
        test_so1, test_se );
  input [5:0] PRESCALE;
  output [7:0] P_DATA;
  input CLK, RST, PAR_EN, PAR_TYP, RX_IN, test_si2, test_si1, test_se;
  output DATA_VALID, Stop_Error, Parity_Error, test_so1;
  wire   start_glitch, start_check_en, stop_check_en, par_check_en,
         deserializer_en, counter_en, sampler_en, count_rst, glitch_rst,
         par_err_rst, stop_err_rst, sampled_bit, n1, n2, n3, n4, n5, n6;
  wire   [3:0] bit_count;
  wire   [4:0] edge_count;
  assign test_so1 = start_glitch;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_RX_FSM_test_1 F1 ( .CLK(CLK), .RST(n1), .RX_IN(RX_IN), .PAR_EN(PAR_EN), 
        .START_GLITCH(start_glitch), .STOP_ERR(Stop_Error), .PAR_ERR(
        Parity_Error), .BIT_COUNT(bit_count), .EDGE_COUNT(edge_count), 
        .PRESCALE(PRESCALE), .DATA_VALID(DATA_VALID), .COUNT_RST(count_rst), 
        .GLITCH_RST(glitch_rst), .PAR_ERR_RST(par_err_rst), .STOP_ERR_RST(
        stop_err_rst), .START_CHECK_EN(start_check_en), .STOP_CHECK_EN(
        stop_check_en), .PAR_CHECK_EN(par_check_en), .DESERIALIZER_EN(
        deserializer_en), .COUNTER_EN(counter_en), .SAMPLER_EN(sampler_en), 
        .test_si(n4), .test_so(n3), .test_se(test_se) );
  UART_RX_data_sampler_test_1 D1 ( .CLK(CLK), .RST(n1), .EN(sampler_en), 
        .RX_IN(RX_IN), .sampled_bit(sampled_bit), .test_si(test_si1), 
        .test_so(n6), .test_se(test_se) );
  UART_RX_deserializer_test_1 D2 ( .CLK(CLK), .RST(n1), .EN(deserializer_en), 
        .sampled_bit(sampled_bit), .P_DATA(P_DATA), .test_si(n6), .test_so(n5), 
        .test_se(test_se) );
  UART_RX_edge_bit_counter_test_1 E1 ( .CLK(CLK), .RST(n1), .EN(counter_en), 
        .COUNT_RST(count_rst), .PRESCALE(PRESCALE), .EDGE_COUNT(edge_count), 
        .BIT_COUNT(bit_count), .test_si(n5), .test_so(n4), .test_se(test_se)
         );
  UART_RX_parity_checker_test_1 P1 ( .CLK(CLK), .RST(n1), .EN(par_check_en), 
        .PARITY_TYPE(PAR_TYP), .SAMPLED_BITS(P_DATA), .SAMPLED_PARITY_BIT(
        sampled_bit), .ERR_RST(par_err_rst), .PARITY_ERROR(Parity_Error), 
        .test_si(n3), .test_se(test_se) );
  UART_RX_start_checker_test_1 S1 ( .CLK(CLK), .RST(n1), .EN(start_check_en), 
        .sampled_bit(sampled_bit), .glitch_rst(glitch_rst), .start_glitch(
        start_glitch), .test_si(Parity_Error), .test_se(test_se) );
  UART_RX_stop_checker_test_1 S2 ( .CLK(CLK), .RST(n1), .EN(stop_check_en), 
        .sampled_bit(sampled_bit), .error_rst(stop_err_rst), .stop_error(
        Stop_Error), .test_si(test_si2), .test_se(test_se) );
endmodule


module UART_TX_FSM_test_1 ( CLK, RST, DATA_VALID, PAR_EN, SER_DONE, SER_EN, 
        PAR_CALC_EN, MUX_SELECT, BUSY, test_si, test_so, test_se );
  output [2:0] MUX_SELECT;
  input CLK, RST, DATA_VALID, PAR_EN, SER_DONE, test_si, test_se;
  output SER_EN, PAR_CALC_EN, BUSY, test_so;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n8, n9, n11,
         n12, n13, n14, n15, n27;
  wire   [4:0] current_state;
  wire   [4:0] next_state;
  assign test_so = n14;

  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n8), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[4]  ( .D(next_state[4]), .SI(current_state[3]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[4]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n15), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .SI(n13), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[3]) );
  SDFFSX1M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .SN(RST), .Q(current_state[0]), .QN(n8) );
  INVX2M U9 ( .A(MUX_SELECT[2]), .Y(BUSY) );
  NOR2X2M U10 ( .A(MUX_SELECT[0]), .B(SER_EN), .Y(MUX_SELECT[2]) );
  NAND2X2M U11 ( .A(n20), .B(n19), .Y(SER_EN) );
  NAND3X2M U12 ( .A(n15), .B(n14), .C(n8), .Y(n17) );
  INVX2M U13 ( .A(n18), .Y(n12) );
  INVX2M U14 ( .A(n21), .Y(n11) );
  NOR2X2M U15 ( .A(current_state[4]), .B(current_state[3]), .Y(n22) );
  NAND4X2M U16 ( .A(n22), .B(current_state[2]), .C(n8), .D(n15), .Y(n19) );
  NAND3X2M U17 ( .A(n25), .B(n22), .C(current_state[1]), .Y(n20) );
  NOR2X2M U18 ( .A(n16), .B(n17), .Y(next_state[4]) );
  AOI32X1M U19 ( .A0(n18), .A1(n27), .A2(SER_DONE), .B0(current_state[3]), 
        .B1(n13), .Y(n16) );
  OAI32X1M U20 ( .A0(n9), .A1(SER_EN), .A2(n11), .B0(DATA_VALID), .B1(n21), 
        .Y(next_state[0]) );
  INVX2M U21 ( .A(n23), .Y(n9) );
  NOR2X2M U22 ( .A(current_state[2]), .B(current_state[0]), .Y(n25) );
  NOR4BX1M U23 ( .AN(SER_DONE), .B(n12), .C(n17), .D(n27), .Y(next_state[3])
         );
  NAND4X2M U24 ( .A(n25), .B(current_state[3]), .C(n15), .D(n14), .Y(n23) );
  NOR2X2M U25 ( .A(n13), .B(current_state[3]), .Y(n18) );
  NAND4X2M U26 ( .A(current_state[0]), .B(n22), .C(n15), .D(n13), .Y(n21) );
  NAND2X2M U27 ( .A(n26), .B(n23), .Y(MUX_SELECT[0]) );
  NAND4BX1M U28 ( .AN(current_state[3]), .B(current_state[4]), .C(n25), .D(n15), .Y(n26) );
  INVX2M U29 ( .A(n20), .Y(PAR_CALC_EN) );
  OAI21X2M U30 ( .A0(SER_DONE), .A1(n19), .B0(n20), .Y(next_state[2]) );
  INVX2M U31 ( .A(current_state[1]), .Y(n15) );
  INVX2M U32 ( .A(current_state[2]), .Y(n13) );
  INVX2M U33 ( .A(current_state[4]), .Y(n14) );
  INVX2M U34 ( .A(PAR_EN), .Y(n27) );
  AND2X2M U35 ( .A(DATA_VALID), .B(n11), .Y(next_state[1]) );
  AOI21X2M U36 ( .A0(n12), .A1(n24), .B0(n17), .Y(MUX_SELECT[1]) );
  NAND2X2M U37 ( .A(current_state[3]), .B(n13), .Y(n24) );
endmodule


module UART_TX_Serializer_test_1 ( CLK, RST, P_DATA, DATA_VALID, EN, S_DATA, 
        DONE, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input CLK, RST, DATA_VALID, EN, test_si, test_se;
  output S_DATA, DONE, test_so;
  wire   N4, N5, N6, \count[3] , N18, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n15,
         n16, n17, n18, n19, n20, n21, n43, n44;
  wire   [7:0] temp_registers;
  assign test_so = temp_registers[7];

  SDFFRQX2M S_DATA_reg ( .D(n29), .SI(DONE), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(S_DATA) );
  SDFFRQX2M \temp_registers_reg[5]  ( .D(n40), .SI(temp_registers[4]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(temp_registers[5]) );
  SDFFRQX2M \temp_registers_reg[1]  ( .D(n36), .SI(temp_registers[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(temp_registers[1]) );
  SDFFRQX2M \temp_registers_reg[7]  ( .D(n42), .SI(temp_registers[6]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(temp_registers[7]) );
  SDFFRQX2M \temp_registers_reg[3]  ( .D(n38), .SI(temp_registers[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(temp_registers[3]) );
  SDFFRQX2M \temp_registers_reg[6]  ( .D(n41), .SI(temp_registers[5]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(temp_registers[6]) );
  SDFFRQX2M \temp_registers_reg[2]  ( .D(n37), .SI(temp_registers[1]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(temp_registers[2]) );
  SDFFRQX2M \temp_registers_reg[4]  ( .D(n39), .SI(temp_registers[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(temp_registers[4]) );
  SDFFRQX2M \temp_registers_reg[0]  ( .D(n35), .SI(n19), .SE(test_se), .CK(CLK), .RN(RST), .Q(temp_registers[0]) );
  SDFFRQX2M DONE_reg ( .D(n30), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(DONE) );
  SDFFRQX2M \count_reg[3]  ( .D(n31), .SI(n18), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(\count[3] ) );
  SDFFRQX2M \count_reg[2]  ( .D(n32), .SI(n21), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(N6) );
  SDFFRQX2M \count_reg[1]  ( .D(n33), .SI(n17), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(N5) );
  SDFFRQX2M \count_reg[0]  ( .D(n34), .SI(S_DATA), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(N4) );
  INVX2M U17 ( .A(EN), .Y(n44) );
  INVX2M U18 ( .A(n22), .Y(n20) );
  AOI21X2M U19 ( .A0(n19), .A1(n17), .B0(n44), .Y(n27) );
  OAI21X2M U20 ( .A0(EN), .A1(n19), .B0(n23), .Y(n31) );
  INVX2M U21 ( .A(n28), .Y(n43) );
  OAI32X1M U22 ( .A0(n17), .A1(N5), .A2(n20), .B0(n27), .B1(n21), .Y(n33) );
  INVX2M U23 ( .A(N5), .Y(n21) );
  OAI32X1M U24 ( .A0(n25), .A1(N6), .A2(n20), .B0(n26), .B1(n18), .Y(n32) );
  INVX2M U25 ( .A(N6), .Y(n18) );
  NAND2X2M U26 ( .A(N5), .B(N4), .Y(n25) );
  OA21X2M U27 ( .A0(N5), .A1(\count[3] ), .B0(n27), .Y(n26) );
  NOR2X2M U28 ( .A(n44), .B(\count[3] ), .Y(n22) );
  OAI22X1M U29 ( .A0(EN), .A1(n17), .B0(N4), .B1(n20), .Y(n34) );
  NAND4X2M U30 ( .A(N6), .B(N5), .C(N4), .D(n22), .Y(n23) );
  NAND2X2M U31 ( .A(DATA_VALID), .B(n44), .Y(n28) );
  INVX2M U32 ( .A(N4), .Y(n17) );
  INVX2M U33 ( .A(\count[3] ), .Y(n19) );
  NAND2X2M U34 ( .A(n23), .B(n24), .Y(n30) );
  OAI21X2M U35 ( .A0(n44), .A1(n19), .B0(DONE), .Y(n24) );
  AO22X1M U36 ( .A0(N18), .A1(n22), .B0(S_DATA), .B1(n20), .Y(n29) );
  MX2X2M U37 ( .A(n16), .B(n15), .S0(N6), .Y(N18) );
  MX4X1M U38 ( .A(temp_registers[0]), .B(temp_registers[1]), .C(
        temp_registers[2]), .D(temp_registers[3]), .S0(N4), .S1(N5), .Y(n16)
         );
  MX4X1M U39 ( .A(temp_registers[4]), .B(temp_registers[5]), .C(
        temp_registers[6]), .D(temp_registers[7]), .S0(N4), .S1(N5), .Y(n15)
         );
  AO22X1M U40 ( .A0(P_DATA[0]), .A1(n43), .B0(temp_registers[0]), .B1(n28), 
        .Y(n35) );
  AO22X1M U41 ( .A0(P_DATA[1]), .A1(n43), .B0(temp_registers[1]), .B1(n28), 
        .Y(n36) );
  AO22X1M U42 ( .A0(P_DATA[2]), .A1(n43), .B0(temp_registers[2]), .B1(n28), 
        .Y(n37) );
  AO22X1M U43 ( .A0(P_DATA[3]), .A1(n43), .B0(temp_registers[3]), .B1(n28), 
        .Y(n38) );
  AO22X1M U44 ( .A0(P_DATA[4]), .A1(n43), .B0(temp_registers[4]), .B1(n28), 
        .Y(n39) );
  AO22X1M U45 ( .A0(P_DATA[5]), .A1(n43), .B0(temp_registers[5]), .B1(n28), 
        .Y(n40) );
  AO22X1M U46 ( .A0(P_DATA[6]), .A1(n43), .B0(temp_registers[6]), .B1(n28), 
        .Y(n41) );
  AO22X1M U47 ( .A0(P_DATA[7]), .A1(n43), .B0(temp_registers[7]), .B1(n28), 
        .Y(n42) );
endmodule


module UART_TX_Parity_Calculator_test_1 ( CLK, RST, DATA, TYPE, EN, PARITY_BIT, 
        test_si, test_se );
  input [7:0] DATA;
  input CLK, RST, TYPE, EN, test_si, test_se;
  output PARITY_BIT;
  wire   n1, n3, n4, n5, n6, n8, n2;

  SDFFRQX2M PARITY_BIT_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(PARITY_BIT) );
  XOR3XLM U2 ( .A(DATA[1]), .B(DATA[0]), .C(n5), .Y(n4) );
  XNOR2X2M U3 ( .A(DATA[3]), .B(DATA[2]), .Y(n5) );
  XOR3XLM U4 ( .A(DATA[5]), .B(DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U5 ( .A(DATA[7]), .B(DATA[6]), .Y(n6) );
  OAI2BB2X1M U6 ( .B0(n1), .B1(n2), .A0N(PARITY_BIT), .A1N(n2), .Y(n8) );
  INVX2M U7 ( .A(EN), .Y(n2) );
  XOR3XLM U8 ( .A(n3), .B(TYPE), .C(n4), .Y(n1) );
endmodule


module UART_TX_MUX ( SELECT, FIRST, LAST, DATA, PARITY, IDLE, OUT );
  input [2:0] SELECT;
  input FIRST, LAST, DATA, PARITY, IDLE;
  output OUT;
  wire   n2, n3, n4, n1;

  INVX2M U1 ( .A(SELECT[0]), .Y(n1) );
  OAI2BB2X4M U2 ( .B0(n2), .B1(SELECT[2]), .A0N(SELECT[2]), .A1N(IDLE), .Y(OUT) );
  AOI2BB2XLM U3 ( .B0(SELECT[1]), .B1(n3), .A0N(SELECT[1]), .A1N(n4), .Y(n2)
         );
  AO22X1M U4 ( .A0(DATA), .A1(n1), .B0(PARITY), .B1(SELECT[0]), .Y(n3) );
  AOI22X1M U5 ( .A0(FIRST), .A1(n1), .B0(SELECT[0]), .B1(LAST), .Y(n4) );
endmodule


module UART_TX_TOP_test_1 ( clk, rst, parity_enable, parity_type, 
        parallel_data, data_valid, tx_out, busy, test_si, test_so, test_se );
  input [7:0] parallel_data;
  input clk, rst, parity_enable, parity_type, data_valid, test_si, test_se;
  output tx_out, busy, test_so;
  wire   flag, ser_done, ser_en, par_calc_en, ser_data, parity_bit, n1, n3, n5,
         n7, n9, n11, n13, n15, n17, n19, n20, n21, n22, n23;
  wire   [7:0] DATA;
  wire   [2:0] sel;
  assign test_so = flag;

  SDFFRQX2M \DATA_reg[1]  ( .D(n15), .SI(DATA[0]), .SE(test_se), .CK(clk), 
        .RN(n19), .Q(DATA[1]) );
  SDFFRQX2M \DATA_reg[5]  ( .D(n7), .SI(DATA[4]), .SE(test_se), .CK(clk), .RN(
        n19), .Q(DATA[5]) );
  SDFFRQX2M \DATA_reg[0]  ( .D(n17), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(n19), .Q(DATA[0]) );
  SDFFRQX2M \DATA_reg[4]  ( .D(n9), .SI(DATA[3]), .SE(test_se), .CK(clk), .RN(
        n19), .Q(DATA[4]) );
  SDFFRQX2M \DATA_reg[3]  ( .D(n11), .SI(DATA[2]), .SE(test_se), .CK(clk), 
        .RN(n19), .Q(DATA[3]) );
  SDFFRQX2M \DATA_reg[2]  ( .D(n13), .SI(DATA[1]), .SE(test_se), .CK(clk), 
        .RN(n19), .Q(DATA[2]) );
  SDFFRQX2M \DATA_reg[6]  ( .D(n5), .SI(DATA[5]), .SE(test_se), .CK(clk), .RN(
        n19), .Q(DATA[6]) );
  SDFFRQX2M \DATA_reg[7]  ( .D(n3), .SI(DATA[6]), .SE(test_se), .CK(clk), .RN(
        n19), .Q(DATA[7]) );
  SDFFRQX2M flag_reg ( .D(n21), .SI(n22), .SE(test_se), .CK(clk), .RN(n19), 
        .Q(flag) );
  INVX2M U3 ( .A(n1), .Y(n21) );
  INVX2M U4 ( .A(n20), .Y(n19) );
  INVX2M U5 ( .A(rst), .Y(n20) );
  NAND2BX2M U6 ( .AN(busy), .B(data_valid), .Y(n1) );
  AO22X1M U7 ( .A0(parallel_data[7]), .A1(n21), .B0(DATA[7]), .B1(n1), .Y(n3)
         );
  AO22X1M U8 ( .A0(parallel_data[6]), .A1(n21), .B0(DATA[6]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(parallel_data[5]), .A1(n21), .B0(DATA[5]), .B1(n1), .Y(n7)
         );
  AO22X1M U10 ( .A0(parallel_data[4]), .A1(n21), .B0(DATA[4]), .B1(n1), .Y(n9)
         );
  AO22X1M U11 ( .A0(parallel_data[3]), .A1(n21), .B0(DATA[3]), .B1(n1), .Y(n11) );
  AO22X1M U12 ( .A0(parallel_data[2]), .A1(n21), .B0(DATA[2]), .B1(n1), .Y(n13) );
  AO22X1M U22 ( .A0(parallel_data[1]), .A1(n21), .B0(DATA[1]), .B1(n1), .Y(n15) );
  AO22X1M U23 ( .A0(parallel_data[0]), .A1(n21), .B0(DATA[0]), .B1(n1), .Y(n17) );
  UART_TX_FSM_test_1 F1 ( .CLK(clk), .RST(n19), .DATA_VALID(flag), .PAR_EN(
        parity_enable), .SER_DONE(ser_done), .SER_EN(ser_en), .PAR_CALC_EN(
        par_calc_en), .MUX_SELECT(sel), .BUSY(busy), .test_si(DATA[7]), 
        .test_so(n23), .test_se(test_se) );
  UART_TX_Serializer_test_1 S1 ( .CLK(clk), .RST(n19), .P_DATA(DATA), 
        .DATA_VALID(flag), .EN(ser_en), .S_DATA(ser_data), .DONE(ser_done), 
        .test_si(parity_bit), .test_so(n22), .test_se(test_se) );
  UART_TX_Parity_Calculator_test_1 P1 ( .CLK(clk), .RST(n19), .DATA(DATA), 
        .TYPE(parity_type), .EN(par_calc_en), .PARITY_BIT(parity_bit), 
        .test_si(n23), .test_se(test_se) );
  UART_TX_MUX M1 ( .SELECT(sel), .FIRST(1'b0), .LAST(1'b1), .DATA(ser_data), 
        .PARITY(parity_bit), .IDLE(1'b1), .OUT(tx_out) );
endmodule


module PULSE_GEN_test_1 ( CLK, RST, LVL_SIG, PULSE_SIG, test_si, test_so, 
        test_se );
  input CLK, RST, LVL_SIG, test_si, test_se;
  output PULSE_SIG, test_so;
  wire   pls_flop, rcv_flop;
  assign test_so = rcv_flop;

  SDFFRQX2M rcv_flop_reg ( .D(LVL_SIG), .SI(pls_flop), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(rcv_flop) );
  SDFFRQX2M pls_flop_reg ( .D(rcv_flop), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(pls_flop) );
  NOR2BX2M U5 ( .AN(rcv_flop), .B(pls_flop), .Y(PULSE_SIG) );
endmodule


module System_Top ( SE, scan_clk, scan_rst, test_mode, SI, REF_CLK, UART_CLK, 
        RST, RX_IN, Stop_Error, Parity_Error, TX_OUT, SO );
  input [3:0] SI;
  output [3:0] SO;
  input SE, scan_clk, scan_rst, test_mode, REF_CLK, UART_CLK, RST, RX_IN;
  output Stop_Error, Parity_Error, TX_OUT;
  wire   REF_SCAN_CLK, UART_SCAN_CLK, RX_CLK, UART_RX_SCAN_CLK, TX_CLK,
         UART_TX_SCAN_CLK, RSTN_SCAN_RST, SYNC_REF_RST, SYNC_REF_SCAN_RST,
         SYNC_UART_RST, SYNC_UART_SCAN_RST, rx_valid, sync_valid, gated_clk,
         alu_en, out_valid, wr_en, rd_en, rd_data_valid, _0_net_, gate_en,
         fifo_w_inc, fifo_full, fifo_r_inc, fifo_empty, tx_busy, n2, n3, n4,
         n5, n6, n7, n8, n10, n11, n12, n13, n14, n18, n19, n20, n23, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [7:0] reg2;
  wire   [2:0] rx_div_ratio;
  wire   [7:0] rx_data;
  wire   [7:0] sync_data;
  wire   [7:0] reg0;
  wire   [7:0] reg1;
  wire   [3:0] alu_fun;
  wire   [15:0] alu_out;
  wire   [7:0] wr_data;
  wire   [3:0] address;
  wire   [7:0] rd_data;
  wire   [7:0] reg3;
  wire   [7:0] fifo_wr_data;
  wire   [7:0] tx_data;
  assign SO[2] = reg3[0];

  AND2X2M U11 ( .A(n3), .B(n4), .Y(rx_div_ratio[1]) );
  AND2X2M U12 ( .A(n2), .B(n3), .Y(rx_div_ratio[2]) );
  OAI21X2M U13 ( .A0(n2), .A1(n4), .B0(n3), .Y(rx_div_ratio[0]) );
  OR2X2M U14 ( .A(gate_en), .B(n5), .Y(_0_net_) );
  NOR3BX2M U15 ( .AN(reg2[6]), .B(reg2[5]), .C(reg2[7]), .Y(n4) );
  NOR3BX2M U16 ( .AN(reg2[5]), .B(reg2[6]), .C(reg2[7]), .Y(n2) );
  NOR3X2M U17 ( .A(reg2[4]), .B(reg2[3]), .C(reg2[2]), .Y(n3) );
  INVX2M U18 ( .A(fifo_empty), .Y(n8) );
  INVX4M U19 ( .A(n7), .Y(n6) );
  INVX2M U20 ( .A(SYNC_REF_SCAN_RST), .Y(n7) );
  BUFX2M U21 ( .A(test_mode), .Y(n5) );
  DLY1X1M U23 ( .A(n34), .Y(n26) );
  DLY1X1M U24 ( .A(n33), .Y(n27) );
  INVXLM U25 ( .A(n40), .Y(n28) );
  INVXLM U26 ( .A(n28), .Y(n29) );
  INVXLM U27 ( .A(n28), .Y(n30) );
  INVXLM U28 ( .A(n28), .Y(n31) );
  INVXLM U29 ( .A(n41), .Y(n32) );
  INVXLM U30 ( .A(n32), .Y(n33) );
  INVXLM U31 ( .A(n32), .Y(n34) );
  INVXLM U32 ( .A(n32), .Y(n35) );
  INVXLM U33 ( .A(n39), .Y(n36) );
  INVXLM U34 ( .A(n36), .Y(n37) );
  INVXLM U35 ( .A(SE), .Y(n38) );
  INVXLM U36 ( .A(n38), .Y(n39) );
  INVXLM U37 ( .A(n38), .Y(n40) );
  INVXLM U38 ( .A(n38), .Y(n41) );
  mux2X1_1 U0_mux2X1 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(n5), .OUT(
        REF_SCAN_CLK) );
  mux2X1_4 U1_mux2X1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(n5), .OUT(
        UART_SCAN_CLK) );
  mux2X1_3 U2_mux2X1 ( .IN_0(RX_CLK), .IN_1(scan_clk), .SEL(n5), .OUT(
        UART_RX_SCAN_CLK) );
  mux2X1_2 U3_mux2X1 ( .IN_0(TX_CLK), .IN_1(scan_clk), .SEL(n5), .OUT(
        UART_TX_SCAN_CLK) );
  mux2X1_0 U4_mux2X1 ( .IN_0(RST), .IN_1(scan_rst), .SEL(n5), .OUT(
        RSTN_SCAN_RST) );
  mux2X1_6 U5_mux2X1 ( .IN_0(SYNC_REF_RST), .IN_1(scan_rst), .SEL(n5), .OUT(
        SYNC_REF_SCAN_RST) );
  mux2X1_5 U6_mux2X1 ( .IN_0(SYNC_UART_RST), .IN_1(scan_rst), .SEL(n5), .OUT(
        SYNC_UART_SCAN_RST) );
  RST_SYNC_test_0 RST_SYNC_1 ( .RST(RSTN_SCAN_RST), .CLK(REF_SCAN_CLK), 
        .SYNC_RST(SYNC_REF_RST), .test_si(n19), .test_se(n37) );
  RST_SYNC_test_1 RST_SYNC_2 ( .RST(RSTN_SCAN_RST), .CLK(UART_SCAN_CLK), 
        .SYNC_RST(SYNC_UART_RST), .test_si(SYNC_REF_RST), .test_se(n37) );
  DATA_SYNC_test_1 DATA_SYNC ( .CLK(REF_SCAN_CLK), .RST(n6), .unsync_bus(
        rx_data), .bus_enable(rx_valid), .sync_bus(sync_data), 
        .enable_pulse_d(sync_valid), .test_si(out_valid), .test_so(n23), 
        .test_se(n35) );
  ALU_test_1 ALU ( .CLK(gated_clk), .RST(n6), .EN(alu_en), .A(reg0), .B(reg1), 
        .ALU_FUN(alu_fun), .ALU_OUT(alu_out), .OUT_VALID(out_valid), .test_si(
        SI[3]), .test_se(n30) );
  RegFile_test_1 RegFile ( .CLK(REF_SCAN_CLK), .RST(n6), .WrData(wr_data), 
        .Address(address), .WrEn(wr_en), .RdEn(rd_en), .RdData(rd_data), 
        .RdData_Valid(rd_data_valid), .REG0(reg0), .REG1(reg1), .REG2(reg2), 
        .REG3(reg3), .test_si3(SI[0]), .test_si2(SI[1]), .test_si1(n18), 
        .test_so2(n14), .test_so1(SO[1]), .test_se(SE) );
  CLK_GATE CLK_GATE ( .CLK(REF_SCAN_CLK), .EN(_0_net_), .GATED_CLK(gated_clk)
         );
  ClkDiv_test_1 TX_CLK_DIV ( .i_ref_clk(UART_SCAN_CLK), .i_rst_n(
        SYNC_UART_SCAN_RST), .i_clk_en(1'b1), .i_div_ratio(reg3), .o_div_clk(
        TX_CLK), .test_si(n13), .test_so(n12), .test_se(n29) );
  ClkDiv_test_0 RX_CLK_DIV ( .i_ref_clk(UART_SCAN_CLK), .i_rst_n(
        SYNC_UART_SCAN_RST), .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, rx_div_ratio}), .o_div_clk(RX_CLK), .test_si(SYNC_UART_RST), .test_so(n18), .test_se(n29) );
  SYS_CTRL_test_1 SYS_CTRL ( .CLK(REF_SCAN_CLK), .RST(n6), .ALU_OUT(alu_out), 
        .RdData(rd_data), .RX_P_DATA(sync_data), .OUT_VALID(out_valid), 
        .RX_D_VLD(sync_valid), .RdData_Valid(rd_data_valid), .FIFO_FULL(
        fifo_full), .ALU_EN(alu_en), .GATE_EN(gate_en), .ALU_FUN(alu_fun), 
        .FIFO_WR_DATA(fifo_wr_data), .WrData(wr_data), .Address(address), 
        .WrEn(wr_en), .RdEn(rd_en), .FIFO_W_INC(fifo_w_inc), .test_si(n14), 
        .test_so(n13), .test_se(n31) );
  FIFO_TOP_test_1 FIFO_TOP ( .wclk(REF_SCAN_CLK), .rclk(UART_TX_SCAN_CLK), 
        .wrst_n(n6), .rrst_n(SYNC_UART_SCAN_RST), .rinc(fifo_r_inc), .winc(
        fifo_w_inc), .wdata(fifo_wr_data), .rdata(tx_data), .wfull(fifo_full), 
        .rempty(fifo_empty), .test_si2(SI[2]), .test_si1(n23), .test_so2(n20), 
        .test_so1(SO[3]), .test_se(SE) );
  UART_RX_TOP_test_1 UART_RX_TOP ( .CLK(UART_RX_SCAN_CLK), .RST(
        SYNC_UART_SCAN_RST), .PAR_EN(reg2[0]), .PAR_TYP(reg2[1]), .RX_IN(RX_IN), .PRESCALE(reg2[7:2]), .DATA_VALID(rx_valid), .Stop_Error(SO[0]), 
        .Parity_Error(Parity_Error), .P_DATA(rx_data), .test_si2(n10), 
        .test_si1(n12), .test_so1(n11), .test_se(n26) );
  UART_TX_TOP_test_1 UART_TX_TOP ( .clk(UART_TX_SCAN_CLK), .rst(
        SYNC_UART_SCAN_RST), .parity_enable(reg2[0]), .parity_type(reg2[1]), 
        .parallel_data(tx_data), .data_valid(n8), .tx_out(TX_OUT), .busy(
        tx_busy), .test_si(n11), .test_so(n10), .test_se(n27) );
  PULSE_GEN_test_1 PULSE_GEN ( .CLK(UART_TX_SCAN_CLK), .RST(SYNC_UART_SCAN_RST), .LVL_SIG(tx_busy), .PULSE_SIG(fifo_r_inc), .test_si(n20), .test_so(n19), 
        .test_se(n31) );
  BUFX2M U22 ( .A(SO[0]), .Y(Stop_Error) );
endmodule

