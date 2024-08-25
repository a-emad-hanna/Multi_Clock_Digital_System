/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Aug 19 03:30:00 2024
/////////////////////////////////////////////////////////////


module RST_SYNC_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[0] )
         );
endmodule


module RST_SYNC_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   \sync_reg[0] ;

  DFFRQX2M \sync_reg_reg[1]  ( .D(\sync_reg[0] ), .CK(CLK), .RN(RST), .Q(
        SYNC_RST) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[0] )
         );
endmodule


module DATA_SYNC ( CLK, RST, unsync_bus, bus_enable, sync_bus, enable_pulse_d
 );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse_d;
  wire   enable_flop, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] sync_reg;

  DFFRQX2M enable_flop_reg ( .D(sync_reg[1]), .CK(CLK), .RN(RST), .Q(
        enable_flop) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M \sync_reg_reg[1]  ( .D(sync_reg[0]), .CK(CLK), .RN(RST), .Q(
        sync_reg[1]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M enable_pulse_d_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse_d) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(
        sync_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(enable_flop), .B(sync_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n18), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n17), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n14), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n13), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n14), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n16), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n15), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n15), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n16), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n17), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n15), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
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
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n12), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
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
  XNOR2X2M U8 ( .A(n19), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  OR2X2M U9 ( .A(n19), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  INVX2M U10 ( .A(b[1]), .Y(n18) );
  NAND2X2M U11 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U12 ( .A(a[5]), .Y(n4) );
  INVX2M U13 ( .A(n19), .Y(n3) );
  NAND2X2M U14 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U15 ( .A(a[4]), .Y(n6) );
  INVX2M U16 ( .A(n19), .Y(n5) );
  NAND2X2M U17 ( .A(n7), .B(n8), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U18 ( .A(a[3]), .Y(n8) );
  INVX2M U19 ( .A(n19), .Y(n7) );
  NAND2X2M U20 ( .A(n7), .B(n9), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U21 ( .A(a[2]), .Y(n9) );
  NAND2X2M U22 ( .A(n7), .B(n10), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U23 ( .A(a[1]), .Y(n10) );
  NAND2X2M U24 ( .A(n7), .B(n11), .Y(\u_div/CryTmp[0][1] ) );
  NAND2X2M U25 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n2) );
  INVX2M U27 ( .A(n19), .Y(n1) );
  INVX2M U28 ( .A(b[6]), .Y(n13) );
  INVX2M U29 ( .A(a[0]), .Y(n11) );
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
  INVX2M U2 ( .A(B[6]), .Y(n4) );
  INVX2M U3 ( .A(B[1]), .Y(n9) );
  NAND2X2M U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U5 ( .A(A[0]), .Y(n1) );
  XNOR2X2M U6 ( .A(n10), .B(A[0]), .Y(DIFF[0]) );
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
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n2), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n2) );
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
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;

  ALU_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n14, n15, n13, n11, n12, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n7), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n6), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n8), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n4), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n23) );
  INVX2M U11 ( .A(\SUMB[7][1] ), .Y(n17) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  XNOR2X2M U13 ( .A(\ab[1][2] ), .B(n20), .Y(\SUMB[1][2] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U15 ( .A(\ab[0][7] ), .Y(n24) );
  INVX2M U16 ( .A(\ab[0][4] ), .Y(n21) );
  INVX2M U17 ( .A(\ab[0][5] ), .Y(n22) );
  INVX2M U18 ( .A(\ab[0][3] ), .Y(n20) );
  AND2X2M U19 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U20 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U23 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U24 ( .A(\ab[0][2] ), .Y(n19) );
  AND2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  AND2X2M U26 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n14) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n15) );
  CLKXOR2X2M U28 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  XNOR2X2M U30 ( .A(\ab[1][0] ), .B(n18), .Y(PRODUCT[1]) );
  INVX2M U31 ( .A(\ab[0][1] ), .Y(n18) );
  XNOR2X2M U32 ( .A(\ab[1][3] ), .B(n21), .Y(\SUMB[1][3] ) );
  XNOR2X2M U33 ( .A(\ab[1][6] ), .B(n24), .Y(\SUMB[1][6] ) );
  XNOR2X2M U34 ( .A(\ab[1][4] ), .B(n22), .Y(\SUMB[1][4] ) );
  XNOR2X2M U35 ( .A(\ab[1][5] ), .B(n23), .Y(\SUMB[1][5] ) );
  INVX2M U36 ( .A(A[1]), .Y(n31) );
  INVX2M U37 ( .A(A[0]), .Y(n32) );
  INVX2M U38 ( .A(B[6]), .Y(n34) );
  XNOR2X2M U39 ( .A(\ab[1][1] ), .B(n19), .Y(\SUMB[1][1] ) );
  INVX2M U40 ( .A(A[2]), .Y(n30) );
  INVX2M U41 ( .A(A[3]), .Y(n29) );
  INVX2M U42 ( .A(A[4]), .Y(n28) );
  INVX2M U43 ( .A(A[5]), .Y(n27) );
  INVX2M U44 ( .A(B[1]), .Y(n39) );
  INVX2M U45 ( .A(A[6]), .Y(n26) );
  INVX2M U46 ( .A(A[7]), .Y(n25) );
  INVX2M U47 ( .A(B[2]), .Y(n38) );
  INVX2M U48 ( .A(B[3]), .Y(n37) );
  INVX2M U49 ( .A(B[7]), .Y(n33) );
  INVX2M U50 ( .A(B[5]), .Y(n35) );
  INVX2M U51 ( .A(B[4]), .Y(n36) );
  INVX2M U52 ( .A(B[0]), .Y(n40) );
  XNOR2X2M U53 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  NOR2X1M U55 ( .A(n25), .B(n33), .Y(\ab[7][7] ) );
  NOR2X1M U56 ( .A(n25), .B(n34), .Y(\ab[7][6] ) );
  NOR2X1M U57 ( .A(n25), .B(n35), .Y(\ab[7][5] ) );
  NOR2X1M U58 ( .A(n25), .B(n36), .Y(\ab[7][4] ) );
  NOR2X1M U59 ( .A(n25), .B(n37), .Y(\ab[7][3] ) );
  NOR2X1M U60 ( .A(n25), .B(n38), .Y(\ab[7][2] ) );
  NOR2X1M U61 ( .A(n25), .B(n39), .Y(\ab[7][1] ) );
  NOR2X1M U62 ( .A(n25), .B(n40), .Y(\ab[7][0] ) );
  NOR2X1M U63 ( .A(n33), .B(n26), .Y(\ab[6][7] ) );
  NOR2X1M U64 ( .A(n34), .B(n26), .Y(\ab[6][6] ) );
  NOR2X1M U65 ( .A(n35), .B(n26), .Y(\ab[6][5] ) );
  NOR2X1M U66 ( .A(n36), .B(n26), .Y(\ab[6][4] ) );
  NOR2X1M U67 ( .A(n37), .B(n26), .Y(\ab[6][3] ) );
  NOR2X1M U68 ( .A(n38), .B(n26), .Y(\ab[6][2] ) );
  NOR2X1M U69 ( .A(n39), .B(n26), .Y(\ab[6][1] ) );
  NOR2X1M U70 ( .A(n40), .B(n26), .Y(\ab[6][0] ) );
  NOR2X1M U71 ( .A(n33), .B(n27), .Y(\ab[5][7] ) );
  NOR2X1M U72 ( .A(n34), .B(n27), .Y(\ab[5][6] ) );
  NOR2X1M U73 ( .A(n35), .B(n27), .Y(\ab[5][5] ) );
  NOR2X1M U74 ( .A(n36), .B(n27), .Y(\ab[5][4] ) );
  NOR2X1M U75 ( .A(n37), .B(n27), .Y(\ab[5][3] ) );
  NOR2X1M U76 ( .A(n38), .B(n27), .Y(\ab[5][2] ) );
  NOR2X1M U77 ( .A(n39), .B(n27), .Y(\ab[5][1] ) );
  NOR2X1M U78 ( .A(n40), .B(n27), .Y(\ab[5][0] ) );
  NOR2X1M U79 ( .A(n33), .B(n28), .Y(\ab[4][7] ) );
  NOR2X1M U80 ( .A(n34), .B(n28), .Y(\ab[4][6] ) );
  NOR2X1M U81 ( .A(n35), .B(n28), .Y(\ab[4][5] ) );
  NOR2X1M U82 ( .A(n36), .B(n28), .Y(\ab[4][4] ) );
  NOR2X1M U83 ( .A(n37), .B(n28), .Y(\ab[4][3] ) );
  NOR2X1M U84 ( .A(n38), .B(n28), .Y(\ab[4][2] ) );
  NOR2X1M U85 ( .A(n39), .B(n28), .Y(\ab[4][1] ) );
  NOR2X1M U86 ( .A(n40), .B(n28), .Y(\ab[4][0] ) );
  NOR2X1M U87 ( .A(n33), .B(n29), .Y(\ab[3][7] ) );
  NOR2X1M U88 ( .A(n34), .B(n29), .Y(\ab[3][6] ) );
  NOR2X1M U89 ( .A(n35), .B(n29), .Y(\ab[3][5] ) );
  NOR2X1M U90 ( .A(n36), .B(n29), .Y(\ab[3][4] ) );
  NOR2X1M U91 ( .A(n37), .B(n29), .Y(\ab[3][3] ) );
  NOR2X1M U92 ( .A(n38), .B(n29), .Y(\ab[3][2] ) );
  NOR2X1M U93 ( .A(n39), .B(n29), .Y(\ab[3][1] ) );
  NOR2X1M U94 ( .A(n40), .B(n29), .Y(\ab[3][0] ) );
  NOR2X1M U95 ( .A(n33), .B(n30), .Y(\ab[2][7] ) );
  NOR2X1M U96 ( .A(n34), .B(n30), .Y(\ab[2][6] ) );
  NOR2X1M U97 ( .A(n35), .B(n30), .Y(\ab[2][5] ) );
  NOR2X1M U98 ( .A(n36), .B(n30), .Y(\ab[2][4] ) );
  NOR2X1M U99 ( .A(n37), .B(n30), .Y(\ab[2][3] ) );
  NOR2X1M U100 ( .A(n38), .B(n30), .Y(\ab[2][2] ) );
  NOR2X1M U101 ( .A(n39), .B(n30), .Y(\ab[2][1] ) );
  NOR2X1M U102 ( .A(n40), .B(n30), .Y(\ab[2][0] ) );
  NOR2X1M U103 ( .A(n33), .B(n31), .Y(\ab[1][7] ) );
  NOR2X1M U104 ( .A(n34), .B(n31), .Y(\ab[1][6] ) );
  NOR2X1M U105 ( .A(n35), .B(n31), .Y(\ab[1][5] ) );
  NOR2X1M U106 ( .A(n36), .B(n31), .Y(\ab[1][4] ) );
  NOR2X1M U107 ( .A(n37), .B(n31), .Y(\ab[1][3] ) );
  NOR2X1M U108 ( .A(n38), .B(n31), .Y(\ab[1][2] ) );
  NOR2X1M U109 ( .A(n39), .B(n31), .Y(\ab[1][1] ) );
  NOR2X1M U110 ( .A(n40), .B(n31), .Y(\ab[1][0] ) );
  NOR2X1M U111 ( .A(n33), .B(n32), .Y(\ab[0][7] ) );
  NOR2X1M U112 ( .A(n34), .B(n32), .Y(\ab[0][6] ) );
  NOR2X1M U113 ( .A(n35), .B(n32), .Y(\ab[0][5] ) );
  NOR2X1M U114 ( .A(n36), .B(n32), .Y(\ab[0][4] ) );
  NOR2X1M U115 ( .A(n37), .B(n32), .Y(\ab[0][3] ) );
  NOR2X1M U116 ( .A(n38), .B(n32), .Y(\ab[0][2] ) );
  NOR2X1M U117 ( .A(n39), .B(n32), .Y(\ab[0][1] ) );
  NOR2X1M U118 ( .A(n40), .B(n32), .Y(PRODUCT[0]) );
endmodule


module ALU ( CLK, RST, EN, A, B, ALU_FUN, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, EN;
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
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n3, n4, n5, n6,
         n7, n8, n9, n17, n21, n22, n24, n29, n32, n33, n34, n35, n44, n52,
         n57, n59, n61, n62, n68, n70, n76, n78, n84, n86, n92, n94, n105,
         n106, n110, n111, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171;

  ALU_DW_div_uns_0 div_41 ( .a({n29, n24, n22, n21, n17, n9, n8, n7}), .b({
        B[7], n6, B[5:2], n5, B[0]}), .quotient({N131, N130, N129, N128, N127, 
        N126, N125, N124}) );
  ALU_DW01_sub_0 sub_35 ( .A({1'b0, n29, n24, n22, n21, n17, n9, n8, n7}), .B(
        {1'b0, B[7], n6, B[5:2], n5, B[0]}), .CI(1'b0), .DIFF({N106, N105, 
        N104, N103, N102, N101, N100, N99, N98}) );
  ALU_DW01_add_0 add_34 ( .A({1'b0, n29, n24, n22, n21, n17, n9, n8, n7}), .B(
        {1'b0, B[7], n6, B[5:2], n5, B[0]}), .CI(1'b0), .SUM({N97, N96, N95, 
        N94, N93, N92, N91, N90, N89}) );
  ALU_DW02_mult_0 mult_36 ( .A({n29, n24, n22, n21, n17, n9, n8, n7}), .B({
        B[7], n6, B[5:2], n5, B[0]}), .TC(1'b0), .PRODUCT({N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, 
        N107}) );
  DFFRQX2M OUT_VALID_reg ( .D(EN), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(n130), .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(n129), .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(n128), .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(n127), .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(n126), .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(n125), .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(n124), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(n123), .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(n131), .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(n137), .CK(CLK), .RN(RST), .Q(ALU_OUT[14])
         );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(n133), .CK(CLK), .RN(RST), .Q(ALU_OUT[10])
         );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(n135), .CK(CLK), .RN(RST), .Q(ALU_OUT[12])
         );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(n138), .CK(CLK), .RN(RST), .Q(ALU_OUT[15])
         );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(n134), .CK(CLK), .RN(RST), .Q(ALU_OUT[11])
         );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(n136), .CK(CLK), .RN(RST), .Q(ALU_OUT[13])
         );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(n132), .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  BUFX2M U3 ( .A(A[6]), .Y(n24) );
  BUFX2M U4 ( .A(A[1]), .Y(n8) );
  INVX2M U5 ( .A(n30), .Y(n150) );
  NOR3X2M U8 ( .A(n45), .B(n154), .C(n160), .Y(n95) );
  NOR2X2M U9 ( .A(n154), .B(n47), .Y(n25) );
  NOR2X2M U10 ( .A(n107), .B(n153), .Y(n41) );
  NAND2X2M U11 ( .A(n95), .B(n157), .Y(n30) );
  NOR2X2M U12 ( .A(n104), .B(n160), .Y(n103) );
  INVX2M U13 ( .A(n18), .Y(n153) );
  AND2X2M U14 ( .A(n115), .B(n160), .Y(n14) );
  INVX2M U15 ( .A(n28), .Y(n155) );
  INVX2M U16 ( .A(n51), .Y(n151) );
  INVX2M U17 ( .A(n4), .Y(n152) );
  AOI222X1M U18 ( .A0(n27), .A1(n165), .B0(N126), .B1(n156), .C0(N109), .C1(n3), .Y(n56) );
  AOI222X1M U19 ( .A0(n27), .A1(n164), .B0(N127), .B1(n156), .C0(N110), .C1(n3), .Y(n66) );
  AOI222X1M U20 ( .A0(n27), .A1(n163), .B0(N128), .B1(n156), .C0(N111), .C1(n3), .Y(n74) );
  AOI222X1M U21 ( .A0(n27), .A1(n162), .B0(N129), .B1(n156), .C0(N112), .C1(n3), .Y(n82) );
  AOI222X1M U22 ( .A0(n27), .A1(n161), .B0(N130), .B1(n156), .C0(N113), .C1(n3), .Y(n90) );
  AOI222X1M U23 ( .A0(n27), .A1(n148), .B0(N131), .B1(n156), .C0(N114), .C1(n3), .Y(n99) );
  NOR4X2M U24 ( .A(n107), .B(n154), .C(ALU_FUN[0]), .D(ALU_FUN[3]), .Y(n27) );
  NOR3X2M U25 ( .A(n157), .B(ALU_FUN[2]), .C(n160), .Y(n49) );
  NOR3X2M U26 ( .A(n157), .B(ALU_FUN[0]), .C(n154), .Y(n18) );
  NOR3BX2M U27 ( .AN(N166), .B(n153), .C(n45), .Y(n15) );
  OAI2BB2X1M U28 ( .B0(ALU_FUN[3]), .B1(n45), .A0N(n159), .A1N(n49), .Y(n50)
         );
  NAND2X2M U29 ( .A(ALU_FUN[1]), .B(ALU_FUN[2]), .Y(n107) );
  AOI2BB2XLM U30 ( .B0(n159), .B1(n49), .A0N(ALU_FUN[3]), .A1N(n107), .Y(n47)
         );
  INVX2M U31 ( .A(EN), .Y(n154) );
  NAND3X2M U32 ( .A(n158), .B(n157), .C(EN), .Y(n104) );
  NAND2X2M U33 ( .A(n95), .B(ALU_FUN[3]), .Y(n51) );
  INVX2M U34 ( .A(ALU_FUN[0]), .Y(n160) );
  NAND2X2M U35 ( .A(ALU_FUN[2]), .B(n159), .Y(n45) );
  INVX2M U36 ( .A(ALU_FUN[3]), .Y(n157) );
  INVX2M U37 ( .A(ALU_FUN[1]), .Y(n159) );
  NAND2X2M U38 ( .A(EN), .B(n50), .Y(n28) );
  NOR2X2M U39 ( .A(n104), .B(ALU_FUN[1]), .Y(n115) );
  AND2X2M U40 ( .A(n115), .B(ALU_FUN[0]), .Y(n20) );
  INVX2M U41 ( .A(ALU_FUN[2]), .Y(n158) );
  BUFX2M U42 ( .A(n26), .Y(n4) );
  NOR3X2M U43 ( .A(ALU_FUN[1]), .B(ALU_FUN[2]), .C(n153), .Y(n26) );
  BUFX2M U44 ( .A(n31), .Y(n3) );
  NOR3X2M U45 ( .A(n159), .B(ALU_FUN[0]), .C(n104), .Y(n31) );
  AND4X2M U46 ( .A(N164), .B(n158), .C(n18), .D(ALU_FUN[1]), .Y(n16) );
  AOI222X1M U47 ( .A0(N107), .A1(n3), .B0(n8), .B1(n151), .C0(N124), .C1(n156), 
        .Y(n11) );
  AOI222X1M U48 ( .A0(N108), .A1(n3), .B0(n9), .B1(n151), .C0(N125), .C1(n156), 
        .Y(n37) );
  AOI21X2M U49 ( .A0(N106), .A1(n20), .B0(n25), .Y(n112) );
  AOI221XLM U50 ( .A0(n4), .A1(n148), .B0(n29), .B1(n155), .C0(n150), .Y(n108)
         );
  AOI221XLM U51 ( .A0(n29), .A1(n4), .B0(n25), .B1(n148), .C0(n27), .Y(n109)
         );
  AOI221XLM U52 ( .A0(n4), .A1(n165), .B0(n9), .B1(n155), .C0(n150), .Y(n58)
         );
  AOI221XLM U53 ( .A0(n4), .A1(n164), .B0(n17), .B1(n155), .C0(n150), .Y(n67)
         );
  AOI221XLM U54 ( .A0(n4), .A1(n163), .B0(n21), .B1(n155), .C0(n150), .Y(n75)
         );
  AOI221XLM U55 ( .A0(n4), .A1(n162), .B0(n22), .B1(n155), .C0(n150), .Y(n83)
         );
  AOI221XLM U56 ( .A0(n4), .A1(n161), .B0(n24), .B1(n155), .C0(n150), .Y(n91)
         );
  AOI221XLM U57 ( .A0(n9), .A1(n4), .B0(n25), .B1(n165), .C0(n27), .Y(n60) );
  AOI221XLM U58 ( .A0(n17), .A1(n4), .B0(n25), .B1(n164), .C0(n27), .Y(n69) );
  AOI221XLM U59 ( .A0(n21), .A1(n4), .B0(n25), .B1(n163), .C0(n27), .Y(n77) );
  AOI221XLM U60 ( .A0(n22), .A1(n4), .B0(n25), .B1(n162), .C0(n27), .Y(n85) );
  AOI221XLM U61 ( .A0(n24), .A1(n4), .B0(n25), .B1(n161), .C0(n27), .Y(n93) );
  OAI31X1M U62 ( .A0(n47), .A1(n5), .A2(n8), .B0(n48), .Y(n46) );
  AOI33X2M U63 ( .A0(n49), .A1(ALU_FUN[1]), .A2(N165), .B0(n8), .B1(n50), .B2(
        n5), .Y(n48) );
  OAI221X1M U64 ( .A0(n166), .A1(n28), .B0(n7), .B1(n152), .C0(n30), .Y(n19)
         );
  INVX2M U65 ( .A(n32), .Y(n145) );
  INVX2M U66 ( .A(n70), .Y(n147) );
  OAI21BX1M U67 ( .A0(n5), .A1(n43), .B0N(n15), .Y(n42) );
  AOI21X2M U68 ( .A0(n8), .A1(n4), .B0(n27), .Y(n43) );
  OAI21X2M U69 ( .A0(n8), .A1(n152), .B0(n30), .Y(n40) );
  INVX2M U70 ( .A(n142), .Y(N165) );
  INVX2M U71 ( .A(n100), .Y(n156) );
  OAI211X2M U72 ( .A0(n101), .A1(n102), .B0(ALU_FUN[1]), .C0(n103), .Y(n100)
         );
  NAND4X2M U73 ( .A(n170), .B(n169), .C(n168), .D(n167), .Y(n101) );
  NAND4BX1M U74 ( .AN(n5), .B(n143), .C(n171), .D(n144), .Y(n102) );
  INVX2M U75 ( .A(n23), .Y(n149) );
  AOI221XLM U76 ( .A0(n166), .A1(n25), .B0(n4), .B1(n7), .C0(n27), .Y(n23) );
  INVX2M U77 ( .A(n8), .Y(n146) );
  INVX2M U78 ( .A(n6), .Y(n168) );
  INVX2M U79 ( .A(n7), .Y(n166) );
  INVX2M U80 ( .A(n29), .Y(n148) );
  INVX2M U81 ( .A(n24), .Y(n161) );
  INVX2M U82 ( .A(n17), .Y(n164) );
  INVX2M U83 ( .A(n21), .Y(n163) );
  INVX2M U84 ( .A(n22), .Y(n162) );
  INVX2M U85 ( .A(n9), .Y(n165) );
  NAND4X2M U86 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(n123) );
  AOI222X1M U87 ( .A0(ALU_OUT[0]), .A1(n154), .B0(n27), .B1(n166), .C0(n150), 
        .C1(n7), .Y(n10) );
  AOI222X1M U88 ( .A0(B[0]), .A1(n19), .B0(N98), .B1(n20), .C0(n149), .C1(n143), .Y(n12) );
  AOI211X2M U89 ( .A0(N89), .A1(n14), .B0(n15), .C0(n16), .Y(n13) );
  BUFX2M U90 ( .A(A[7]), .Y(n29) );
  BUFX2M U91 ( .A(B[6]), .Y(n6) );
  BUFX2M U92 ( .A(B[1]), .Y(n5) );
  NAND4X2M U93 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n124) );
  AOI222X1M U94 ( .A0(ALU_OUT[1]), .A1(n154), .B0(n27), .B1(n146), .C0(n150), 
        .C1(n8), .Y(n36) );
  AOI221XLM U95 ( .A0(n5), .A1(n40), .B0(n41), .B1(n7), .C0(n42), .Y(n39) );
  AOI222X1M U96 ( .A0(EN), .A1(n46), .B0(N90), .B1(n14), .C0(N99), .C1(n20), 
        .Y(n38) );
  BUFX2M U97 ( .A(A[5]), .Y(n22) );
  NAND4BX1M U98 ( .AN(n53), .B(n54), .C(n55), .D(n56), .Y(n125) );
  AOI22X1M U99 ( .A0(n9), .A1(n150), .B0(ALU_OUT[2]), .B1(n154), .Y(n55) );
  AOI222X1M U100 ( .A0(N100), .A1(n20), .B0(n41), .B1(n8), .C0(N91), .C1(n14), 
        .Y(n54) );
  OAI222X1M U101 ( .A0(n58), .A1(n171), .B0(B[2]), .B1(n60), .C0(n51), .C1(
        n164), .Y(n53) );
  BUFX2M U102 ( .A(A[4]), .Y(n21) );
  BUFX2M U103 ( .A(A[3]), .Y(n17) );
  NAND4BX1M U104 ( .AN(n63), .B(n64), .C(n65), .D(n66), .Y(n126) );
  AOI22X1M U105 ( .A0(n17), .A1(n150), .B0(ALU_OUT[3]), .B1(n154), .Y(n65) );
  AOI222X1M U106 ( .A0(N101), .A1(n20), .B0(n9), .B1(n41), .C0(N92), .C1(n14), 
        .Y(n64) );
  OAI222X1M U107 ( .A0(n67), .A1(n144), .B0(B[3]), .B1(n69), .C0(n51), .C1(
        n163), .Y(n63) );
  BUFX2M U108 ( .A(A[2]), .Y(n9) );
  NAND2X2M U109 ( .A(n121), .B(n112), .Y(n137) );
  AOI22X1M U110 ( .A0(N121), .A1(n3), .B0(ALU_OUT[14]), .B1(n154), .Y(n121) );
  NAND2X2M U111 ( .A(n122), .B(n112), .Y(n138) );
  AOI22X1M U112 ( .A0(N122), .A1(n3), .B0(ALU_OUT[15]), .B1(n154), .Y(n122) );
  NAND4BX1M U113 ( .AN(n71), .B(n72), .C(n73), .D(n74), .Y(n127) );
  AOI22X1M U114 ( .A0(n21), .A1(n150), .B0(ALU_OUT[4]), .B1(n154), .Y(n73) );
  AOI222X1M U115 ( .A0(N102), .A1(n20), .B0(n17), .B1(n41), .C0(N93), .C1(n14), 
        .Y(n72) );
  OAI222X1M U116 ( .A0(n75), .A1(n170), .B0(B[4]), .B1(n77), .C0(n51), .C1(
        n162), .Y(n71) );
  BUFX2M U117 ( .A(A[0]), .Y(n7) );
  NAND2X2M U118 ( .A(n117), .B(n112), .Y(n133) );
  AOI22X1M U119 ( .A0(N117), .A1(n3), .B0(ALU_OUT[10]), .B1(n154), .Y(n117) );
  NAND2X2M U120 ( .A(n120), .B(n112), .Y(n136) );
  AOI22X1M U121 ( .A0(N120), .A1(n3), .B0(ALU_OUT[13]), .B1(n154), .Y(n120) );
  NAND2X2M U122 ( .A(n118), .B(n112), .Y(n134) );
  AOI22X1M U123 ( .A0(N118), .A1(n3), .B0(ALU_OUT[11]), .B1(n154), .Y(n118) );
  NAND2X2M U124 ( .A(n119), .B(n112), .Y(n135) );
  AOI22X1M U125 ( .A0(N119), .A1(n3), .B0(ALU_OUT[12]), .B1(n154), .Y(n119) );
  NAND2X2M U126 ( .A(n116), .B(n112), .Y(n132) );
  AOI22X1M U127 ( .A0(N116), .A1(n3), .B0(ALU_OUT[9]), .B1(n154), .Y(n116) );
  OAI2B11X2M U128 ( .A1N(ALU_OUT[8]), .A0(EN), .B0(n112), .C0(n113), .Y(n131)
         );
  AOI221XLM U129 ( .A0(N115), .A1(n3), .B0(N97), .B1(n14), .C0(n114), .Y(n113)
         );
  NOR4X1M U130 ( .A(ALU_FUN[0]), .B(n154), .C(n107), .D(n148), .Y(n114) );
  NAND4BX1M U131 ( .AN(n79), .B(n80), .C(n81), .D(n82), .Y(n128) );
  AOI22X1M U132 ( .A0(n22), .A1(n150), .B0(ALU_OUT[5]), .B1(n154), .Y(n81) );
  AOI222X1M U133 ( .A0(N103), .A1(n20), .B0(n21), .B1(n41), .C0(N94), .C1(n14), 
        .Y(n80) );
  OAI222X1M U134 ( .A0(n83), .A1(n169), .B0(B[5]), .B1(n85), .C0(n51), .C1(
        n161), .Y(n79) );
  NAND4BX1M U135 ( .AN(n87), .B(n88), .C(n89), .D(n90), .Y(n129) );
  AOI22X1M U136 ( .A0(n24), .A1(n150), .B0(ALU_OUT[6]), .B1(n154), .Y(n89) );
  AOI222X1M U137 ( .A0(N104), .A1(n20), .B0(n22), .B1(n41), .C0(N95), .C1(n14), 
        .Y(n88) );
  OAI222X1M U138 ( .A0(n91), .A1(n168), .B0(n6), .B1(n93), .C0(n51), .C1(n148), 
        .Y(n87) );
  NAND4BX1M U139 ( .AN(n96), .B(n97), .C(n98), .D(n99), .Y(n130) );
  AOI22X1M U140 ( .A0(n29), .A1(n150), .B0(ALU_OUT[7]), .B1(n154), .Y(n98) );
  AOI222X1M U141 ( .A0(N105), .A1(n20), .B0(n24), .B1(n41), .C0(N96), .C1(n14), 
        .Y(n97) );
  OAI22X1M U142 ( .A0(n108), .A1(n167), .B0(B[7]), .B1(n109), .Y(n96) );
  INVX2M U143 ( .A(B[0]), .Y(n143) );
  INVX2M U144 ( .A(B[3]), .Y(n144) );
  INVX2M U145 ( .A(B[7]), .Y(n167) );
  INVX2M U146 ( .A(B[2]), .Y(n171) );
  INVX2M U147 ( .A(B[4]), .Y(n170) );
  INVX2M U148 ( .A(B[5]), .Y(n169) );
  NOR2X1M U149 ( .A(n148), .B(B[7]), .Y(n139) );
  NAND2BX1M U150 ( .AN(B[4]), .B(n21), .Y(n86) );
  NAND2BX1M U151 ( .AN(n21), .B(B[4]), .Y(n44) );
  CLKNAND2X2M U152 ( .A(n86), .B(n44), .Y(n94) );
  NOR2X1M U153 ( .A(n144), .B(n17), .Y(n76) );
  NOR2X1M U154 ( .A(n171), .B(n9), .Y(n35) );
  NOR2X1M U155 ( .A(n143), .B(n7), .Y(n32) );
  CLKNAND2X2M U156 ( .A(n9), .B(n171), .Y(n84) );
  NAND2BX1M U157 ( .AN(n35), .B(n84), .Y(n62) );
  AOI21X1M U158 ( .A0(n32), .A1(n146), .B0(n5), .Y(n33) );
  AOI211X1M U159 ( .A0(n8), .A1(n145), .B0(n62), .C0(n33), .Y(n34) );
  CLKNAND2X2M U160 ( .A(n17), .B(n144), .Y(n78) );
  OAI31X1M U161 ( .A0(n76), .A1(n35), .A2(n34), .B0(n78), .Y(n52) );
  NAND2BX1M U162 ( .AN(n22), .B(B[5]), .Y(n110) );
  OAI211X1M U163 ( .A0(n94), .A1(n52), .B0(n44), .C0(n110), .Y(n57) );
  NAND2BX1M U164 ( .AN(B[5]), .B(n22), .Y(n92) );
  XNOR2X1M U165 ( .A(n24), .B(n6), .Y(n106) );
  AOI32X1M U166 ( .A0(n57), .A1(n92), .A2(n106), .B0(n6), .B1(n161), .Y(n59)
         );
  CLKNAND2X2M U167 ( .A(B[7]), .B(n148), .Y(n140) );
  OAI21X1M U168 ( .A0(n139), .A1(n59), .B0(n140), .Y(N166) );
  CLKNAND2X2M U169 ( .A(n7), .B(n143), .Y(n68) );
  OA21X1M U170 ( .A0(n68), .A1(n146), .B0(n5), .Y(n61) );
  AOI211X1M U171 ( .A0(n68), .A1(n146), .B0(n62), .C0(n61), .Y(n70) );
  AOI31X1M U172 ( .A0(n147), .A1(n84), .A2(n78), .B0(n76), .Y(n105) );
  OAI2B11X1M U173 ( .A1N(n105), .A0(n94), .B0(n92), .C0(n86), .Y(n111) );
  AOI32X1M U174 ( .A0(n111), .A1(n110), .A2(n106), .B0(n24), .B1(n168), .Y(
        n141) );
  AOI2B1X1M U175 ( .A1N(n141), .A0(n140), .B0(n139), .Y(n142) );
  NOR2X1M U176 ( .A(N166), .B(N165), .Y(N164) );
endmodule


module RegFile ( CLK, RST, WrData, Address, WrEn, RdEn, RdData, RdData_Valid, 
        REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input CLK, RST, WrEn, RdEn;
  output RdData_Valid;
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
         \registers[15][0] , N36, N37, N38, N39, N40, N41, N42, N43, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRQX2M \RdData_reg[7]  ( .D(n50), .CK(CLK), .RN(n205), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n49), .CK(CLK), .RN(n205), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n48), .CK(CLK), .RN(n205), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n47), .CK(CLK), .RN(n205), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n46), .CK(CLK), .RN(n205), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n45), .CK(CLK), .RN(n205), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n44), .CK(CLK), .RN(n205), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n43), .CK(CLK), .RN(n205), .Q(RdData[0]) );
  DFFRQX2M \registers_reg[5][7]  ( .D(n138), .CK(CLK), .RN(n211), .Q(
        \registers[5][7] ) );
  DFFRQX2M \registers_reg[5][6]  ( .D(n137), .CK(CLK), .RN(n211), .Q(
        \registers[5][6] ) );
  DFFRQX2M \registers_reg[5][5]  ( .D(n136), .CK(CLK), .RN(n211), .Q(
        \registers[5][5] ) );
  DFFRQX2M \registers_reg[5][4]  ( .D(n135), .CK(CLK), .RN(n211), .Q(
        \registers[5][4] ) );
  DFFRQX2M \registers_reg[5][3]  ( .D(n134), .CK(CLK), .RN(n211), .Q(
        \registers[5][3] ) );
  DFFRQX2M \registers_reg[5][2]  ( .D(n133), .CK(CLK), .RN(n211), .Q(
        \registers[5][2] ) );
  DFFRQX2M \registers_reg[5][1]  ( .D(n132), .CK(CLK), .RN(n211), .Q(
        \registers[5][1] ) );
  DFFRQX2M \registers_reg[5][0]  ( .D(n131), .CK(CLK), .RN(n211), .Q(
        \registers[5][0] ) );
  DFFRQX2M \registers_reg[9][7]  ( .D(n106), .CK(CLK), .RN(n209), .Q(
        \registers[9][7] ) );
  DFFRQX2M \registers_reg[9][6]  ( .D(n105), .CK(CLK), .RN(n209), .Q(
        \registers[9][6] ) );
  DFFRQX2M \registers_reg[9][5]  ( .D(n104), .CK(CLK), .RN(n209), .Q(
        \registers[9][5] ) );
  DFFRQX2M \registers_reg[9][4]  ( .D(n103), .CK(CLK), .RN(n209), .Q(
        \registers[9][4] ) );
  DFFRQX2M \registers_reg[9][3]  ( .D(n102), .CK(CLK), .RN(n209), .Q(
        \registers[9][3] ) );
  DFFRQX2M \registers_reg[9][2]  ( .D(n101), .CK(CLK), .RN(n209), .Q(
        \registers[9][2] ) );
  DFFRQX2M \registers_reg[9][1]  ( .D(n100), .CK(CLK), .RN(n209), .Q(
        \registers[9][1] ) );
  DFFRQX2M \registers_reg[9][0]  ( .D(n99), .CK(CLK), .RN(n209), .Q(
        \registers[9][0] ) );
  DFFRQX2M \registers_reg[13][7]  ( .D(n74), .CK(CLK), .RN(n207), .Q(
        \registers[13][7] ) );
  DFFRQX2M \registers_reg[13][6]  ( .D(n73), .CK(CLK), .RN(n207), .Q(
        \registers[13][6] ) );
  DFFRQX2M \registers_reg[13][5]  ( .D(n72), .CK(CLK), .RN(n207), .Q(
        \registers[13][5] ) );
  DFFRQX2M \registers_reg[13][4]  ( .D(n71), .CK(CLK), .RN(n207), .Q(
        \registers[13][4] ) );
  DFFRQX2M \registers_reg[13][3]  ( .D(n70), .CK(CLK), .RN(n207), .Q(
        \registers[13][3] ) );
  DFFRQX2M \registers_reg[13][2]  ( .D(n69), .CK(CLK), .RN(n207), .Q(
        \registers[13][2] ) );
  DFFRQX2M \registers_reg[13][1]  ( .D(n68), .CK(CLK), .RN(n206), .Q(
        \registers[13][1] ) );
  DFFRQX2M \registers_reg[13][0]  ( .D(n67), .CK(CLK), .RN(n206), .Q(
        \registers[13][0] ) );
  DFFRQX2M \registers_reg[7][7]  ( .D(n122), .CK(CLK), .RN(n210), .Q(
        \registers[7][7] ) );
  DFFRQX2M \registers_reg[7][6]  ( .D(n121), .CK(CLK), .RN(n210), .Q(
        \registers[7][6] ) );
  DFFRQX2M \registers_reg[7][5]  ( .D(n120), .CK(CLK), .RN(n210), .Q(
        \registers[7][5] ) );
  DFFRQX2M \registers_reg[7][4]  ( .D(n119), .CK(CLK), .RN(n210), .Q(
        \registers[7][4] ) );
  DFFRQX2M \registers_reg[7][3]  ( .D(n118), .CK(CLK), .RN(n210), .Q(
        \registers[7][3] ) );
  DFFRQX2M \registers_reg[7][2]  ( .D(n117), .CK(CLK), .RN(n210), .Q(
        \registers[7][2] ) );
  DFFRQX2M \registers_reg[7][1]  ( .D(n116), .CK(CLK), .RN(n210), .Q(
        \registers[7][1] ) );
  DFFRQX2M \registers_reg[7][0]  ( .D(n115), .CK(CLK), .RN(n210), .Q(
        \registers[7][0] ) );
  DFFRQX2M \registers_reg[11][7]  ( .D(n90), .CK(CLK), .RN(n208), .Q(
        \registers[11][7] ) );
  DFFRQX2M \registers_reg[11][6]  ( .D(n89), .CK(CLK), .RN(n208), .Q(
        \registers[11][6] ) );
  DFFRQX2M \registers_reg[11][5]  ( .D(n88), .CK(CLK), .RN(n208), .Q(
        \registers[11][5] ) );
  DFFRQX2M \registers_reg[11][4]  ( .D(n87), .CK(CLK), .RN(n208), .Q(
        \registers[11][4] ) );
  DFFRQX2M \registers_reg[11][3]  ( .D(n86), .CK(CLK), .RN(n208), .Q(
        \registers[11][3] ) );
  DFFRQX2M \registers_reg[11][2]  ( .D(n85), .CK(CLK), .RN(n208), .Q(
        \registers[11][2] ) );
  DFFRQX2M \registers_reg[11][1]  ( .D(n84), .CK(CLK), .RN(n208), .Q(
        \registers[11][1] ) );
  DFFRQX2M \registers_reg[11][0]  ( .D(n83), .CK(CLK), .RN(n207), .Q(
        \registers[11][0] ) );
  DFFRQX2M \registers_reg[15][7]  ( .D(n58), .CK(CLK), .RN(n206), .Q(
        \registers[15][7] ) );
  DFFRQX2M \registers_reg[15][6]  ( .D(n57), .CK(CLK), .RN(n206), .Q(
        \registers[15][6] ) );
  DFFRQX2M \registers_reg[15][5]  ( .D(n56), .CK(CLK), .RN(n206), .Q(
        \registers[15][5] ) );
  DFFRQX2M \registers_reg[15][4]  ( .D(n55), .CK(CLK), .RN(n206), .Q(
        \registers[15][4] ) );
  DFFRQX2M \registers_reg[15][3]  ( .D(n54), .CK(CLK), .RN(n205), .Q(
        \registers[15][3] ) );
  DFFRQX2M \registers_reg[15][2]  ( .D(n53), .CK(CLK), .RN(n206), .Q(
        \registers[15][2] ) );
  DFFRQX2M \registers_reg[15][1]  ( .D(n52), .CK(CLK), .RN(n205), .Q(
        \registers[15][1] ) );
  DFFRQX2M \registers_reg[15][0]  ( .D(n51), .CK(CLK), .RN(n205), .Q(
        \registers[15][0] ) );
  DFFRQX2M \registers_reg[6][7]  ( .D(n130), .CK(CLK), .RN(n211), .Q(
        \registers[6][7] ) );
  DFFRQX2M \registers_reg[6][6]  ( .D(n129), .CK(CLK), .RN(n211), .Q(
        \registers[6][6] ) );
  DFFRQX2M \registers_reg[6][5]  ( .D(n128), .CK(CLK), .RN(n211), .Q(
        \registers[6][5] ) );
  DFFRQX2M \registers_reg[6][4]  ( .D(n127), .CK(CLK), .RN(n210), .Q(
        \registers[6][4] ) );
  DFFRQX2M \registers_reg[6][3]  ( .D(n126), .CK(CLK), .RN(n210), .Q(
        \registers[6][3] ) );
  DFFRQX2M \registers_reg[6][2]  ( .D(n125), .CK(CLK), .RN(n210), .Q(
        \registers[6][2] ) );
  DFFRQX2M \registers_reg[6][1]  ( .D(n124), .CK(CLK), .RN(n210), .Q(
        \registers[6][1] ) );
  DFFRQX2M \registers_reg[6][0]  ( .D(n123), .CK(CLK), .RN(n210), .Q(
        \registers[6][0] ) );
  DFFRQX2M \registers_reg[10][7]  ( .D(n98), .CK(CLK), .RN(n208), .Q(
        \registers[10][7] ) );
  DFFRQX2M \registers_reg[10][6]  ( .D(n97), .CK(CLK), .RN(n208), .Q(
        \registers[10][6] ) );
  DFFRQX2M \registers_reg[10][5]  ( .D(n96), .CK(CLK), .RN(n208), .Q(
        \registers[10][5] ) );
  DFFRQX2M \registers_reg[10][4]  ( .D(n95), .CK(CLK), .RN(n208), .Q(
        \registers[10][4] ) );
  DFFRQX2M \registers_reg[10][3]  ( .D(n94), .CK(CLK), .RN(n208), .Q(
        \registers[10][3] ) );
  DFFRQX2M \registers_reg[10][2]  ( .D(n93), .CK(CLK), .RN(n208), .Q(
        \registers[10][2] ) );
  DFFRQX2M \registers_reg[10][1]  ( .D(n92), .CK(CLK), .RN(n208), .Q(
        \registers[10][1] ) );
  DFFRQX2M \registers_reg[10][0]  ( .D(n91), .CK(CLK), .RN(n208), .Q(
        \registers[10][0] ) );
  DFFRQX2M \registers_reg[14][7]  ( .D(n66), .CK(CLK), .RN(n206), .Q(
        \registers[14][7] ) );
  DFFRQX2M \registers_reg[14][6]  ( .D(n65), .CK(CLK), .RN(n206), .Q(
        \registers[14][6] ) );
  DFFRQX2M \registers_reg[14][5]  ( .D(n64), .CK(CLK), .RN(n206), .Q(
        \registers[14][5] ) );
  DFFRQX2M \registers_reg[14][4]  ( .D(n63), .CK(CLK), .RN(n206), .Q(
        \registers[14][4] ) );
  DFFRQX2M \registers_reg[14][3]  ( .D(n62), .CK(CLK), .RN(n206), .Q(
        \registers[14][3] ) );
  DFFRQX2M \registers_reg[14][2]  ( .D(n61), .CK(CLK), .RN(n206), .Q(
        \registers[14][2] ) );
  DFFRQX2M \registers_reg[14][1]  ( .D(n60), .CK(CLK), .RN(n206), .Q(
        \registers[14][1] ) );
  DFFRQX2M \registers_reg[14][0]  ( .D(n59), .CK(CLK), .RN(n206), .Q(
        \registers[14][0] ) );
  DFFRQX2M \registers_reg[4][7]  ( .D(n146), .CK(CLK), .RN(n212), .Q(
        \registers[4][7] ) );
  DFFRQX2M \registers_reg[4][6]  ( .D(n145), .CK(CLK), .RN(n212), .Q(
        \registers[4][6] ) );
  DFFRQX2M \registers_reg[4][5]  ( .D(n144), .CK(CLK), .RN(n212), .Q(
        \registers[4][5] ) );
  DFFRQX2M \registers_reg[4][4]  ( .D(n143), .CK(CLK), .RN(n212), .Q(
        \registers[4][4] ) );
  DFFRQX2M \registers_reg[4][3]  ( .D(n142), .CK(CLK), .RN(n211), .Q(
        \registers[4][3] ) );
  DFFRQX2M \registers_reg[4][2]  ( .D(n141), .CK(CLK), .RN(n211), .Q(
        \registers[4][2] ) );
  DFFRQX2M \registers_reg[4][1]  ( .D(n140), .CK(CLK), .RN(n211), .Q(
        \registers[4][1] ) );
  DFFRQX2M \registers_reg[4][0]  ( .D(n139), .CK(CLK), .RN(n211), .Q(
        \registers[4][0] ) );
  DFFRQX2M \registers_reg[8][7]  ( .D(n114), .CK(CLK), .RN(n210), .Q(
        \registers[8][7] ) );
  DFFRQX2M \registers_reg[8][6]  ( .D(n113), .CK(CLK), .RN(n210), .Q(
        \registers[8][6] ) );
  DFFRQX2M \registers_reg[8][5]  ( .D(n112), .CK(CLK), .RN(n209), .Q(
        \registers[8][5] ) );
  DFFRQX2M \registers_reg[8][4]  ( .D(n111), .CK(CLK), .RN(n209), .Q(
        \registers[8][4] ) );
  DFFRQX2M \registers_reg[8][3]  ( .D(n110), .CK(CLK), .RN(n209), .Q(
        \registers[8][3] ) );
  DFFRQX2M \registers_reg[8][2]  ( .D(n109), .CK(CLK), .RN(n209), .Q(
        \registers[8][2] ) );
  DFFRQX2M \registers_reg[8][1]  ( .D(n108), .CK(CLK), .RN(n209), .Q(
        \registers[8][1] ) );
  DFFRQX2M \registers_reg[8][0]  ( .D(n107), .CK(CLK), .RN(n209), .Q(
        \registers[8][0] ) );
  DFFRQX2M \registers_reg[12][7]  ( .D(n82), .CK(CLK), .RN(n207), .Q(
        \registers[12][7] ) );
  DFFRQX2M \registers_reg[12][6]  ( .D(n81), .CK(CLK), .RN(n207), .Q(
        \registers[12][6] ) );
  DFFRQX2M \registers_reg[12][5]  ( .D(n80), .CK(CLK), .RN(n207), .Q(
        \registers[12][5] ) );
  DFFRQX2M \registers_reg[12][4]  ( .D(n79), .CK(CLK), .RN(n207), .Q(
        \registers[12][4] ) );
  DFFRQX2M \registers_reg[12][3]  ( .D(n78), .CK(CLK), .RN(n207), .Q(
        \registers[12][3] ) );
  DFFRQX2M \registers_reg[12][2]  ( .D(n77), .CK(CLK), .RN(n207), .Q(
        \registers[12][2] ) );
  DFFRQX2M \registers_reg[12][1]  ( .D(n76), .CK(CLK), .RN(n207), .Q(
        \registers[12][1] ) );
  DFFRQX2M \registers_reg[12][0]  ( .D(n75), .CK(CLK), .RN(n207), .Q(
        \registers[12][0] ) );
  DFFRQX2M \registers_reg[3][0]  ( .D(n147), .CK(CLK), .RN(n212), .Q(REG3[0])
         );
  DFFRQX2M \registers_reg[3][4]  ( .D(n151), .CK(CLK), .RN(n212), .Q(REG3[4])
         );
  DFFSQX2M \registers_reg[2][0]  ( .D(n155), .CK(CLK), .SN(n205), .Q(REG2[0])
         );
  DFFRQX2M \registers_reg[3][2]  ( .D(n149), .CK(CLK), .RN(n212), .Q(REG3[2])
         );
  DFFRQX2M \registers_reg[3][3]  ( .D(n150), .CK(CLK), .RN(n212), .Q(REG3[3])
         );
  DFFRQX2M \registers_reg[3][6]  ( .D(n153), .CK(CLK), .RN(n212), .Q(REG3[6])
         );
  DFFRQX2M \registers_reg[3][7]  ( .D(n154), .CK(CLK), .RN(n212), .Q(REG3[7])
         );
  DFFSQX2M \registers_reg[3][5]  ( .D(n152), .CK(CLK), .SN(n205), .Q(REG3[5])
         );
  DFFRQX2M \registers_reg[2][1]  ( .D(n156), .CK(CLK), .RN(n212), .Q(REG2[1])
         );
  DFFRQX2M \registers_reg[3][1]  ( .D(n148), .CK(CLK), .RN(n212), .Q(REG3[1])
         );
  DFFRQX2M RdData_Valid_reg ( .D(n42), .CK(CLK), .RN(n209), .Q(RdData_Valid)
         );
  DFFSQX2M \registers_reg[2][7]  ( .D(n162), .CK(CLK), .SN(n205), .Q(REG2[7])
         );
  DFFRQX2M \registers_reg[2][4]  ( .D(n159), .CK(CLK), .RN(n212), .Q(REG2[4])
         );
  DFFRQX2M \registers_reg[2][5]  ( .D(n160), .CK(CLK), .RN(n213), .Q(REG2[5])
         );
  DFFRQX2M \registers_reg[2][6]  ( .D(n161), .CK(CLK), .RN(n213), .Q(REG2[6])
         );
  DFFRQX2M \registers_reg[2][2]  ( .D(n157), .CK(CLK), .RN(n212), .Q(REG2[2])
         );
  DFFRQX2M \registers_reg[2][3]  ( .D(n158), .CK(CLK), .RN(n212), .Q(REG2[3])
         );
  DFFRQX2M \registers_reg[0][1]  ( .D(n172), .CK(CLK), .RN(n213), .Q(REG0[1])
         );
  DFFRQX2M \registers_reg[0][0]  ( .D(n171), .CK(CLK), .RN(n213), .Q(REG0[0])
         );
  DFFRQX2M \registers_reg[0][2]  ( .D(n173), .CK(CLK), .RN(n213), .Q(REG0[2])
         );
  DFFRQX2M \registers_reg[0][3]  ( .D(n174), .CK(CLK), .RN(n213), .Q(REG0[3])
         );
  DFFRQX2M \registers_reg[0][4]  ( .D(n175), .CK(CLK), .RN(n213), .Q(REG0[4])
         );
  DFFRQX2M \registers_reg[0][5]  ( .D(n176), .CK(CLK), .RN(n214), .Q(REG0[5])
         );
  DFFRQX2M \registers_reg[0][6]  ( .D(n177), .CK(CLK), .RN(n214), .Q(REG0[6])
         );
  DFFRQX2M \registers_reg[1][6]  ( .D(n169), .CK(CLK), .RN(n213), .Q(REG1[6])
         );
  DFFRQX2M \registers_reg[1][1]  ( .D(n164), .CK(CLK), .RN(n213), .Q(REG1[1])
         );
  DFFRQX2M \registers_reg[0][7]  ( .D(n178), .CK(CLK), .RN(n205), .Q(REG0[7])
         );
  DFFRQX2M \registers_reg[1][5]  ( .D(n168), .CK(CLK), .RN(n213), .Q(REG1[5])
         );
  DFFRQX2M \registers_reg[1][4]  ( .D(n167), .CK(CLK), .RN(n213), .Q(REG1[4])
         );
  DFFRQX2M \registers_reg[1][7]  ( .D(n170), .CK(CLK), .RN(n213), .Q(REG1[7])
         );
  DFFRQX2M \registers_reg[1][3]  ( .D(n166), .CK(CLK), .RN(n213), .Q(REG1[3])
         );
  DFFRQX2M \registers_reg[1][2]  ( .D(n165), .CK(CLK), .RN(n213), .Q(REG1[2])
         );
  DFFRQX2M \registers_reg[1][0]  ( .D(n163), .CK(CLK), .RN(n213), .Q(REG1[0])
         );
  NOR2X2M U3 ( .A(n230), .B(N12), .Y(n22) );
  NOR2X2M U4 ( .A(n230), .B(n204), .Y(n17) );
  INVX2M U5 ( .A(WrData[5]), .Y(n227) );
  INVX2M U6 ( .A(WrData[6]), .Y(n228) );
  INVX2M U7 ( .A(WrData[7]), .Y(n229) );
  NOR2X2M U8 ( .A(n204), .B(N13), .Y(n25) );
  NOR2X2M U9 ( .A(N12), .B(N13), .Y(n28) );
  INVX2M U10 ( .A(n200), .Y(n201) );
  INVX2M U11 ( .A(n198), .Y(n199) );
  INVX2M U12 ( .A(n15), .Y(n220) );
  INVX2M U13 ( .A(n200), .Y(n202) );
  BUFX2M U14 ( .A(n203), .Y(n200) );
  INVX2M U15 ( .A(WrEn), .Y(n221) );
  BUFX2M U16 ( .A(n204), .Y(n198) );
  NAND2X2M U17 ( .A(n22), .B(n18), .Y(n21) );
  NAND2X2M U18 ( .A(n22), .B(n20), .Y(n23) );
  NAND2X2M U19 ( .A(n20), .B(n17), .Y(n19) );
  NAND2X2M U20 ( .A(n32), .B(n17), .Y(n31) );
  NAND2X2M U21 ( .A(n34), .B(n17), .Y(n33) );
  NAND2X2M U22 ( .A(n32), .B(n22), .Y(n35) );
  NAND2X2M U23 ( .A(n34), .B(n22), .Y(n36) );
  NAND2X2M U24 ( .A(n17), .B(n18), .Y(n16) );
  NAND2X2M U25 ( .A(RdEn), .B(n221), .Y(n15) );
  NOR2X2M U26 ( .A(n221), .B(RdEn), .Y(n14) );
  BUFX2M U27 ( .A(n219), .Y(n205) );
  BUFX2M U28 ( .A(n219), .Y(n206) );
  BUFX2M U29 ( .A(n218), .Y(n207) );
  BUFX2M U30 ( .A(n218), .Y(n208) );
  BUFX2M U31 ( .A(n217), .Y(n209) );
  BUFX2M U32 ( .A(n217), .Y(n210) );
  BUFX2M U33 ( .A(n216), .Y(n211) );
  BUFX2M U34 ( .A(n216), .Y(n212) );
  BUFX2M U35 ( .A(n215), .Y(n213) );
  BUFX2M U36 ( .A(n215), .Y(n214) );
  NAND2X2M U37 ( .A(n25), .B(n18), .Y(n24) );
  NAND2X2M U38 ( .A(n25), .B(n20), .Y(n26) );
  NAND2X2M U39 ( .A(n28), .B(n18), .Y(n27) );
  NAND2X2M U40 ( .A(n28), .B(n20), .Y(n30) );
  NAND2X2M U41 ( .A(n32), .B(n25), .Y(n37) );
  NAND2X2M U42 ( .A(n34), .B(n25), .Y(n38) );
  NAND2X2M U43 ( .A(n32), .B(n28), .Y(n39) );
  NAND2X2M U44 ( .A(n34), .B(n28), .Y(n41) );
  INVX2M U45 ( .A(WrData[0]), .Y(n226) );
  INVX2M U46 ( .A(WrData[1]), .Y(n225) );
  INVX2M U47 ( .A(WrData[2]), .Y(n224) );
  INVX2M U48 ( .A(WrData[3]), .Y(n223) );
  INVX2M U49 ( .A(WrData[4]), .Y(n222) );
  AND2X2M U50 ( .A(n29), .B(N11), .Y(n18) );
  AND2X2M U51 ( .A(n29), .B(n203), .Y(n20) );
  AND2X2M U52 ( .A(n40), .B(N11), .Y(n32) );
  AND2X2M U53 ( .A(n40), .B(n203), .Y(n34) );
  BUFX2M U54 ( .A(RST), .Y(n218) );
  BUFX2M U55 ( .A(RST), .Y(n217) );
  BUFX2M U56 ( .A(RST), .Y(n216) );
  BUFX2M U57 ( .A(RST), .Y(n215) );
  BUFX2M U58 ( .A(RST), .Y(n219) );
  OAI2BB2X1M U59 ( .B0(n16), .B1(n226), .A0N(\registers[15][0] ), .A1N(n16), 
        .Y(n51) );
  OAI2BB2X1M U60 ( .B0(n16), .B1(n225), .A0N(\registers[15][1] ), .A1N(n16), 
        .Y(n52) );
  OAI2BB2X1M U61 ( .B0(n16), .B1(n224), .A0N(\registers[15][2] ), .A1N(n16), 
        .Y(n53) );
  OAI2BB2X1M U62 ( .B0(n16), .B1(n223), .A0N(\registers[15][3] ), .A1N(n16), 
        .Y(n54) );
  OAI2BB2X1M U63 ( .B0(n16), .B1(n222), .A0N(\registers[15][4] ), .A1N(n16), 
        .Y(n55) );
  OAI2BB2X1M U64 ( .B0(n16), .B1(n227), .A0N(\registers[15][5] ), .A1N(n16), 
        .Y(n56) );
  OAI2BB2X1M U65 ( .B0(n16), .B1(n228), .A0N(\registers[15][6] ), .A1N(n16), 
        .Y(n57) );
  OAI2BB2X1M U66 ( .B0(n16), .B1(n229), .A0N(\registers[15][7] ), .A1N(n16), 
        .Y(n58) );
  OAI2BB2X1M U67 ( .B0(n226), .B1(n21), .A0N(\registers[13][0] ), .A1N(n21), 
        .Y(n67) );
  OAI2BB2X1M U68 ( .B0(n225), .B1(n21), .A0N(\registers[13][1] ), .A1N(n21), 
        .Y(n68) );
  OAI2BB2X1M U69 ( .B0(n224), .B1(n21), .A0N(\registers[13][2] ), .A1N(n21), 
        .Y(n69) );
  OAI2BB2X1M U70 ( .B0(n223), .B1(n21), .A0N(\registers[13][3] ), .A1N(n21), 
        .Y(n70) );
  OAI2BB2X1M U71 ( .B0(n222), .B1(n21), .A0N(\registers[13][4] ), .A1N(n21), 
        .Y(n71) );
  OAI2BB2X1M U72 ( .B0(n227), .B1(n21), .A0N(\registers[13][5] ), .A1N(n21), 
        .Y(n72) );
  OAI2BB2X1M U73 ( .B0(n228), .B1(n21), .A0N(\registers[13][6] ), .A1N(n21), 
        .Y(n73) );
  OAI2BB2X1M U74 ( .B0(n229), .B1(n21), .A0N(\registers[13][7] ), .A1N(n21), 
        .Y(n74) );
  OAI2BB2X1M U75 ( .B0(n226), .B1(n23), .A0N(\registers[12][0] ), .A1N(n23), 
        .Y(n75) );
  OAI2BB2X1M U76 ( .B0(n225), .B1(n23), .A0N(\registers[12][1] ), .A1N(n23), 
        .Y(n76) );
  OAI2BB2X1M U77 ( .B0(n224), .B1(n23), .A0N(\registers[12][2] ), .A1N(n23), 
        .Y(n77) );
  OAI2BB2X1M U78 ( .B0(n223), .B1(n23), .A0N(\registers[12][3] ), .A1N(n23), 
        .Y(n78) );
  OAI2BB2X1M U79 ( .B0(n222), .B1(n23), .A0N(\registers[12][4] ), .A1N(n23), 
        .Y(n79) );
  OAI2BB2X1M U80 ( .B0(n227), .B1(n23), .A0N(\registers[12][5] ), .A1N(n23), 
        .Y(n80) );
  OAI2BB2X1M U81 ( .B0(n228), .B1(n23), .A0N(\registers[12][6] ), .A1N(n23), 
        .Y(n81) );
  OAI2BB2X1M U82 ( .B0(n229), .B1(n23), .A0N(\registers[12][7] ), .A1N(n23), 
        .Y(n82) );
  OAI2BB2X1M U83 ( .B0(n226), .B1(n24), .A0N(\registers[11][0] ), .A1N(n24), 
        .Y(n83) );
  OAI2BB2X1M U84 ( .B0(n225), .B1(n24), .A0N(\registers[11][1] ), .A1N(n24), 
        .Y(n84) );
  OAI2BB2X1M U85 ( .B0(n224), .B1(n24), .A0N(\registers[11][2] ), .A1N(n24), 
        .Y(n85) );
  OAI2BB2X1M U86 ( .B0(n223), .B1(n24), .A0N(\registers[11][3] ), .A1N(n24), 
        .Y(n86) );
  OAI2BB2X1M U87 ( .B0(n222), .B1(n24), .A0N(\registers[11][4] ), .A1N(n24), 
        .Y(n87) );
  OAI2BB2X1M U88 ( .B0(n227), .B1(n24), .A0N(\registers[11][5] ), .A1N(n24), 
        .Y(n88) );
  OAI2BB2X1M U89 ( .B0(n228), .B1(n24), .A0N(\registers[11][6] ), .A1N(n24), 
        .Y(n89) );
  OAI2BB2X1M U90 ( .B0(n229), .B1(n24), .A0N(\registers[11][7] ), .A1N(n24), 
        .Y(n90) );
  OAI2BB2X1M U91 ( .B0(n226), .B1(n26), .A0N(\registers[10][0] ), .A1N(n26), 
        .Y(n91) );
  OAI2BB2X1M U92 ( .B0(n225), .B1(n26), .A0N(\registers[10][1] ), .A1N(n26), 
        .Y(n92) );
  OAI2BB2X1M U93 ( .B0(n224), .B1(n26), .A0N(\registers[10][2] ), .A1N(n26), 
        .Y(n93) );
  OAI2BB2X1M U94 ( .B0(n223), .B1(n26), .A0N(\registers[10][3] ), .A1N(n26), 
        .Y(n94) );
  OAI2BB2X1M U95 ( .B0(n222), .B1(n26), .A0N(\registers[10][4] ), .A1N(n26), 
        .Y(n95) );
  OAI2BB2X1M U96 ( .B0(n227), .B1(n26), .A0N(\registers[10][5] ), .A1N(n26), 
        .Y(n96) );
  OAI2BB2X1M U97 ( .B0(n228), .B1(n26), .A0N(\registers[10][6] ), .A1N(n26), 
        .Y(n97) );
  OAI2BB2X1M U98 ( .B0(n229), .B1(n26), .A0N(\registers[10][7] ), .A1N(n26), 
        .Y(n98) );
  OAI2BB2X1M U99 ( .B0(n226), .B1(n27), .A0N(\registers[9][0] ), .A1N(n27), 
        .Y(n99) );
  OAI2BB2X1M U100 ( .B0(n225), .B1(n27), .A0N(\registers[9][1] ), .A1N(n27), 
        .Y(n100) );
  OAI2BB2X1M U101 ( .B0(n224), .B1(n27), .A0N(\registers[9][2] ), .A1N(n27), 
        .Y(n101) );
  OAI2BB2X1M U102 ( .B0(n223), .B1(n27), .A0N(\registers[9][3] ), .A1N(n27), 
        .Y(n102) );
  OAI2BB2X1M U103 ( .B0(n222), .B1(n27), .A0N(\registers[9][4] ), .A1N(n27), 
        .Y(n103) );
  OAI2BB2X1M U104 ( .B0(n227), .B1(n27), .A0N(\registers[9][5] ), .A1N(n27), 
        .Y(n104) );
  OAI2BB2X1M U105 ( .B0(n228), .B1(n27), .A0N(\registers[9][6] ), .A1N(n27), 
        .Y(n105) );
  OAI2BB2X1M U106 ( .B0(n229), .B1(n27), .A0N(\registers[9][7] ), .A1N(n27), 
        .Y(n106) );
  OAI2BB2X1M U107 ( .B0(n226), .B1(n30), .A0N(\registers[8][0] ), .A1N(n30), 
        .Y(n107) );
  OAI2BB2X1M U108 ( .B0(n225), .B1(n30), .A0N(\registers[8][1] ), .A1N(n30), 
        .Y(n108) );
  OAI2BB2X1M U109 ( .B0(n224), .B1(n30), .A0N(\registers[8][2] ), .A1N(n30), 
        .Y(n109) );
  OAI2BB2X1M U110 ( .B0(n223), .B1(n30), .A0N(\registers[8][3] ), .A1N(n30), 
        .Y(n110) );
  OAI2BB2X1M U111 ( .B0(n222), .B1(n30), .A0N(\registers[8][4] ), .A1N(n30), 
        .Y(n111) );
  OAI2BB2X1M U112 ( .B0(n227), .B1(n30), .A0N(\registers[8][5] ), .A1N(n30), 
        .Y(n112) );
  OAI2BB2X1M U113 ( .B0(n228), .B1(n30), .A0N(\registers[8][6] ), .A1N(n30), 
        .Y(n113) );
  OAI2BB2X1M U114 ( .B0(n229), .B1(n30), .A0N(\registers[8][7] ), .A1N(n30), 
        .Y(n114) );
  OAI2BB2X1M U115 ( .B0(n226), .B1(n19), .A0N(\registers[14][0] ), .A1N(n19), 
        .Y(n59) );
  OAI2BB2X1M U116 ( .B0(n225), .B1(n19), .A0N(\registers[14][1] ), .A1N(n19), 
        .Y(n60) );
  OAI2BB2X1M U117 ( .B0(n224), .B1(n19), .A0N(\registers[14][2] ), .A1N(n19), 
        .Y(n61) );
  OAI2BB2X1M U118 ( .B0(n223), .B1(n19), .A0N(\registers[14][3] ), .A1N(n19), 
        .Y(n62) );
  OAI2BB2X1M U119 ( .B0(n222), .B1(n19), .A0N(\registers[14][4] ), .A1N(n19), 
        .Y(n63) );
  OAI2BB2X1M U120 ( .B0(n227), .B1(n19), .A0N(\registers[14][5] ), .A1N(n19), 
        .Y(n64) );
  OAI2BB2X1M U121 ( .B0(n228), .B1(n19), .A0N(\registers[14][6] ), .A1N(n19), 
        .Y(n65) );
  OAI2BB2X1M U122 ( .B0(n229), .B1(n19), .A0N(\registers[14][7] ), .A1N(n19), 
        .Y(n66) );
  OAI2BB2X1M U123 ( .B0(n226), .B1(n31), .A0N(\registers[7][0] ), .A1N(n31), 
        .Y(n115) );
  OAI2BB2X1M U124 ( .B0(n225), .B1(n31), .A0N(\registers[7][1] ), .A1N(n31), 
        .Y(n116) );
  OAI2BB2X1M U125 ( .B0(n224), .B1(n31), .A0N(\registers[7][2] ), .A1N(n31), 
        .Y(n117) );
  OAI2BB2X1M U126 ( .B0(n223), .B1(n31), .A0N(\registers[7][3] ), .A1N(n31), 
        .Y(n118) );
  OAI2BB2X1M U127 ( .B0(n222), .B1(n31), .A0N(\registers[7][4] ), .A1N(n31), 
        .Y(n119) );
  OAI2BB2X1M U128 ( .B0(n227), .B1(n31), .A0N(\registers[7][5] ), .A1N(n31), 
        .Y(n120) );
  OAI2BB2X1M U129 ( .B0(n228), .B1(n31), .A0N(\registers[7][6] ), .A1N(n31), 
        .Y(n121) );
  OAI2BB2X1M U130 ( .B0(n229), .B1(n31), .A0N(\registers[7][7] ), .A1N(n31), 
        .Y(n122) );
  OAI2BB2X1M U131 ( .B0(n226), .B1(n33), .A0N(\registers[6][0] ), .A1N(n33), 
        .Y(n123) );
  OAI2BB2X1M U132 ( .B0(n225), .B1(n33), .A0N(\registers[6][1] ), .A1N(n33), 
        .Y(n124) );
  OAI2BB2X1M U133 ( .B0(n224), .B1(n33), .A0N(\registers[6][2] ), .A1N(n33), 
        .Y(n125) );
  OAI2BB2X1M U134 ( .B0(n223), .B1(n33), .A0N(\registers[6][3] ), .A1N(n33), 
        .Y(n126) );
  OAI2BB2X1M U135 ( .B0(n222), .B1(n33), .A0N(\registers[6][4] ), .A1N(n33), 
        .Y(n127) );
  OAI2BB2X1M U136 ( .B0(n227), .B1(n33), .A0N(\registers[6][5] ), .A1N(n33), 
        .Y(n128) );
  OAI2BB2X1M U137 ( .B0(n228), .B1(n33), .A0N(\registers[6][6] ), .A1N(n33), 
        .Y(n129) );
  OAI2BB2X1M U138 ( .B0(n229), .B1(n33), .A0N(\registers[6][7] ), .A1N(n33), 
        .Y(n130) );
  OAI2BB2X1M U139 ( .B0(n226), .B1(n35), .A0N(\registers[5][0] ), .A1N(n35), 
        .Y(n131) );
  OAI2BB2X1M U140 ( .B0(n225), .B1(n35), .A0N(\registers[5][1] ), .A1N(n35), 
        .Y(n132) );
  OAI2BB2X1M U141 ( .B0(n224), .B1(n35), .A0N(\registers[5][2] ), .A1N(n35), 
        .Y(n133) );
  OAI2BB2X1M U142 ( .B0(n223), .B1(n35), .A0N(\registers[5][3] ), .A1N(n35), 
        .Y(n134) );
  OAI2BB2X1M U143 ( .B0(n222), .B1(n35), .A0N(\registers[5][4] ), .A1N(n35), 
        .Y(n135) );
  OAI2BB2X1M U144 ( .B0(n227), .B1(n35), .A0N(\registers[5][5] ), .A1N(n35), 
        .Y(n136) );
  OAI2BB2X1M U145 ( .B0(n228), .B1(n35), .A0N(\registers[5][6] ), .A1N(n35), 
        .Y(n137) );
  OAI2BB2X1M U146 ( .B0(n229), .B1(n35), .A0N(\registers[5][7] ), .A1N(n35), 
        .Y(n138) );
  OAI2BB2X1M U147 ( .B0(n226), .B1(n36), .A0N(\registers[4][0] ), .A1N(n36), 
        .Y(n139) );
  OAI2BB2X1M U148 ( .B0(n225), .B1(n36), .A0N(\registers[4][1] ), .A1N(n36), 
        .Y(n140) );
  OAI2BB2X1M U149 ( .B0(n224), .B1(n36), .A0N(\registers[4][2] ), .A1N(n36), 
        .Y(n141) );
  OAI2BB2X1M U150 ( .B0(n223), .B1(n36), .A0N(\registers[4][3] ), .A1N(n36), 
        .Y(n142) );
  OAI2BB2X1M U151 ( .B0(n222), .B1(n36), .A0N(\registers[4][4] ), .A1N(n36), 
        .Y(n143) );
  OAI2BB2X1M U152 ( .B0(n227), .B1(n36), .A0N(\registers[4][5] ), .A1N(n36), 
        .Y(n144) );
  OAI2BB2X1M U153 ( .B0(n228), .B1(n36), .A0N(\registers[4][6] ), .A1N(n36), 
        .Y(n145) );
  OAI2BB2X1M U154 ( .B0(n229), .B1(n36), .A0N(\registers[4][7] ), .A1N(n36), 
        .Y(n146) );
  OAI2BB2X1M U155 ( .B0(n226), .B1(n37), .A0N(REG3[0]), .A1N(n37), .Y(n147) );
  OAI2BB2X1M U156 ( .B0(n225), .B1(n37), .A0N(REG3[1]), .A1N(n37), .Y(n148) );
  OAI2BB2X1M U157 ( .B0(n224), .B1(n37), .A0N(REG3[2]), .A1N(n37), .Y(n149) );
  OAI2BB2X1M U158 ( .B0(n223), .B1(n37), .A0N(REG3[3]), .A1N(n37), .Y(n150) );
  OAI2BB2X1M U159 ( .B0(n222), .B1(n37), .A0N(REG3[4]), .A1N(n37), .Y(n151) );
  OAI2BB2X1M U160 ( .B0(n228), .B1(n37), .A0N(REG3[6]), .A1N(n37), .Y(n153) );
  OAI2BB2X1M U161 ( .B0(n229), .B1(n37), .A0N(REG3[7]), .A1N(n37), .Y(n154) );
  OAI2BB2X1M U162 ( .B0(n225), .B1(n38), .A0N(REG2[1]), .A1N(n38), .Y(n156) );
  OAI2BB2X1M U163 ( .B0(n224), .B1(n38), .A0N(REG2[2]), .A1N(n38), .Y(n157) );
  OAI2BB2X1M U164 ( .B0(n223), .B1(n38), .A0N(REG2[3]), .A1N(n38), .Y(n158) );
  OAI2BB2X1M U165 ( .B0(n222), .B1(n38), .A0N(REG2[4]), .A1N(n38), .Y(n159) );
  OAI2BB2X1M U166 ( .B0(n227), .B1(n38), .A0N(REG2[5]), .A1N(n38), .Y(n160) );
  OAI2BB2X1M U167 ( .B0(n228), .B1(n38), .A0N(REG2[6]), .A1N(n38), .Y(n161) );
  OAI2BB2X1M U168 ( .B0(n226), .B1(n39), .A0N(REG1[0]), .A1N(n39), .Y(n163) );
  OAI2BB2X1M U169 ( .B0(n225), .B1(n39), .A0N(REG1[1]), .A1N(n39), .Y(n164) );
  OAI2BB2X1M U170 ( .B0(n224), .B1(n39), .A0N(REG1[2]), .A1N(n39), .Y(n165) );
  OAI2BB2X1M U171 ( .B0(n223), .B1(n39), .A0N(REG1[3]), .A1N(n39), .Y(n166) );
  OAI2BB2X1M U172 ( .B0(n222), .B1(n39), .A0N(REG1[4]), .A1N(n39), .Y(n167) );
  OAI2BB2X1M U173 ( .B0(n227), .B1(n39), .A0N(REG1[5]), .A1N(n39), .Y(n168) );
  OAI2BB2X1M U174 ( .B0(n228), .B1(n39), .A0N(REG1[6]), .A1N(n39), .Y(n169) );
  OAI2BB2X1M U175 ( .B0(n229), .B1(n39), .A0N(REG1[7]), .A1N(n39), .Y(n170) );
  OAI2BB2X1M U176 ( .B0(n226), .B1(n41), .A0N(REG0[0]), .A1N(n41), .Y(n171) );
  OAI2BB2X1M U177 ( .B0(n225), .B1(n41), .A0N(REG0[1]), .A1N(n41), .Y(n172) );
  OAI2BB2X1M U178 ( .B0(n224), .B1(n41), .A0N(REG0[2]), .A1N(n41), .Y(n173) );
  OAI2BB2X1M U179 ( .B0(n223), .B1(n41), .A0N(REG0[3]), .A1N(n41), .Y(n174) );
  OAI2BB2X1M U180 ( .B0(n222), .B1(n41), .A0N(REG0[4]), .A1N(n41), .Y(n175) );
  OAI2BB2X1M U181 ( .B0(n227), .B1(n41), .A0N(REG0[5]), .A1N(n41), .Y(n176) );
  OAI2BB2X1M U182 ( .B0(n228), .B1(n41), .A0N(REG0[6]), .A1N(n41), .Y(n177) );
  OAI2BB2X1M U183 ( .B0(n229), .B1(n41), .A0N(REG0[7]), .A1N(n41), .Y(n178) );
  NOR2BX2M U184 ( .AN(n14), .B(N14), .Y(n40) );
  OAI2BB2X1M U185 ( .B0(n227), .B1(n37), .A0N(REG3[5]), .A1N(n37), .Y(n152) );
  OAI2BB2X1M U186 ( .B0(n226), .B1(n38), .A0N(REG2[0]), .A1N(n38), .Y(n155) );
  OAI2BB2X1M U187 ( .B0(n229), .B1(n38), .A0N(REG2[7]), .A1N(n38), .Y(n162) );
  MX4X1M U188 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n201), 
        .S1(N12), .Y(n8) );
  MX4X1M U189 ( .A(\registers[4][0] ), .B(\registers[5][0] ), .C(
        \registers[6][0] ), .D(\registers[7][0] ), .S0(N11), .S1(N12), .Y(n3)
         );
  MX4X1M U190 ( .A(\registers[4][1] ), .B(\registers[5][1] ), .C(
        \registers[6][1] ), .D(\registers[7][1] ), .S0(n201), .S1(N12), .Y(n7)
         );
  MX4X1M U191 ( .A(\registers[4][2] ), .B(\registers[5][2] ), .C(
        \registers[6][2] ), .D(\registers[7][2] ), .S0(n201), .S1(n199), .Y(
        n11) );
  MX4X1M U192 ( .A(\registers[4][3] ), .B(\registers[5][3] ), .C(
        \registers[6][3] ), .D(\registers[7][3] ), .S0(n201), .S1(n199), .Y(
        n180) );
  MX4X1M U193 ( .A(\registers[4][4] ), .B(\registers[5][4] ), .C(
        \registers[6][4] ), .D(\registers[7][4] ), .S0(n201), .S1(n199), .Y(
        n184) );
  MX4X1M U194 ( .A(\registers[4][5] ), .B(\registers[5][5] ), .C(
        \registers[6][5] ), .D(\registers[7][5] ), .S0(n202), .S1(n199), .Y(
        n188) );
  MX4X1M U195 ( .A(\registers[4][6] ), .B(\registers[5][6] ), .C(
        \registers[6][6] ), .D(\registers[7][6] ), .S0(n202), .S1(N12), .Y(
        n192) );
  MX4X1M U196 ( .A(\registers[4][7] ), .B(\registers[5][7] ), .C(
        \registers[6][7] ), .D(\registers[7][7] ), .S0(n202), .S1(N12), .Y(
        n196) );
  MX4X1M U197 ( .A(\registers[12][0] ), .B(\registers[13][0] ), .C(
        \registers[14][0] ), .D(\registers[15][0] ), .S0(n202), .S1(n199), .Y(
        n1) );
  MX4X1M U198 ( .A(\registers[12][2] ), .B(\registers[13][2] ), .C(
        \registers[14][2] ), .D(\registers[15][2] ), .S0(n201), .S1(n199), .Y(
        n9) );
  MX4X1M U199 ( .A(\registers[12][3] ), .B(\registers[13][3] ), .C(
        \registers[14][3] ), .D(\registers[15][3] ), .S0(n201), .S1(n199), .Y(
        n13) );
  MX4X1M U200 ( .A(\registers[12][4] ), .B(\registers[13][4] ), .C(
        \registers[14][4] ), .D(\registers[15][4] ), .S0(n201), .S1(n199), .Y(
        n182) );
  MX4X1M U201 ( .A(\registers[12][5] ), .B(\registers[13][5] ), .C(
        \registers[14][5] ), .D(\registers[15][5] ), .S0(n202), .S1(N12), .Y(
        n186) );
  MX4X1M U202 ( .A(\registers[12][6] ), .B(\registers[13][6] ), .C(
        \registers[14][6] ), .D(\registers[15][6] ), .S0(n202), .S1(N12), .Y(
        n190) );
  MX4X1M U203 ( .A(\registers[12][7] ), .B(\registers[13][7] ), .C(
        \registers[14][7] ), .D(\registers[15][7] ), .S0(n202), .S1(N12), .Y(
        n194) );
  AND2X2M U204 ( .A(N14), .B(n14), .Y(n29) );
  AO22X1M U205 ( .A0(N43), .A1(n220), .B0(RdData[0]), .B1(n15), .Y(n43) );
  MX4X1M U206 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U207 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(N12), .Y(n4) );
  MX4X1M U208 ( .A(\registers[8][0] ), .B(\registers[9][0] ), .C(
        \registers[10][0] ), .D(\registers[11][0] ), .S0(N11), .S1(N12), .Y(n2) );
  AO22X1M U209 ( .A0(N42), .A1(n220), .B0(RdData[1]), .B1(n15), .Y(n44) );
  MX4X1M U210 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N14), .S1(N13), .Y(N42) );
  MX4X1M U211 ( .A(\registers[8][1] ), .B(\registers[9][1] ), .C(
        \registers[10][1] ), .D(\registers[11][1] ), .S0(N11), .S1(N12), .Y(n6) );
  MX4X1M U212 ( .A(\registers[12][1] ), .B(\registers[13][1] ), .C(
        \registers[14][1] ), .D(\registers[15][1] ), .S0(n201), .S1(N12), .Y(
        n5) );
  AO22X1M U213 ( .A0(N41), .A1(n220), .B0(RdData[2]), .B1(n15), .Y(n45) );
  MX4X1M U214 ( .A(n12), .B(n10), .C(n11), .D(n9), .S0(N14), .S1(N13), .Y(N41)
         );
  MX4X1M U215 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n201), 
        .S1(n199), .Y(n12) );
  MX4X1M U216 ( .A(\registers[8][2] ), .B(\registers[9][2] ), .C(
        \registers[10][2] ), .D(\registers[11][2] ), .S0(n201), .S1(n199), .Y(
        n10) );
  AO22X1M U217 ( .A0(N40), .A1(n220), .B0(RdData[3]), .B1(n15), .Y(n46) );
  MX4X1M U218 ( .A(n181), .B(n179), .C(n180), .D(n13), .S0(N14), .S1(N13), .Y(
        N40) );
  MX4X1M U219 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n201), 
        .S1(n199), .Y(n181) );
  MX4X1M U220 ( .A(\registers[8][3] ), .B(\registers[9][3] ), .C(
        \registers[10][3] ), .D(\registers[11][3] ), .S0(n201), .S1(n199), .Y(
        n179) );
  AO22X1M U221 ( .A0(N39), .A1(n220), .B0(RdData[4]), .B1(n15), .Y(n47) );
  MX4X1M U222 ( .A(n185), .B(n183), .C(n184), .D(n182), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U223 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n202), 
        .S1(n199), .Y(n185) );
  MX4X1M U224 ( .A(\registers[8][4] ), .B(\registers[9][4] ), .C(
        \registers[10][4] ), .D(\registers[11][4] ), .S0(n201), .S1(n199), .Y(
        n183) );
  AO22X1M U225 ( .A0(N38), .A1(n220), .B0(RdData[5]), .B1(n15), .Y(n48) );
  MX4X1M U226 ( .A(n189), .B(n187), .C(n188), .D(n186), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U227 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n202), 
        .S1(N12), .Y(n189) );
  MX4X1M U228 ( .A(\registers[8][5] ), .B(\registers[9][5] ), .C(
        \registers[10][5] ), .D(\registers[11][5] ), .S0(n202), .S1(N12), .Y(
        n187) );
  AO22X1M U229 ( .A0(N37), .A1(n220), .B0(RdData[6]), .B1(n15), .Y(n49) );
  MX4X1M U230 ( .A(n193), .B(n191), .C(n192), .D(n190), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U231 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n202), 
        .S1(N12), .Y(n193) );
  MX4X1M U232 ( .A(\registers[8][6] ), .B(\registers[9][6] ), .C(
        \registers[10][6] ), .D(\registers[11][6] ), .S0(n202), .S1(N12), .Y(
        n191) );
  AO22X1M U233 ( .A0(N36), .A1(n220), .B0(RdData[7]), .B1(n15), .Y(n50) );
  MX4X1M U234 ( .A(n197), .B(n195), .C(n196), .D(n194), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U235 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n202), 
        .S1(N12), .Y(n197) );
  MX4X1M U236 ( .A(\registers[8][7] ), .B(\registers[9][7] ), .C(
        \registers[10][7] ), .D(\registers[11][7] ), .S0(n202), .S1(N12), .Y(
        n195) );
  AO21XLM U237 ( .A0(RdData_Valid), .A1(n14), .B0(n220), .Y(n42) );
  INVX2M U238 ( .A(N11), .Y(n203) );
  INVX2M U239 ( .A(N13), .Y(n230) );
  INVX2M U240 ( .A(N12), .Y(n204) );
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


module ClkDiv_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  ClkDiv_0_DW01_inc_0 add_48 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
  DFFRQX2M div_clk_reg ( .D(n18), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFSQX2M odd_edge_tog_reg ( .D(n17), .CK(i_ref_clk), .SN(i_rst_n), .Q(
        odd_edge_tog) );
  DFFRQX2M \count_reg[5]  ( .D(n20), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[5]) );
  DFFRQX2M \count_reg[4]  ( .D(n21), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[4]) );
  DFFRQX2M \count_reg[3]  ( .D(n22), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[3]) );
  DFFRQX2M \count_reg[6]  ( .D(n19), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[6]) );
  DFFRQX2M \count_reg[0]  ( .D(n25), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[0]) );
  DFFRQX2M \count_reg[2]  ( .D(n23), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[2]) );
  DFFRQX2M \count_reg[1]  ( .D(n24), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[1]) );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk), .S0(n43), .Y(o_div_clk) );
  NAND2BX2M U4 ( .AN(n14), .B(i_clk_en), .Y(n7) );
  INVX2M U5 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  INVX2M U6 ( .A(i_div_ratio[5]), .Y(n6) );
  NAND2BX1M U7 ( .AN(i_div_ratio[2]), .B(edge_flip_half[0]), .Y(n1) );
  OAI2BB1X1M U8 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U9 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U10 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U11 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U12 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U13 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U14 ( .A0(n3), .A1(n6), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U15 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U16 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U17 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U18 ( .A0(n7), .A1(count[0]), .B0(N16), .B1(n8), .Y(n25) );
  AO22X1M U19 ( .A0(n7), .A1(count[1]), .B0(N17), .B1(n8), .Y(n24) );
  AO22X1M U20 ( .A0(n7), .A1(count[2]), .B0(N18), .B1(n8), .Y(n23) );
  AO22X1M U21 ( .A0(n7), .A1(count[3]), .B0(N19), .B1(n8), .Y(n22) );
  AO22X1M U22 ( .A0(n7), .A1(count[4]), .B0(N20), .B1(n8), .Y(n21) );
  AO22X1M U23 ( .A0(n7), .A1(count[5]), .B0(N21), .B1(n8), .Y(n20) );
  AO22X1M U24 ( .A0(n7), .A1(count[6]), .B0(N22), .B1(n8), .Y(n19) );
  AND3X1M U25 ( .A(n9), .B(n10), .C(n43), .Y(n8) );
  CLKINVX1M U26 ( .A(n7), .Y(n43) );
  CLKXOR2X2M U27 ( .A(div_clk), .B(n11), .Y(n18) );
  AOI21X1M U28 ( .A0(n10), .A1(n9), .B0(n7), .Y(n11) );
  OR2X1M U29 ( .A(n12), .B(i_div_ratio[0]), .Y(n9) );
  XNOR2X1M U30 ( .A(odd_edge_tog), .B(n13), .Y(n17) );
  OR2X1M U31 ( .A(n10), .B(n7), .Y(n13) );
  NOR4BX1M U32 ( .AN(n15), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n14) );
  NOR4X1M U33 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n15) );
  CLKNAND2X2M U34 ( .A(n16), .B(i_div_ratio[0]), .Y(n10) );
  MXI2X1M U35 ( .A(n26), .B(n12), .S0(odd_edge_tog), .Y(n16) );
  NAND4X1M U36 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n12) );
  NOR4X1M U37 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n30) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n34) );
  CLKXOR2X2M U39 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n33) );
  CLKXOR2X2M U40 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n32) );
  CLKXOR2X2M U41 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n31) );
  XNOR2X1M U42 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n29) );
  XNOR2X1M U43 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n28) );
  XNOR2X1M U44 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n27) );
  NAND4X1M U45 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n26) );
  NOR4X1M U46 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n38) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n42) );
  CLKXOR2X2M U48 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n41) );
  CLKXOR2X2M U49 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n40) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n39) );
  XNOR2X1M U51 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n37) );
  XNOR2X1M U52 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n36) );
  XNOR2X1M U53 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n35) );
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


module ClkDiv_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  ClkDiv_1_DW01_inc_0 add_48 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
  DFFRQX2M div_clk_reg ( .D(n51), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFSQX2M odd_edge_tog_reg ( .D(n52), .CK(i_ref_clk), .SN(i_rst_n), .Q(
        odd_edge_tog) );
  DFFRQX2M \count_reg[5]  ( .D(n49), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[5]) );
  DFFRQX2M \count_reg[4]  ( .D(n48), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[4]) );
  DFFRQX2M \count_reg[3]  ( .D(n47), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[3]) );
  DFFRQX2M \count_reg[6]  ( .D(n50), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[6]) );
  DFFRQX2M \count_reg[0]  ( .D(n44), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[0]) );
  DFFRQX2M \count_reg[2]  ( .D(n46), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[2]) );
  DFFRQX2M \count_reg[1]  ( .D(n45), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[1]) );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk), .S0(n43), .Y(o_div_clk) );
  INVX2M U4 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  NAND2BX2M U5 ( .AN(n14), .B(i_clk_en), .Y(n7) );
  INVX2M U6 ( .A(i_div_ratio[5]), .Y(n6) );
  NAND2BX1M U7 ( .AN(i_div_ratio[2]), .B(edge_flip_half[0]), .Y(n1) );
  OAI2BB1X1M U8 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U9 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U10 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U11 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U12 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U13 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U14 ( .A0(n3), .A1(n6), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U15 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U16 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U17 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U18 ( .A0(n7), .A1(count[0]), .B0(N16), .B1(n8), .Y(n44) );
  AO22X1M U19 ( .A0(n7), .A1(count[1]), .B0(N17), .B1(n8), .Y(n45) );
  AO22X1M U20 ( .A0(n7), .A1(count[2]), .B0(N18), .B1(n8), .Y(n46) );
  AO22X1M U21 ( .A0(n7), .A1(count[3]), .B0(N19), .B1(n8), .Y(n47) );
  AO22X1M U22 ( .A0(n7), .A1(count[4]), .B0(N20), .B1(n8), .Y(n48) );
  AO22X1M U23 ( .A0(n7), .A1(count[5]), .B0(N21), .B1(n8), .Y(n49) );
  AO22X1M U24 ( .A0(n7), .A1(count[6]), .B0(N22), .B1(n8), .Y(n50) );
  AND3X1M U25 ( .A(n9), .B(n10), .C(n43), .Y(n8) );
  CLKINVX1M U26 ( .A(n7), .Y(n43) );
  CLKXOR2X2M U27 ( .A(div_clk), .B(n11), .Y(n51) );
  AOI21X1M U28 ( .A0(n10), .A1(n9), .B0(n7), .Y(n11) );
  OR2X1M U29 ( .A(n12), .B(i_div_ratio[0]), .Y(n9) );
  XNOR2X1M U30 ( .A(odd_edge_tog), .B(n13), .Y(n52) );
  OR2X1M U31 ( .A(n10), .B(n7), .Y(n13) );
  NOR4BX1M U32 ( .AN(n15), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n14) );
  NOR4X1M U33 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n15) );
  CLKNAND2X2M U34 ( .A(n16), .B(i_div_ratio[0]), .Y(n10) );
  MXI2X1M U35 ( .A(n26), .B(n12), .S0(odd_edge_tog), .Y(n16) );
  NAND4X1M U36 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n12) );
  NOR4X1M U37 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n30) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n34) );
  CLKXOR2X2M U39 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n33) );
  CLKXOR2X2M U40 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n32) );
  CLKXOR2X2M U41 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n31) );
  XNOR2X1M U42 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n29) );
  XNOR2X1M U43 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n28) );
  XNOR2X1M U44 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n27) );
  NAND4X1M U45 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n26) );
  NOR4X1M U46 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n38) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n42) );
  CLKXOR2X2M U48 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n41) );
  CLKXOR2X2M U49 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n40) );
  CLKXOR2X2M U50 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n39) );
  XNOR2X1M U51 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n37) );
  XNOR2X1M U52 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n36) );
  XNOR2X1M U53 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n35) );
endmodule


module SYS_CTRL ( CLK, RST, ALU_OUT, RdData, RX_P_DATA, OUT_VALID, RX_D_VLD, 
        RdData_Valid, FIFO_FULL, ALU_EN, GATE_EN, ALU_FUN, FIFO_WR_DATA, 
        WrData, Address, WrEn, RdEn, FIFO_W_INC );
  input [15:0] ALU_OUT;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [7:0] FIFO_WR_DATA;
  output [7:0] WrData;
  output [3:0] Address;
  input CLK, RST, OUT_VALID, RX_D_VLD, RdData_Valid, FIFO_FULL;
  output ALU_EN, GATE_EN, WrEn, RdEn, FIFO_W_INC;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;
  wire   [3:0] current_state;
  wire   [3:0] next_state;

  DFFRQX2M \Address_reg[1]  ( .D(n74), .CK(CLK), .RN(RST), .Q(Address[1]) );
  DFFSQX2M \Address_reg[2]  ( .D(n73), .CK(CLK), .SN(RST), .Q(Address[2]) );
  DFFRQX2M \Address_reg[3]  ( .D(n72), .CK(CLK), .RN(RST), .Q(Address[3]) );
  DFFRQX2M \Address_reg[0]  ( .D(n75), .CK(CLK), .RN(RST), .Q(Address[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(RST), .Q(
        current_state[3]) );
  NOR4X1M U3 ( .A(n12), .B(n10), .C(n13), .D(n14), .Y(n32) );
  NOR2X2M U4 ( .A(n18), .B(n9), .Y(ALU_FUN[1]) );
  NOR2X2M U5 ( .A(n19), .B(n9), .Y(ALU_FUN[0]) );
  NOR2X2M U6 ( .A(n26), .B(n20), .Y(ALU_EN) );
  NOR2X2M U7 ( .A(n17), .B(n9), .Y(ALU_FUN[2]) );
  NOR2X2M U8 ( .A(n16), .B(n9), .Y(ALU_FUN[3]) );
  NAND2X2M U9 ( .A(n4), .B(n9), .Y(WrEn) );
  NAND2X2M U10 ( .A(n62), .B(n9), .Y(GATE_EN) );
  INVX2M U11 ( .A(ALU_EN), .Y(n9) );
  NOR2X2M U12 ( .A(n11), .B(n32), .Y(n62) );
  INVX2M U13 ( .A(n61), .Y(n4) );
  INVX2M U14 ( .A(n56), .Y(n6) );
  INVX2M U15 ( .A(n40), .Y(n7) );
  INVX2M U16 ( .A(n39), .Y(n11) );
  NOR3BX2M U17 ( .AN(n59), .B(n13), .C(n14), .Y(RdEn) );
  OAI211X2M U18 ( .A0(n20), .A1(n50), .B0(n25), .C0(n27), .Y(n61) );
  NOR2X2M U19 ( .A(n4), .B(n19), .Y(WrData[0]) );
  NOR2X2M U20 ( .A(n4), .B(n18), .Y(WrData[1]) );
  NOR2X2M U21 ( .A(n4), .B(n17), .Y(WrData[2]) );
  NOR2X2M U22 ( .A(n4), .B(n16), .Y(WrData[3]) );
  NOR2X2M U23 ( .A(n4), .B(n15), .Y(WrData[4]) );
  NOR2X2M U24 ( .A(n24), .B(n20), .Y(n56) );
  NAND2X2M U25 ( .A(n58), .B(n60), .Y(n24) );
  NAND4X2M U26 ( .A(n23), .B(n21), .C(n24), .D(n25), .Y(next_state[2]) );
  NAND3X2M U27 ( .A(n6), .B(n46), .C(n54), .Y(n53) );
  NAND3X2M U28 ( .A(n10), .B(n13), .C(n60), .Y(n27) );
  NAND2X2M U29 ( .A(n21), .B(n22), .Y(next_state[3]) );
  INVX2M U30 ( .A(n54), .Y(n5) );
  AOI31X2M U31 ( .A0(n33), .A1(n15), .A2(n19), .B0(n43), .Y(n23) );
  AND3X2M U32 ( .A(n59), .B(n14), .C(n13), .Y(n30) );
  NAND3X2M U33 ( .A(n12), .B(n14), .C(n58), .Y(n40) );
  NOR2X2M U34 ( .A(n14), .B(current_state[1]), .Y(n60) );
  INVX2M U35 ( .A(current_state[2]), .Y(n14) );
  NAND3X2M U36 ( .A(n60), .B(n10), .C(current_state[3]), .Y(n26) );
  NAND3X2M U37 ( .A(current_state[3]), .B(n60), .C(current_state[0]), .Y(n39)
         );
  INVX2M U38 ( .A(current_state[0]), .Y(n10) );
  INVX2M U39 ( .A(current_state[3]), .Y(n13) );
  INVX2M U40 ( .A(current_state[1]), .Y(n12) );
  NOR2X2M U41 ( .A(n12), .B(current_state[0]), .Y(n59) );
  NOR2X2M U42 ( .A(FIFO_FULL), .B(n63), .Y(FIFO_W_INC) );
  AOI21BX2M U43 ( .A0(n42), .A1(RdData_Valid), .B0N(n62), .Y(n63) );
  INVX2M U44 ( .A(RX_D_VLD), .Y(n20) );
  AND3X2M U45 ( .A(n59), .B(current_state[3]), .C(n14), .Y(n42) );
  NOR3BX2M U46 ( .AN(n59), .B(n14), .C(current_state[3]), .Y(n43) );
  NOR2X2M U47 ( .A(n10), .B(current_state[3]), .Y(n58) );
  AOI2B1X1M U48 ( .A1N(n41), .A0(n42), .B0(RdEn), .Y(n22) );
  NOR2BX2M U49 ( .AN(RdData_Valid), .B(FIFO_FULL), .Y(n41) );
  NAND2X2M U50 ( .A(n43), .B(RX_D_VLD), .Y(n46) );
  NAND3X2M U51 ( .A(current_state[1]), .B(current_state[2]), .C(n58), .Y(n25)
         );
  NAND4X2M U52 ( .A(n23), .B(n22), .C(n34), .D(n35), .Y(next_state[1]) );
  AOI211X2M U53 ( .A0(n36), .A1(n37), .B0(n38), .C0(n30), .Y(n35) );
  NOR2X2M U54 ( .A(n19), .B(n15), .Y(n36) );
  OAI32X1M U55 ( .A0(n1), .A1(FIFO_FULL), .A2(n39), .B0(n20), .B1(n40), .Y(n38) );
  AND4X2M U56 ( .A(n26), .B(n27), .C(n28), .D(n29), .Y(n21) );
  NAND3X2M U57 ( .A(n33), .B(RX_P_DATA[0]), .C(RX_P_DATA[4]), .Y(n28) );
  AOI222X1M U58 ( .A0(n30), .A1(RX_D_VLD), .B0(n11), .B1(n31), .C0(FIFO_FULL), 
        .C1(n32), .Y(n29) );
  NAND3X2M U59 ( .A(n6), .B(n46), .C(n57), .Y(n54) );
  OAI21X2M U60 ( .A0(n30), .A1(n7), .B0(RX_D_VLD), .Y(n57) );
  OAI2BB2X1M U61 ( .B0(n5), .B1(n55), .A0N(Address[0]), .A1N(n5), .Y(n75) );
  AOI21X2M U62 ( .A0(RX_P_DATA[0]), .A1(n46), .B0(n56), .Y(n55) );
  OAI2BB2X1M U63 ( .B0(n18), .B1(n53), .A0N(Address[1]), .A1N(n5), .Y(n74) );
  OAI2BB2X1M U64 ( .B0(n16), .B1(n53), .A0N(Address[3]), .A1N(n5), .Y(n72) );
  OAI2BB2X1M U65 ( .B0(n17), .B1(n53), .A0N(Address[2]), .A1N(n5), .Y(n73) );
  NAND3X2M U66 ( .A(current_state[1]), .B(n14), .C(n58), .Y(n50) );
  AND2X2M U67 ( .A(RX_P_DATA[5]), .B(n61), .Y(WrData[5]) );
  AND2X2M U68 ( .A(RX_P_DATA[6]), .B(n61), .Y(WrData[6]) );
  AND2X2M U69 ( .A(RX_P_DATA[7]), .B(n61), .Y(WrData[7]) );
  INVX2M U70 ( .A(RX_P_DATA[0]), .Y(n19) );
  AND2X2M U71 ( .A(n3), .B(n2), .Y(n1) );
  INVX2M U72 ( .A(RX_P_DATA[2]), .Y(n17) );
  INVX2M U73 ( .A(RX_P_DATA[1]), .Y(n18) );
  INVX2M U74 ( .A(RX_P_DATA[3]), .Y(n16) );
  NAND2BX2M U75 ( .AN(FIFO_FULL), .B(n1), .Y(n31) );
  AOI2BB2XLM U76 ( .B0(n32), .B1(FIFO_FULL), .A0N(RX_D_VLD), .A1N(n50), .Y(n34) );
  OAI21X2M U77 ( .A0(RX_D_VLD), .A1(n24), .B0(n34), .Y(n49) );
  OAI2BB1X2M U78 ( .A0N(RdData[0]), .A1N(n42), .B0(n71), .Y(FIFO_WR_DATA[0])
         );
  AOI22X1M U79 ( .A0(ALU_OUT[8]), .A1(n32), .B0(ALU_OUT[0]), .B1(n11), .Y(n71)
         );
  OAI2BB1X2M U80 ( .A0N(RdData[1]), .A1N(n42), .B0(n70), .Y(FIFO_WR_DATA[1])
         );
  AOI22X1M U81 ( .A0(ALU_OUT[9]), .A1(n32), .B0(ALU_OUT[1]), .B1(n11), .Y(n70)
         );
  OAI2BB1X2M U82 ( .A0N(RdData[2]), .A1N(n42), .B0(n69), .Y(FIFO_WR_DATA[2])
         );
  AOI22X1M U83 ( .A0(ALU_OUT[10]), .A1(n32), .B0(ALU_OUT[2]), .B1(n11), .Y(n69) );
  OAI2BB1X2M U84 ( .A0N(RdData[3]), .A1N(n42), .B0(n68), .Y(FIFO_WR_DATA[3])
         );
  AOI22X1M U85 ( .A0(ALU_OUT[11]), .A1(n32), .B0(ALU_OUT[3]), .B1(n11), .Y(n68) );
  OAI2BB1X2M U86 ( .A0N(RdData[4]), .A1N(n42), .B0(n67), .Y(FIFO_WR_DATA[4])
         );
  AOI22X1M U87 ( .A0(ALU_OUT[12]), .A1(n32), .B0(ALU_OUT[4]), .B1(n11), .Y(n67) );
  OAI2BB1X2M U88 ( .A0N(RdData[5]), .A1N(n42), .B0(n66), .Y(FIFO_WR_DATA[5])
         );
  AOI22X1M U89 ( .A0(ALU_OUT[13]), .A1(n32), .B0(ALU_OUT[5]), .B1(n11), .Y(n66) );
  OAI2BB1X2M U90 ( .A0N(RdData[6]), .A1N(n42), .B0(n65), .Y(FIFO_WR_DATA[6])
         );
  AOI22X1M U91 ( .A0(ALU_OUT[14]), .A1(n32), .B0(ALU_OUT[6]), .B1(n11), .Y(n65) );
  OAI2BB1X2M U92 ( .A0N(RdData[7]), .A1N(n42), .B0(n64), .Y(FIFO_WR_DATA[7])
         );
  AOI22X1M U93 ( .A0(ALU_OUT[15]), .A1(n32), .B0(ALU_OUT[7]), .B1(n11), .Y(n64) );
  NAND4X2M U94 ( .A(n25), .B(n46), .C(n47), .D(n48), .Y(next_state[0]) );
  AOI31X2M U95 ( .A0(n19), .A1(n15), .A2(n37), .B0(n7), .Y(n47) );
  AOI221XLM U96 ( .A0(n11), .A1(n31), .B0(OUT_VALID), .B1(n8), .C0(n49), .Y(
        n48) );
  INVX2M U97 ( .A(n26), .Y(n8) );
  AND4X2M U98 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .C(n44), .D(n45), .Y(n33)
         );
  NOR2X2M U99 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .Y(n44) );
  INVX2M U100 ( .A(RX_P_DATA[4]), .Y(n15) );
  AND4X2M U101 ( .A(RX_P_DATA[3]), .B(RX_D_VLD), .C(RX_P_DATA[7]), .D(n52), 
        .Y(n45) );
  NOR4X1M U102 ( .A(current_state[3]), .B(current_state[2]), .C(
        current_state[1]), .D(current_state[0]), .Y(n52) );
  AND4X2M U103 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .C(n51), .D(n45), .Y(n37)
         );
  NOR2X2M U104 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .Y(n51) );
  NOR4X1M U105 ( .A(ALU_OUT[13]), .B(ALU_OUT[12]), .C(ALU_OUT[11]), .D(
        ALU_OUT[10]), .Y(n3) );
  NOR4X1M U106 ( .A(ALU_OUT[9]), .B(ALU_OUT[8]), .C(ALU_OUT[15]), .D(
        ALU_OUT[14]), .Y(n2) );
endmodule


module FIFO_DF_SYNC_0 ( CLK, RST, in, out );
  input [3:0] in;
  output [3:0] out;
  input CLK, RST;

  wire   [3:0] Q1;

  DFFRQX2M \out_reg[3]  ( .D(Q1[3]), .CK(CLK), .RN(RST), .Q(out[3]) );
  DFFRQX2M \out_reg[2]  ( .D(Q1[2]), .CK(CLK), .RN(RST), .Q(out[2]) );
  DFFRQX2M \out_reg[1]  ( .D(Q1[1]), .CK(CLK), .RN(RST), .Q(out[1]) );
  DFFRQX2M \out_reg[0]  ( .D(Q1[0]), .CK(CLK), .RN(RST), .Q(out[0]) );
  DFFRQX2M \Q1_reg[3]  ( .D(in[3]), .CK(CLK), .RN(RST), .Q(Q1[3]) );
  DFFRQX2M \Q1_reg[2]  ( .D(in[2]), .CK(CLK), .RN(RST), .Q(Q1[2]) );
  DFFRQX2M \Q1_reg[1]  ( .D(in[1]), .CK(CLK), .RN(RST), .Q(Q1[1]) );
  DFFRQX2M \Q1_reg[0]  ( .D(in[0]), .CK(CLK), .RN(RST), .Q(Q1[0]) );
endmodule


module FIFO_DF_SYNC_1 ( CLK, RST, in, out );
  input [3:0] in;
  output [3:0] out;
  input CLK, RST;

  wire   [3:0] Q1;

  DFFRQX2M \out_reg[2]  ( .D(Q1[2]), .CK(CLK), .RN(RST), .Q(out[2]) );
  DFFRQX2M \out_reg[3]  ( .D(Q1[3]), .CK(CLK), .RN(RST), .Q(out[3]) );
  DFFRQX2M \out_reg[1]  ( .D(Q1[1]), .CK(CLK), .RN(RST), .Q(out[1]) );
  DFFRQX2M \out_reg[0]  ( .D(Q1[0]), .CK(CLK), .RN(RST), .Q(out[0]) );
  DFFRQX2M \Q1_reg[3]  ( .D(in[3]), .CK(CLK), .RN(RST), .Q(Q1[3]) );
  DFFRQX2M \Q1_reg[2]  ( .D(in[2]), .CK(CLK), .RN(RST), .Q(Q1[2]) );
  DFFRQX2M \Q1_reg[1]  ( .D(in[1]), .CK(CLK), .RN(RST), .Q(Q1[1]) );
  DFFRQX2M \Q1_reg[0]  ( .D(in[0]), .CK(CLK), .RN(RST), .Q(Q1[0]) );
endmodule


module FIFO_MEM_CNTRL ( wclk, wfull, winc, waddr, raddr, wdata, rdata );
  input [2:0] waddr;
  input [2:0] raddr;
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wfull, winc;
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
         \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107;
  assign N9 = raddr[0];
  assign N10 = raddr[1];
  assign N11 = raddr[2];

  DFFQX2M \mem_reg[1][7]  ( .D(n77), .CK(wclk), .Q(\mem[1][7] ) );
  DFFQX2M \mem_reg[1][6]  ( .D(n76), .CK(wclk), .Q(\mem[1][6] ) );
  DFFQX2M \mem_reg[1][5]  ( .D(n75), .CK(wclk), .Q(\mem[1][5] ) );
  DFFQX2M \mem_reg[1][4]  ( .D(n74), .CK(wclk), .Q(\mem[1][4] ) );
  DFFQX2M \mem_reg[1][3]  ( .D(n73), .CK(wclk), .Q(\mem[1][3] ) );
  DFFQX2M \mem_reg[1][2]  ( .D(n72), .CK(wclk), .Q(\mem[1][2] ) );
  DFFQX2M \mem_reg[1][1]  ( .D(n71), .CK(wclk), .Q(\mem[1][1] ) );
  DFFQX2M \mem_reg[1][0]  ( .D(n70), .CK(wclk), .Q(\mem[1][0] ) );
  DFFQX2M \mem_reg[5][7]  ( .D(n45), .CK(wclk), .Q(\mem[5][7] ) );
  DFFQX2M \mem_reg[5][6]  ( .D(n44), .CK(wclk), .Q(\mem[5][6] ) );
  DFFQX2M \mem_reg[5][5]  ( .D(n43), .CK(wclk), .Q(\mem[5][5] ) );
  DFFQX2M \mem_reg[5][4]  ( .D(n42), .CK(wclk), .Q(\mem[5][4] ) );
  DFFQX2M \mem_reg[5][3]  ( .D(n41), .CK(wclk), .Q(\mem[5][3] ) );
  DFFQX2M \mem_reg[5][2]  ( .D(n40), .CK(wclk), .Q(\mem[5][2] ) );
  DFFQX2M \mem_reg[5][1]  ( .D(n39), .CK(wclk), .Q(\mem[5][1] ) );
  DFFQX2M \mem_reg[5][0]  ( .D(n38), .CK(wclk), .Q(\mem[5][0] ) );
  DFFQX2M \mem_reg[3][7]  ( .D(n61), .CK(wclk), .Q(\mem[3][7] ) );
  DFFQX2M \mem_reg[3][6]  ( .D(n60), .CK(wclk), .Q(\mem[3][6] ) );
  DFFQX2M \mem_reg[3][5]  ( .D(n59), .CK(wclk), .Q(\mem[3][5] ) );
  DFFQX2M \mem_reg[3][4]  ( .D(n58), .CK(wclk), .Q(\mem[3][4] ) );
  DFFQX2M \mem_reg[3][3]  ( .D(n57), .CK(wclk), .Q(\mem[3][3] ) );
  DFFQX2M \mem_reg[3][2]  ( .D(n56), .CK(wclk), .Q(\mem[3][2] ) );
  DFFQX2M \mem_reg[3][1]  ( .D(n55), .CK(wclk), .Q(\mem[3][1] ) );
  DFFQX2M \mem_reg[3][0]  ( .D(n54), .CK(wclk), .Q(\mem[3][0] ) );
  DFFQX2M \mem_reg[7][7]  ( .D(n29), .CK(wclk), .Q(\mem[7][7] ) );
  DFFQX2M \mem_reg[7][6]  ( .D(n28), .CK(wclk), .Q(\mem[7][6] ) );
  DFFQX2M \mem_reg[7][5]  ( .D(n27), .CK(wclk), .Q(\mem[7][5] ) );
  DFFQX2M \mem_reg[7][4]  ( .D(n26), .CK(wclk), .Q(\mem[7][4] ) );
  DFFQX2M \mem_reg[7][3]  ( .D(n25), .CK(wclk), .Q(\mem[7][3] ) );
  DFFQX2M \mem_reg[7][2]  ( .D(n24), .CK(wclk), .Q(\mem[7][2] ) );
  DFFQX2M \mem_reg[7][1]  ( .D(n23), .CK(wclk), .Q(\mem[7][1] ) );
  DFFQX2M \mem_reg[7][0]  ( .D(n22), .CK(wclk), .Q(\mem[7][0] ) );
  DFFQX2M \mem_reg[2][7]  ( .D(n69), .CK(wclk), .Q(\mem[2][7] ) );
  DFFQX2M \mem_reg[2][6]  ( .D(n68), .CK(wclk), .Q(\mem[2][6] ) );
  DFFQX2M \mem_reg[2][5]  ( .D(n67), .CK(wclk), .Q(\mem[2][5] ) );
  DFFQX2M \mem_reg[2][4]  ( .D(n66), .CK(wclk), .Q(\mem[2][4] ) );
  DFFQX2M \mem_reg[2][3]  ( .D(n65), .CK(wclk), .Q(\mem[2][3] ) );
  DFFQX2M \mem_reg[2][2]  ( .D(n64), .CK(wclk), .Q(\mem[2][2] ) );
  DFFQX2M \mem_reg[2][1]  ( .D(n63), .CK(wclk), .Q(\mem[2][1] ) );
  DFFQX2M \mem_reg[2][0]  ( .D(n62), .CK(wclk), .Q(\mem[2][0] ) );
  DFFQX2M \mem_reg[6][7]  ( .D(n37), .CK(wclk), .Q(\mem[6][7] ) );
  DFFQX2M \mem_reg[6][6]  ( .D(n36), .CK(wclk), .Q(\mem[6][6] ) );
  DFFQX2M \mem_reg[6][5]  ( .D(n35), .CK(wclk), .Q(\mem[6][5] ) );
  DFFQX2M \mem_reg[6][4]  ( .D(n34), .CK(wclk), .Q(\mem[6][4] ) );
  DFFQX2M \mem_reg[6][3]  ( .D(n33), .CK(wclk), .Q(\mem[6][3] ) );
  DFFQX2M \mem_reg[6][2]  ( .D(n32), .CK(wclk), .Q(\mem[6][2] ) );
  DFFQX2M \mem_reg[6][1]  ( .D(n31), .CK(wclk), .Q(\mem[6][1] ) );
  DFFQX2M \mem_reg[6][0]  ( .D(n30), .CK(wclk), .Q(\mem[6][0] ) );
  DFFQX2M \mem_reg[0][7]  ( .D(n85), .CK(wclk), .Q(\mem[0][7] ) );
  DFFQX2M \mem_reg[0][6]  ( .D(n84), .CK(wclk), .Q(\mem[0][6] ) );
  DFFQX2M \mem_reg[0][5]  ( .D(n83), .CK(wclk), .Q(\mem[0][5] ) );
  DFFQX2M \mem_reg[0][4]  ( .D(n82), .CK(wclk), .Q(\mem[0][4] ) );
  DFFQX2M \mem_reg[0][3]  ( .D(n81), .CK(wclk), .Q(\mem[0][3] ) );
  DFFQX2M \mem_reg[0][2]  ( .D(n80), .CK(wclk), .Q(\mem[0][2] ) );
  DFFQX2M \mem_reg[0][1]  ( .D(n79), .CK(wclk), .Q(\mem[0][1] ) );
  DFFQX2M \mem_reg[0][0]  ( .D(n78), .CK(wclk), .Q(\mem[0][0] ) );
  DFFQX2M \mem_reg[4][7]  ( .D(n53), .CK(wclk), .Q(\mem[4][7] ) );
  DFFQX2M \mem_reg[4][6]  ( .D(n52), .CK(wclk), .Q(\mem[4][6] ) );
  DFFQX2M \mem_reg[4][5]  ( .D(n51), .CK(wclk), .Q(\mem[4][5] ) );
  DFFQX2M \mem_reg[4][4]  ( .D(n50), .CK(wclk), .Q(\mem[4][4] ) );
  DFFQX2M \mem_reg[4][3]  ( .D(n49), .CK(wclk), .Q(\mem[4][3] ) );
  DFFQX2M \mem_reg[4][2]  ( .D(n48), .CK(wclk), .Q(\mem[4][2] ) );
  DFFQX2M \mem_reg[4][1]  ( .D(n47), .CK(wclk), .Q(\mem[4][1] ) );
  DFFQX2M \mem_reg[4][0]  ( .D(n46), .CK(wclk), .Q(\mem[4][0] ) );
  BUFX2M U2 ( .A(n17), .Y(n96) );
  BUFX2M U3 ( .A(n19), .Y(n95) );
  BUFX2M U4 ( .A(n20), .Y(n94) );
  BUFX2M U5 ( .A(n13), .Y(n97) );
  NAND3X2M U6 ( .A(n98), .B(n99), .C(n12), .Y(n15) );
  NAND3X2M U7 ( .A(n98), .B(n99), .C(n18), .Y(n21) );
  NAND3X2M U8 ( .A(n12), .B(n99), .C(waddr[0]), .Y(n14) );
  NAND3X2M U9 ( .A(waddr[0]), .B(n12), .C(waddr[1]), .Y(n11) );
  NOR2BX2M U10 ( .AN(n16), .B(waddr[2]), .Y(n18) );
  OAI2BB2X1M U11 ( .B0(n11), .B1(n100), .A0N(\mem[7][0] ), .A1N(n11), .Y(n22)
         );
  OAI2BB2X1M U12 ( .B0(n11), .B1(n101), .A0N(\mem[7][1] ), .A1N(n11), .Y(n23)
         );
  OAI2BB2X1M U13 ( .B0(n11), .B1(n102), .A0N(\mem[7][2] ), .A1N(n11), .Y(n24)
         );
  OAI2BB2X1M U14 ( .B0(n11), .B1(n103), .A0N(\mem[7][3] ), .A1N(n11), .Y(n25)
         );
  OAI2BB2X1M U15 ( .B0(n11), .B1(n104), .A0N(\mem[7][4] ), .A1N(n11), .Y(n26)
         );
  OAI2BB2X1M U16 ( .B0(n11), .B1(n105), .A0N(\mem[7][5] ), .A1N(n11), .Y(n27)
         );
  OAI2BB2X1M U17 ( .B0(n11), .B1(n106), .A0N(\mem[7][6] ), .A1N(n11), .Y(n28)
         );
  OAI2BB2X1M U18 ( .B0(n11), .B1(n107), .A0N(\mem[7][7] ), .A1N(n11), .Y(n29)
         );
  OAI2BB2X1M U19 ( .B0(n100), .B1(n14), .A0N(\mem[5][0] ), .A1N(n14), .Y(n38)
         );
  OAI2BB2X1M U20 ( .B0(n101), .B1(n14), .A0N(\mem[5][1] ), .A1N(n14), .Y(n39)
         );
  OAI2BB2X1M U21 ( .B0(n102), .B1(n14), .A0N(\mem[5][2] ), .A1N(n14), .Y(n40)
         );
  OAI2BB2X1M U22 ( .B0(n103), .B1(n14), .A0N(\mem[5][3] ), .A1N(n14), .Y(n41)
         );
  OAI2BB2X1M U23 ( .B0(n104), .B1(n14), .A0N(\mem[5][4] ), .A1N(n14), .Y(n42)
         );
  OAI2BB2X1M U24 ( .B0(n105), .B1(n14), .A0N(\mem[5][5] ), .A1N(n14), .Y(n43)
         );
  OAI2BB2X1M U25 ( .B0(n106), .B1(n14), .A0N(\mem[5][6] ), .A1N(n14), .Y(n44)
         );
  OAI2BB2X1M U26 ( .B0(n107), .B1(n14), .A0N(\mem[5][7] ), .A1N(n14), .Y(n45)
         );
  OAI2BB2X1M U27 ( .B0(n100), .B1(n21), .A0N(\mem[0][0] ), .A1N(n21), .Y(n78)
         );
  OAI2BB2X1M U28 ( .B0(n101), .B1(n21), .A0N(\mem[0][1] ), .A1N(n21), .Y(n79)
         );
  OAI2BB2X1M U29 ( .B0(n102), .B1(n21), .A0N(\mem[0][2] ), .A1N(n21), .Y(n80)
         );
  OAI2BB2X1M U30 ( .B0(n103), .B1(n21), .A0N(\mem[0][3] ), .A1N(n21), .Y(n81)
         );
  OAI2BB2X1M U31 ( .B0(n104), .B1(n21), .A0N(\mem[0][4] ), .A1N(n21), .Y(n82)
         );
  OAI2BB2X1M U32 ( .B0(n105), .B1(n21), .A0N(\mem[0][5] ), .A1N(n21), .Y(n83)
         );
  OAI2BB2X1M U33 ( .B0(n106), .B1(n21), .A0N(\mem[0][6] ), .A1N(n21), .Y(n84)
         );
  OAI2BB2X1M U34 ( .B0(n107), .B1(n21), .A0N(\mem[0][7] ), .A1N(n21), .Y(n85)
         );
  OAI2BB2X1M U35 ( .B0(n100), .B1(n15), .A0N(\mem[4][0] ), .A1N(n15), .Y(n46)
         );
  OAI2BB2X1M U36 ( .B0(n101), .B1(n15), .A0N(\mem[4][1] ), .A1N(n15), .Y(n47)
         );
  OAI2BB2X1M U37 ( .B0(n102), .B1(n15), .A0N(\mem[4][2] ), .A1N(n15), .Y(n48)
         );
  OAI2BB2X1M U38 ( .B0(n103), .B1(n15), .A0N(\mem[4][3] ), .A1N(n15), .Y(n49)
         );
  OAI2BB2X1M U39 ( .B0(n104), .B1(n15), .A0N(\mem[4][4] ), .A1N(n15), .Y(n50)
         );
  OAI2BB2X1M U40 ( .B0(n105), .B1(n15), .A0N(\mem[4][5] ), .A1N(n15), .Y(n51)
         );
  OAI2BB2X1M U41 ( .B0(n106), .B1(n15), .A0N(\mem[4][6] ), .A1N(n15), .Y(n52)
         );
  OAI2BB2X1M U42 ( .B0(n107), .B1(n15), .A0N(\mem[4][7] ), .A1N(n15), .Y(n53)
         );
  OAI2BB2X1M U43 ( .B0(n100), .B1(n97), .A0N(\mem[6][0] ), .A1N(n97), .Y(n30)
         );
  OAI2BB2X1M U44 ( .B0(n101), .B1(n97), .A0N(\mem[6][1] ), .A1N(n97), .Y(n31)
         );
  OAI2BB2X1M U45 ( .B0(n102), .B1(n97), .A0N(\mem[6][2] ), .A1N(n97), .Y(n32)
         );
  OAI2BB2X1M U46 ( .B0(n103), .B1(n97), .A0N(\mem[6][3] ), .A1N(n97), .Y(n33)
         );
  OAI2BB2X1M U47 ( .B0(n104), .B1(n97), .A0N(\mem[6][4] ), .A1N(n97), .Y(n34)
         );
  OAI2BB2X1M U48 ( .B0(n105), .B1(n97), .A0N(\mem[6][5] ), .A1N(n97), .Y(n35)
         );
  OAI2BB2X1M U49 ( .B0(n106), .B1(n97), .A0N(\mem[6][6] ), .A1N(n97), .Y(n36)
         );
  OAI2BB2X1M U50 ( .B0(n107), .B1(n97), .A0N(\mem[6][7] ), .A1N(n97), .Y(n37)
         );
  OAI2BB2X1M U51 ( .B0(n100), .B1(n96), .A0N(\mem[3][0] ), .A1N(n96), .Y(n54)
         );
  OAI2BB2X1M U52 ( .B0(n101), .B1(n96), .A0N(\mem[3][1] ), .A1N(n96), .Y(n55)
         );
  OAI2BB2X1M U53 ( .B0(n102), .B1(n96), .A0N(\mem[3][2] ), .A1N(n96), .Y(n56)
         );
  OAI2BB2X1M U54 ( .B0(n103), .B1(n96), .A0N(\mem[3][3] ), .A1N(n96), .Y(n57)
         );
  OAI2BB2X1M U55 ( .B0(n104), .B1(n96), .A0N(\mem[3][4] ), .A1N(n96), .Y(n58)
         );
  OAI2BB2X1M U56 ( .B0(n105), .B1(n96), .A0N(\mem[3][5] ), .A1N(n96), .Y(n59)
         );
  OAI2BB2X1M U57 ( .B0(n106), .B1(n96), .A0N(\mem[3][6] ), .A1N(n96), .Y(n60)
         );
  OAI2BB2X1M U58 ( .B0(n107), .B1(n96), .A0N(\mem[3][7] ), .A1N(n96), .Y(n61)
         );
  OAI2BB2X1M U59 ( .B0(n100), .B1(n95), .A0N(\mem[2][0] ), .A1N(n95), .Y(n62)
         );
  OAI2BB2X1M U60 ( .B0(n101), .B1(n95), .A0N(\mem[2][1] ), .A1N(n95), .Y(n63)
         );
  OAI2BB2X1M U61 ( .B0(n102), .B1(n95), .A0N(\mem[2][2] ), .A1N(n95), .Y(n64)
         );
  OAI2BB2X1M U62 ( .B0(n103), .B1(n95), .A0N(\mem[2][3] ), .A1N(n95), .Y(n65)
         );
  OAI2BB2X1M U63 ( .B0(n104), .B1(n95), .A0N(\mem[2][4] ), .A1N(n95), .Y(n66)
         );
  OAI2BB2X1M U64 ( .B0(n105), .B1(n95), .A0N(\mem[2][5] ), .A1N(n95), .Y(n67)
         );
  OAI2BB2X1M U65 ( .B0(n106), .B1(n95), .A0N(\mem[2][6] ), .A1N(n95), .Y(n68)
         );
  OAI2BB2X1M U66 ( .B0(n107), .B1(n95), .A0N(\mem[2][7] ), .A1N(n95), .Y(n69)
         );
  OAI2BB2X1M U67 ( .B0(n100), .B1(n94), .A0N(\mem[1][0] ), .A1N(n94), .Y(n70)
         );
  OAI2BB2X1M U68 ( .B0(n101), .B1(n94), .A0N(\mem[1][1] ), .A1N(n94), .Y(n71)
         );
  OAI2BB2X1M U69 ( .B0(n102), .B1(n94), .A0N(\mem[1][2] ), .A1N(n94), .Y(n72)
         );
  OAI2BB2X1M U70 ( .B0(n103), .B1(n94), .A0N(\mem[1][3] ), .A1N(n94), .Y(n73)
         );
  OAI2BB2X1M U71 ( .B0(n104), .B1(n94), .A0N(\mem[1][4] ), .A1N(n94), .Y(n74)
         );
  OAI2BB2X1M U72 ( .B0(n105), .B1(n94), .A0N(\mem[1][5] ), .A1N(n94), .Y(n75)
         );
  OAI2BB2X1M U73 ( .B0(n106), .B1(n94), .A0N(\mem[1][6] ), .A1N(n94), .Y(n76)
         );
  OAI2BB2X1M U74 ( .B0(n107), .B1(n94), .A0N(\mem[1][7] ), .A1N(n94), .Y(n77)
         );
  NOR2BX2M U75 ( .AN(winc), .B(wfull), .Y(n16) );
  AND2X2M U76 ( .A(waddr[2]), .B(n16), .Y(n12) );
  NAND3X2M U77 ( .A(n12), .B(n98), .C(waddr[1]), .Y(n13) );
  NAND3X2M U78 ( .A(waddr[1]), .B(waddr[0]), .C(n18), .Y(n17) );
  NAND3X2M U79 ( .A(waddr[1]), .B(n98), .C(n18), .Y(n19) );
  NAND3X2M U80 ( .A(waddr[0]), .B(n99), .C(n18), .Y(n20) );
  INVX2M U81 ( .A(waddr[1]), .Y(n99) );
  INVX2M U82 ( .A(waddr[0]), .Y(n98) );
  INVX2M U83 ( .A(wdata[0]), .Y(n100) );
  INVX2M U84 ( .A(wdata[1]), .Y(n101) );
  INVX2M U85 ( .A(wdata[2]), .Y(n102) );
  INVX2M U86 ( .A(wdata[3]), .Y(n103) );
  INVX2M U87 ( .A(wdata[4]), .Y(n104) );
  INVX2M U88 ( .A(wdata[5]), .Y(n105) );
  INVX2M U89 ( .A(wdata[6]), .Y(n106) );
  INVX2M U90 ( .A(wdata[7]), .Y(n107) );
  BUFX2M U91 ( .A(N9), .Y(n93) );
  BUFX2M U92 ( .A(N9), .Y(n92) );
  MX2X2M U93 ( .A(n2), .B(n1), .S0(N11), .Y(rdata[7]) );
  MX4X1M U94 ( .A(\mem[4][7] ), .B(\mem[5][7] ), .C(\mem[6][7] ), .D(
        \mem[7][7] ), .S0(n92), .S1(N10), .Y(n1) );
  MX4X1M U95 ( .A(\mem[0][7] ), .B(\mem[1][7] ), .C(\mem[2][7] ), .D(
        \mem[3][7] ), .S0(n93), .S1(N10), .Y(n2) );
  MX2X2M U96 ( .A(n4), .B(n3), .S0(N11), .Y(rdata[6]) );
  MX4X1M U97 ( .A(\mem[4][6] ), .B(\mem[5][6] ), .C(\mem[6][6] ), .D(
        \mem[7][6] ), .S0(n92), .S1(N10), .Y(n3) );
  MX4X1M U98 ( .A(\mem[0][6] ), .B(\mem[1][6] ), .C(\mem[2][6] ), .D(
        \mem[3][6] ), .S0(n93), .S1(N10), .Y(n4) );
  MX2X2M U99 ( .A(n6), .B(n5), .S0(N11), .Y(rdata[5]) );
  MX4X1M U100 ( .A(\mem[4][5] ), .B(\mem[5][5] ), .C(\mem[6][5] ), .D(
        \mem[7][5] ), .S0(n92), .S1(N10), .Y(n5) );
  MX4X1M U101 ( .A(\mem[0][5] ), .B(\mem[1][5] ), .C(\mem[2][5] ), .D(
        \mem[3][5] ), .S0(n93), .S1(N10), .Y(n6) );
  MX2X2M U102 ( .A(n8), .B(n7), .S0(N11), .Y(rdata[4]) );
  MX4X1M U103 ( .A(\mem[4][4] ), .B(\mem[5][4] ), .C(\mem[6][4] ), .D(
        \mem[7][4] ), .S0(n92), .S1(N10), .Y(n7) );
  MX4X1M U104 ( .A(\mem[0][4] ), .B(\mem[1][4] ), .C(\mem[2][4] ), .D(
        \mem[3][4] ), .S0(n93), .S1(N10), .Y(n8) );
  MX2X2M U105 ( .A(n10), .B(n9), .S0(N11), .Y(rdata[3]) );
  MX4X1M U106 ( .A(\mem[4][3] ), .B(\mem[5][3] ), .C(\mem[6][3] ), .D(
        \mem[7][3] ), .S0(n92), .S1(N10), .Y(n9) );
  MX4X1M U107 ( .A(\mem[0][3] ), .B(\mem[1][3] ), .C(\mem[2][3] ), .D(
        \mem[3][3] ), .S0(n93), .S1(N10), .Y(n10) );
  MX2X2M U108 ( .A(n87), .B(n86), .S0(N11), .Y(rdata[2]) );
  MX4X1M U109 ( .A(\mem[4][2] ), .B(\mem[5][2] ), .C(\mem[6][2] ), .D(
        \mem[7][2] ), .S0(n92), .S1(N10), .Y(n86) );
  MX4X1M U110 ( .A(\mem[0][2] ), .B(\mem[1][2] ), .C(\mem[2][2] ), .D(
        \mem[3][2] ), .S0(n93), .S1(N10), .Y(n87) );
  MX2X2M U111 ( .A(n89), .B(n88), .S0(N11), .Y(rdata[1]) );
  MX4X1M U112 ( .A(\mem[4][1] ), .B(\mem[5][1] ), .C(\mem[6][1] ), .D(
        \mem[7][1] ), .S0(n92), .S1(N10), .Y(n88) );
  MX4X1M U113 ( .A(\mem[0][1] ), .B(\mem[1][1] ), .C(\mem[2][1] ), .D(
        \mem[3][1] ), .S0(n93), .S1(N10), .Y(n89) );
  MX2X2M U114 ( .A(n91), .B(n90), .S0(N11), .Y(rdata[0]) );
  MX4X1M U115 ( .A(\mem[4][0] ), .B(\mem[5][0] ), .C(\mem[6][0] ), .D(
        \mem[7][0] ), .S0(n92), .S1(N10), .Y(n90) );
  MX4X1M U116 ( .A(\mem[0][0] ), .B(\mem[1][0] ), .C(\mem[2][0] ), .D(
        \mem[3][0] ), .S0(n93), .S1(N10), .Y(n91) );
endmodule


module FIFO_RD ( rclk, rrst_n, rinc, sync_wr_ptr, raddr, rptr, rempty );
  input [3:0] sync_wr_ptr;
  output [2:0] raddr;
  output [3:0] rptr;
  input rclk, rrst_n, rinc;
  output rempty;
  wire   \rbin[3] , rempty_val, n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [3:0] rbinnext;
  wire   [2:0] rgraynext;

  DFFRQX2M \rbin_reg[3]  ( .D(rbinnext[3]), .CK(rclk), .RN(rrst_n), .Q(
        \rbin[3] ) );
  DFFSQX2M rempty_reg ( .D(rempty_val), .CK(rclk), .SN(rrst_n), .Q(rempty) );
  DFFRQX2M \rbin_reg[0]  ( .D(rbinnext[0]), .CK(rclk), .RN(rrst_n), .Q(
        raddr[0]) );
  DFFRQX2M \rbin_reg[2]  ( .D(rbinnext[2]), .CK(rclk), .RN(rrst_n), .Q(
        raddr[2]) );
  DFFRQX2M \rbin_reg[1]  ( .D(rbinnext[1]), .CK(rclk), .RN(rrst_n), .Q(
        raddr[1]) );
  DFFRQX2M \rptr_reg[3]  ( .D(rbinnext[3]), .CK(rclk), .RN(rrst_n), .Q(rptr[3]) );
  DFFRQX2M \rptr_reg[2]  ( .D(rgraynext[2]), .CK(rclk), .RN(rrst_n), .Q(
        rptr[2]) );
  DFFRQX2M \rptr_reg[1]  ( .D(rgraynext[1]), .CK(rclk), .RN(rrst_n), .Q(
        rptr[1]) );
  DFFRQX2M \rptr_reg[0]  ( .D(rgraynext[0]), .CK(rclk), .RN(rrst_n), .Q(
        rptr[0]) );
  CLKXOR2X2M U3 ( .A(rbinnext[3]), .B(rbinnext[2]), .Y(rgraynext[2]) );
  CLKXOR2X2M U4 ( .A(rbinnext[1]), .B(rbinnext[0]), .Y(rgraynext[0]) );
  CLKXOR2X2M U5 ( .A(rbinnext[2]), .B(rbinnext[1]), .Y(rgraynext[1]) );
  XNOR2X2M U6 ( .A(n5), .B(\rbin[3] ), .Y(rbinnext[3]) );
  NAND3X2M U7 ( .A(raddr[1]), .B(n6), .C(raddr[2]), .Y(n5) );
  XNOR2X2M U8 ( .A(n7), .B(raddr[2]), .Y(rbinnext[2]) );
  NAND2X2M U9 ( .A(raddr[1]), .B(n6), .Y(n7) );
  NOR4X1M U10 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(rempty_val) );
  CLKXOR2X2M U11 ( .A(sync_wr_ptr[3]), .B(rbinnext[3]), .Y(n2) );
  CLKXOR2X2M U12 ( .A(sync_wr_ptr[2]), .B(rgraynext[2]), .Y(n1) );
  CLKXOR2X2M U13 ( .A(sync_wr_ptr[1]), .B(rgraynext[1]), .Y(n4) );
  NOR2BX2M U14 ( .AN(rinc), .B(rempty), .Y(n8) );
  AND2X2M U15 ( .A(raddr[0]), .B(n8), .Y(n6) );
  CLKXOR2X2M U16 ( .A(sync_wr_ptr[0]), .B(rgraynext[0]), .Y(n3) );
  CLKXOR2X2M U17 ( .A(n6), .B(raddr[1]), .Y(rbinnext[1]) );
  CLKXOR2X2M U18 ( .A(n8), .B(raddr[0]), .Y(rbinnext[0]) );
endmodule


module FIFO_WR ( sync_rd_ptr, winc, wclk, wrst_n, wfull, waddr, wptr );
  input [3:0] sync_rd_ptr;
  output [2:0] waddr;
  output [3:0] wptr;
  input winc, wclk, wrst_n;
  output wfull;
  wire   \wbin[3] , wfull_value, n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [3:0] wbinnext;
  wire   [2:0] wgraynext;

  DFFRQX2M \wbin_reg[3]  ( .D(wbinnext[3]), .CK(wclk), .RN(wrst_n), .Q(
        \wbin[3] ) );
  DFFRQX2M \wbin_reg[2]  ( .D(wbinnext[2]), .CK(wclk), .RN(wrst_n), .Q(
        waddr[2]) );
  DFFRQX2M \wbin_reg[1]  ( .D(wbinnext[1]), .CK(wclk), .RN(wrst_n), .Q(
        waddr[1]) );
  DFFRQX2M wfull_reg ( .D(wfull_value), .CK(wclk), .RN(wrst_n), .Q(wfull) );
  DFFRQX2M \wbin_reg[0]  ( .D(wbinnext[0]), .CK(wclk), .RN(wrst_n), .Q(
        waddr[0]) );
  DFFRQX2M \wptr_reg[3]  ( .D(wbinnext[3]), .CK(wclk), .RN(wrst_n), .Q(wptr[3]) );
  DFFRQX2M \wptr_reg[2]  ( .D(wgraynext[2]), .CK(wclk), .RN(wrst_n), .Q(
        wptr[2]) );
  DFFRQX2M \wptr_reg[1]  ( .D(wgraynext[1]), .CK(wclk), .RN(wrst_n), .Q(
        wptr[1]) );
  DFFRQX2M \wptr_reg[0]  ( .D(wgraynext[0]), .CK(wclk), .RN(wrst_n), .Q(
        wptr[0]) );
  CLKXOR2X2M U3 ( .A(wbinnext[1]), .B(wbinnext[0]), .Y(wgraynext[0]) );
  CLKXOR2X2M U4 ( .A(wbinnext[2]), .B(wbinnext[1]), .Y(wgraynext[1]) );
  CLKXOR2X2M U5 ( .A(wbinnext[3]), .B(wbinnext[2]), .Y(wgraynext[2]) );
  XNOR2X2M U6 ( .A(n7), .B(waddr[2]), .Y(wbinnext[2]) );
  NAND2X2M U7 ( .A(waddr[1]), .B(n6), .Y(n7) );
  NOR4X1M U8 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(wfull_value) );
  XNOR2X2M U9 ( .A(wbinnext[3]), .B(sync_rd_ptr[3]), .Y(n2) );
  XNOR2X2M U10 ( .A(wgraynext[2]), .B(sync_rd_ptr[2]), .Y(n1) );
  CLKXOR2X2M U11 ( .A(sync_rd_ptr[0]), .B(wgraynext[0]), .Y(n3) );
  NOR2BX2M U12 ( .AN(winc), .B(wfull), .Y(n8) );
  AND2X2M U13 ( .A(waddr[0]), .B(n8), .Y(n6) );
  CLKXOR2X2M U14 ( .A(n6), .B(waddr[1]), .Y(wbinnext[1]) );
  CLKXOR2X2M U15 ( .A(sync_rd_ptr[1]), .B(wgraynext[1]), .Y(n4) );
  XNOR2X2M U16 ( .A(n5), .B(\wbin[3] ), .Y(wbinnext[3]) );
  NAND3X2M U17 ( .A(waddr[1]), .B(n6), .C(waddr[2]), .Y(n5) );
  CLKXOR2X2M U18 ( .A(n8), .B(waddr[0]), .Y(wbinnext[0]) );
endmodule


module FIFO_TOP ( wclk, rclk, wrst_n, rrst_n, rinc, winc, wdata, rdata, wfull, 
        rempty );
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, rclk, wrst_n, rrst_n, rinc, winc;
  output wfull, rempty;

  wire   [3:0] WPTR;
  wire   [3:0] S_WPTR;
  wire   [3:0] RPTR;
  wire   [3:0] S_RPTR;
  wire   [2:0] waddr;
  wire   [2:0] raddr;

  FIFO_DF_SYNC_0 sync_w2r ( .CLK(rclk), .RST(rrst_n), .in(WPTR), .out(S_WPTR)
         );
  FIFO_DF_SYNC_1 sync_r2w ( .CLK(wclk), .RST(wrst_n), .in(RPTR), .out(S_RPTR)
         );
  FIFO_MEM_CNTRL fifomem ( .wclk(wclk), .wfull(wfull), .winc(winc), .waddr(
        waddr), .raddr(raddr), .wdata(wdata), .rdata(rdata) );
  FIFO_RD rptr_empty ( .rclk(rclk), .rrst_n(rrst_n), .rinc(rinc), 
        .sync_wr_ptr(S_WPTR), .raddr(raddr), .rptr(RPTR), .rempty(rempty) );
  FIFO_WR wptr_full ( .sync_rd_ptr(S_RPTR), .winc(winc), .wclk(wclk), .wrst_n(
        wrst_n), .wfull(wfull), .waddr(waddr), .wptr(WPTR) );
endmodule


module UART_RX_FSM ( CLK, RST, RX_IN, PAR_EN, START_GLITCH, STOP_ERR, PAR_ERR, 
        BIT_COUNT, EDGE_COUNT, PRESCALE, DATA_VALID, COUNT_RST, GLITCH_RST, 
        PAR_ERR_RST, STOP_ERR_RST, START_CHECK_EN, STOP_CHECK_EN, PAR_CHECK_EN, 
        DESERIALIZER_EN, COUNTER_EN, SAMPLER_EN );
  input [3:0] BIT_COUNT;
  input [4:0] EDGE_COUNT;
  input [5:0] PRESCALE;
  input CLK, RST, RX_IN, PAR_EN, START_GLITCH, STOP_ERR, PAR_ERR;
  output DATA_VALID, COUNT_RST, GLITCH_RST, PAR_ERR_RST, STOP_ERR_RST,
         START_CHECK_EN, STOP_CHECK_EN, PAR_CHECK_EN, DESERIALIZER_EN,
         COUNTER_EN, SAMPLER_EN;
  wire   PAR_ERR_RST, \first_sample[2] , N70, N71, N72, N73, N74, N75, N76,
         N77, N86, N87, N88, \r109/A[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  assign STOP_ERR_RST = PAR_ERR_RST;

  DFFRX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]), .QN(n69) );
  DFFRX1M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]), .QN(n46) );
  DFFRX1M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]), .QN(n65) );
  DFFRX1M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(RST), .Q(
        current_state[3]) );
  NOR4XLM U3 ( .A(STOP_ERR), .B(PAR_ERR), .C(n32), .D(n14), .Y(DATA_VALID) );
  INVX2M U4 ( .A(\first_sample[2] ), .Y(N86) );
  INVX2M U5 ( .A(PRESCALE[0]), .Y(N70) );
  AND2X1M U6 ( .A(\first_sample[2] ), .B(\r109/A[3] ), .Y(N88) );
  CLKXOR2X2M U7 ( .A(\r109/A[3] ), .B(\first_sample[2] ), .Y(N87) );
  NAND2BX1M U8 ( .AN(PRESCALE[1]), .B(N70), .Y(n1) );
  OAI2BB1X1M U9 ( .A0N(PRESCALE[0]), .A1N(PRESCALE[1]), .B0(n1), .Y(N71) );
  OR2X1M U10 ( .A(n1), .B(PRESCALE[2]), .Y(n2) );
  OAI2BB1X1M U11 ( .A0N(n1), .A1N(PRESCALE[2]), .B0(n2), .Y(N72) );
  OR2X1M U12 ( .A(n2), .B(PRESCALE[3]), .Y(n3) );
  OAI2BB1X1M U13 ( .A0N(n2), .A1N(PRESCALE[3]), .B0(n3), .Y(N73) );
  OR2X1M U14 ( .A(n3), .B(PRESCALE[4]), .Y(n4) );
  OAI2BB1X1M U15 ( .A0N(n3), .A1N(PRESCALE[4]), .B0(n4), .Y(N74) );
  NOR2X1M U16 ( .A(n4), .B(PRESCALE[5]), .Y(N76) );
  AO21XLM U17 ( .A0(n4), .A1(PRESCALE[5]), .B0(N76), .Y(N75) );
  NOR2BX1M U18 ( .AN(EDGE_COUNT[0]), .B(N70), .Y(n5) );
  OAI2B2X1M U19 ( .A1N(N71), .A0(n5), .B0(EDGE_COUNT[1]), .B1(n5), .Y(n8) );
  NOR2BX1M U20 ( .AN(N70), .B(EDGE_COUNT[0]), .Y(n6) );
  OAI2B2X1M U21 ( .A1N(EDGE_COUNT[1]), .A0(n6), .B0(N71), .B1(n6), .Y(n7) );
  NAND4BBX1M U22 ( .AN(N76), .BN(N75), .C(n8), .D(n7), .Y(n12) );
  CLKXOR2X2M U23 ( .A(EDGE_COUNT[4]), .B(N74), .Y(n11) );
  CLKXOR2X2M U24 ( .A(EDGE_COUNT[2]), .B(N72), .Y(n10) );
  CLKXOR2X2M U25 ( .A(EDGE_COUNT[3]), .B(N73), .Y(n9) );
  NOR4X1M U26 ( .A(n12), .B(n11), .C(n10), .D(n9), .Y(N77) );
  CLKINVX1M U27 ( .A(n13), .Y(\r109/A[3] ) );
  OAI21X1M U28 ( .A0(n14), .A1(n15), .B0(n16), .Y(next_state[3]) );
  NAND4X1M U29 ( .A(n15), .B(n17), .C(n18), .D(n19), .Y(next_state[2]) );
  AOI221XLM U30 ( .A0(n20), .A1(n21), .B0(n22), .B1(n23), .C0(n24), .Y(n19) );
  CLKINVX1M U31 ( .A(n25), .Y(n24) );
  OAI21X1M U32 ( .A0(n26), .A1(n27), .B0(n28), .Y(n23) );
  CLKINVX1M U33 ( .A(n29), .Y(n22) );
  OAI221X1M U34 ( .A0(n30), .A1(n31), .B0(n32), .B1(n28), .C0(n33), .Y(
        next_state[1]) );
  AOI211X1M U35 ( .A0(n34), .A1(n21), .B0(n20), .C0(n35), .Y(n33) );
  AOI2BB1X1M U36 ( .A0N(n14), .A1N(n27), .B0(n29), .Y(n35) );
  CLKINVX1M U37 ( .A(n36), .Y(n20) );
  CLKINVX1M U38 ( .A(n37), .Y(n30) );
  NAND3X1M U39 ( .A(n38), .B(n16), .C(n39), .Y(next_state[0]) );
  AOI221XLM U40 ( .A0(n40), .A1(n21), .B0(n41), .B1(n37), .C0(n42), .Y(n39) );
  CLKINVX1M U41 ( .A(n43), .Y(n42) );
  CLKNAND2X2M U42 ( .A(n26), .B(n28), .Y(n37) );
  CLKINVX1M U43 ( .A(N77), .Y(n26) );
  AND3X1M U44 ( .A(n25), .B(n18), .C(n44), .Y(n16) );
  OR4X1M U45 ( .A(PAR_EN), .B(n29), .C(n14), .D(n27), .Y(n44) );
  NAND3BX1M U46 ( .AN(BIT_COUNT[0]), .B(BIT_COUNT[3]), .C(n45), .Y(n27) );
  NOR2X1M U47 ( .A(BIT_COUNT[2]), .B(BIT_COUNT[1]), .Y(n45) );
  NAND3X1M U48 ( .A(current_state[1]), .B(n46), .C(n47), .Y(n29) );
  AOI2BB2XLM U49 ( .B0(n48), .B1(n14), .A0N(n49), .A1N(RX_IN), .Y(n38) );
  CLKNAND2X2M U50 ( .A(n50), .B(n51), .Y(PAR_ERR_RST) );
  NOR2X1M U51 ( .A(n18), .B(n21), .Y(STOP_CHECK_EN) );
  NOR2X1M U52 ( .A(n21), .B(n43), .Y(START_CHECK_EN) );
  NOR2X1M U53 ( .A(n17), .B(n21), .Y(PAR_CHECK_EN) );
  NAND4X1M U54 ( .A(n52), .B(n49), .C(n32), .D(n31), .Y(GLITCH_RST) );
  NOR2X1M U55 ( .A(n36), .B(n21), .Y(DESERIALIZER_EN) );
  NAND4X1M U56 ( .A(n53), .B(n54), .C(n55), .D(n56), .Y(n21) );
  XNOR2X1M U57 ( .A(EDGE_COUNT[2]), .B(N86), .Y(n56) );
  NOR2X1M U58 ( .A(EDGE_COUNT[1]), .B(n57), .Y(n55) );
  XNOR2X1M U59 ( .A(EDGE_COUNT[3]), .B(N87), .Y(n54) );
  XNOR2X1M U60 ( .A(EDGE_COUNT[4]), .B(N88), .Y(n53) );
  CLKNAND2X2M U61 ( .A(n50), .B(n31), .Y(COUNT_RST) );
  CLKINVX1M U62 ( .A(n48), .Y(n31) );
  NOR2X1M U63 ( .A(START_GLITCH), .B(n51), .Y(n48) );
  AND3X1M U64 ( .A(n49), .B(n25), .C(n52), .Y(n50) );
  NAND2BX1M U65 ( .AN(n32), .B(n14), .Y(n25) );
  CLKNAND2X2M U66 ( .A(N77), .B(n28), .Y(n14) );
  NAND4BX1M U67 ( .AN(EDGE_COUNT[4]), .B(n57), .C(n58), .D(n59), .Y(n28) );
  NOR2BX1M U68 ( .AN(EDGE_COUNT[1]), .B(n60), .Y(n59) );
  XNOR2X1M U69 ( .A(EDGE_COUNT[3]), .B(n13), .Y(n60) );
  XNOR2X1M U70 ( .A(EDGE_COUNT[2]), .B(\first_sample[2] ), .Y(n58) );
  CLKNAND2X2M U71 ( .A(n13), .B(n61), .Y(\first_sample[2] ) );
  NAND4X1M U72 ( .A(N70), .B(n62), .C(PRESCALE[4]), .D(n63), .Y(n61) );
  NOR3X1M U73 ( .A(PRESCALE[2]), .B(PRESCALE[5]), .C(PRESCALE[3]), .Y(n63) );
  NAND4X1M U74 ( .A(N70), .B(n62), .C(PRESCALE[5]), .D(n64), .Y(n13) );
  NOR3X1M U75 ( .A(PRESCALE[2]), .B(PRESCALE[4]), .C(PRESCALE[3]), .Y(n64) );
  CLKINVX1M U76 ( .A(PRESCALE[1]), .Y(n62) );
  CLKINVX1M U77 ( .A(EDGE_COUNT[0]), .Y(n57) );
  NAND3X1M U78 ( .A(n65), .B(n46), .C(n47), .Y(n49) );
  NAND4X1M U79 ( .A(RX_IN), .B(n52), .C(n51), .D(n32), .Y(COUNTER_EN) );
  CLKNAND2X2M U80 ( .A(n66), .B(n65), .Y(n32) );
  CLKNAND2X2M U81 ( .A(n67), .B(n65), .Y(n51) );
  NOR4BX1M U82 ( .AN(n68), .B(n41), .C(SAMPLER_EN), .D(current_state[1]), .Y(
        n52) );
  NAND3BX1M U83 ( .AN(n34), .B(n36), .C(n17), .Y(SAMPLER_EN) );
  CLKINVX1M U84 ( .A(n40), .Y(n17) );
  NOR4X1M U85 ( .A(n46), .B(n69), .C(current_state[1]), .D(current_state[3]), 
        .Y(n40) );
  NAND3X1M U86 ( .A(current_state[1]), .B(current_state[2]), .C(n47), .Y(n36)
         );
  CLKNAND2X2M U87 ( .A(n18), .B(n43), .Y(n34) );
  CLKNAND2X2M U88 ( .A(n67), .B(current_state[1]), .Y(n43) );
  NOR3X1M U89 ( .A(current_state[2]), .B(current_state[3]), .C(n69), .Y(n67)
         );
  CLKNAND2X2M U90 ( .A(current_state[1]), .B(n66), .Y(n18) );
  NOR3BX1M U91 ( .AN(current_state[3]), .B(n46), .C(n69), .Y(n66) );
  CLKINVX1M U92 ( .A(n15), .Y(n41) );
  NAND3X1M U93 ( .A(current_state[2]), .B(n65), .C(n47), .Y(n15) );
  NOR2X1M U94 ( .A(current_state[3]), .B(current_state[0]), .Y(n47) );
  OAI21X1M U95 ( .A0(n69), .A1(n46), .B0(current_state[3]), .Y(n68) );
endmodule


module UART_RX_data_sampler ( CLK, RST, EN, RX_IN, sampled_bit );
  input CLK, RST, EN, RX_IN;
  output sampled_bit;
  wire   n1, n4, n5, n6, n8, n9, n10, n11, n2, n3, n7;
  wire   [2:0] current_state;

  DFFRX1M \current_state_reg[2]  ( .D(n9), .CK(CLK), .RN(RST), .Q(
        current_state[2]), .QN(n7) );
  DFFRX1M \current_state_reg[1]  ( .D(n10), .CK(CLK), .RN(RST), .Q(
        current_state[1]), .QN(n3) );
  DFFRX1M \current_state_reg[0]  ( .D(n11), .CK(CLK), .RN(RST), .Q(
        current_state[0]), .QN(n2) );
  OAI22X1M U3 ( .A0(EN), .A1(n3), .B0(n6), .B1(n4), .Y(n10) );
  AOI2BB2XLM U4 ( .B0(RX_IN), .B1(n3), .A0N(n2), .A1N(RX_IN), .Y(n6) );
  NAND2X2M U5 ( .A(EN), .B(n7), .Y(n4) );
  NOR2X2M U6 ( .A(n1), .B(n7), .Y(sampled_bit) );
  AOI22X1M U7 ( .A0(current_state[1]), .A1(RX_IN), .B0(current_state[0]), .B1(
        n3), .Y(n1) );
  OAI22X1M U8 ( .A0(EN), .A1(n7), .B0(n4), .B1(n5), .Y(n9) );
  OAI21X2M U9 ( .A0(RX_IN), .A1(current_state[1]), .B0(current_state[0]), .Y(
        n5) );
  OAI32X1M U10 ( .A0(n4), .A1(current_state[1]), .A2(current_state[0]), .B0(n8), .B1(n2), .Y(n11) );
  OA21X2M U11 ( .A0(n3), .A1(current_state[2]), .B0(EN), .Y(n8) );
endmodule


module UART_RX_deserializer ( CLK, RST, EN, sampled_bit, P_DATA );
  output [7:0] P_DATA;
  input CLK, RST, EN, sampled_bit;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n1, n2, n3, n4, n5, n6, n7, n8,
         n17;

  DFFRX1M \P_DATA_reg[7]  ( .D(n16), .CK(CLK), .RN(RST), .Q(P_DATA[7]), .QN(n3) );
  DFFRX1M \P_DATA_reg[6]  ( .D(n15), .CK(CLK), .RN(RST), .Q(P_DATA[6]), .QN(n4) );
  DFFRX1M \P_DATA_reg[5]  ( .D(n14), .CK(CLK), .RN(RST), .Q(P_DATA[5]), .QN(n5) );
  DFFRX1M \P_DATA_reg[4]  ( .D(n13), .CK(CLK), .RN(RST), .Q(P_DATA[4]), .QN(n6) );
  DFFRX1M \P_DATA_reg[3]  ( .D(n12), .CK(CLK), .RN(RST), .Q(P_DATA[3]), .QN(n7) );
  DFFRX1M \P_DATA_reg[2]  ( .D(n11), .CK(CLK), .RN(RST), .Q(P_DATA[2]), .QN(n8) );
  DFFRX1M \P_DATA_reg[1]  ( .D(n10), .CK(CLK), .RN(RST), .Q(P_DATA[1]), .QN(
        n17) );
  DFFRX1M \P_DATA_reg[0]  ( .D(n9), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  INVX2M U2 ( .A(n1), .Y(n2) );
  OAI2BB2X1M U3 ( .B0(n1), .B1(n3), .A0N(sampled_bit), .A1N(n1), .Y(n16) );
  OAI22X1M U4 ( .A0(n2), .A1(n8), .B0(n1), .B1(n17), .Y(n10) );
  OAI22X1M U5 ( .A0(n2), .A1(n7), .B0(n1), .B1(n8), .Y(n11) );
  OAI22X1M U6 ( .A0(n2), .A1(n6), .B0(n1), .B1(n7), .Y(n12) );
  OAI22X1M U7 ( .A0(n2), .A1(n5), .B0(n1), .B1(n6), .Y(n13) );
  OAI22X1M U8 ( .A0(n2), .A1(n4), .B0(n1), .B1(n5), .Y(n14) );
  OAI22X1M U9 ( .A0(n2), .A1(n3), .B0(n1), .B1(n4), .Y(n15) );
  BUFX2M U10 ( .A(EN), .Y(n1) );
  OAI2BB2X1M U11 ( .B0(n2), .B1(n17), .A0N(P_DATA[0]), .A1N(n2), .Y(n9) );
endmodule


module UART_RX_edge_bit_counter ( CLK, RST, EN, COUNT_RST, PRESCALE, 
        EDGE_COUNT, BIT_COUNT );
  input [5:0] PRESCALE;
  output [4:0] EDGE_COUNT;
  output [3:0] BIT_COUNT;
  input CLK, RST, EN, COUNT_RST;
  wire   N20, N21, N22, N23, n7, n8, n9, n10, n13, n14, n15, n16, n17, n18,
         n19, n21, n22, n25, n26, n27, n30, n32, n34, n35, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, \add_25/carry[4] , \add_25/carry[3] ,
         \add_25/carry[2] , n1, n2, n3, n4, n5, n6, n11, n12, n20, n23, n24,
         n28, n29, n31, n33, n36;

  DFFRX1M \EDGE_COUNT_reg[4]  ( .D(n38), .CK(CLK), .RN(RST), .Q(EDGE_COUNT[4]), 
        .QN(n24) );
  DFFRX1M \EDGE_COUNT_reg[0]  ( .D(n42), .CK(CLK), .RN(RST), .Q(EDGE_COUNT[0]), 
        .QN(n11) );
  DFFRX1M \EDGE_COUNT_reg[3]  ( .D(n41), .CK(CLK), .RN(RST), .Q(EDGE_COUNT[3]), 
        .QN(n12) );
  DFFRX1M \EDGE_COUNT_reg[2]  ( .D(n39), .CK(CLK), .RN(RST), .Q(EDGE_COUNT[2]), 
        .QN(n23) );
  DFFRX1M \EDGE_COUNT_reg[1]  ( .D(n40), .CK(CLK), .RN(RST), .Q(EDGE_COUNT[1]), 
        .QN(n20) );
  DFFRX1M \BIT_COUNT_reg[0]  ( .D(n46), .CK(CLK), .RN(RST), .Q(BIT_COUNT[0]), 
        .QN(n28) );
  DFFRX1M \BIT_COUNT_reg[1]  ( .D(n45), .CK(CLK), .RN(RST), .Q(BIT_COUNT[1]), 
        .QN(n29) );
  DFFRX1M \BIT_COUNT_reg[3]  ( .D(n43), .CK(CLK), .RN(RST), .Q(BIT_COUNT[3]), 
        .QN(n33) );
  DFFRX1M \BIT_COUNT_reg[2]  ( .D(n44), .CK(CLK), .RN(RST), .Q(BIT_COUNT[2]), 
        .QN(n31) );
  OAI31X1M U3 ( .A0(n32), .A1(n3), .A2(n34), .B0(EN), .Y(n30) );
  INVX2M U4 ( .A(n26), .Y(n1) );
  INVX2M U5 ( .A(n16), .Y(n6) );
  NAND4X2M U6 ( .A(n2), .B(COUNT_RST), .C(n14), .D(n19), .Y(n26) );
  AOI21X2M U7 ( .A0(n28), .A1(n1), .B0(n30), .Y(n27) );
  INVX2M U8 ( .A(n30), .Y(n2) );
  OAI2BB2X1M U9 ( .B0(EN), .B1(n23), .A0N(N21), .A1N(n4), .Y(n39) );
  OAI2BB2X1M U10 ( .B0(EN), .B1(n20), .A0N(N20), .A1N(n4), .Y(n40) );
  OAI2BB2X1M U11 ( .B0(EN), .B1(n12), .A0N(N22), .A1N(n4), .Y(n41) );
  NOR3X2M U12 ( .A(n20), .B(n11), .C(n23), .Y(n37) );
  OAI31X1M U13 ( .A0(n18), .A1(n12), .A2(n16), .B0(n19), .Y(n35) );
  NAND2X2M U14 ( .A(n37), .B(n24), .Y(n16) );
  INVX2M U15 ( .A(n15), .Y(n5) );
  AND2X2M U16 ( .A(n18), .B(n17), .Y(n10) );
  OAI31X1M U17 ( .A0(n16), .A1(EDGE_COUNT[3]), .A2(n17), .B0(n14), .Y(n34) );
  OAI21BX1M U18 ( .A0(n13), .A1(n15), .B0N(n35), .Y(n32) );
  INVX2M U19 ( .A(COUNT_RST), .Y(n3) );
  OAI32X1M U20 ( .A0(n28), .A1(BIT_COUNT[1]), .A2(n26), .B0(n27), .B1(n29), 
        .Y(n45) );
  OAI32X1M U21 ( .A0(n31), .A1(BIT_COUNT[3]), .A2(n21), .B0(n22), .B1(n33), 
        .Y(n43) );
  AOI21X2M U22 ( .A0(n1), .A1(n31), .B0(n25), .Y(n22) );
  OAI21X2M U23 ( .A0(BIT_COUNT[1]), .A1(n26), .B0(n27), .Y(n25) );
  OAI2BB2X1M U24 ( .B0(BIT_COUNT[2]), .B1(n21), .A0N(n25), .A1N(BIT_COUNT[2]), 
        .Y(n44) );
  NAND3X2M U25 ( .A(BIT_COUNT[0]), .B(n1), .C(BIT_COUNT[1]), .Y(n21) );
  OAI2BB2XLM U26 ( .B0(EN), .B1(n24), .A0N(N23), .A1N(n4), .Y(n38) );
  OAI2B2X1M U27 ( .A1N(n4), .A0(EDGE_COUNT[0]), .B0(EN), .B1(n11), .Y(n42) );
  OAI22X1M U28 ( .A0(n2), .A1(n28), .B0(BIT_COUNT[0]), .B1(n26), .Y(n46) );
  INVX2M U29 ( .A(n7), .Y(n4) );
  OAI211XLM U30 ( .A0(n8), .A1(n9), .B0(COUNT_RST), .C0(EN), .Y(n7) );
  OAI221X1M U31 ( .A0(n17), .A1(n12), .B0(EDGE_COUNT[3]), .B1(n18), .C0(n19), 
        .Y(n8) );
  OAI221X1M U32 ( .A0(n10), .A1(n6), .B0(n5), .B1(n13), .C0(n14), .Y(n9) );
  NAND3X2M U33 ( .A(n37), .B(EDGE_COUNT[3]), .C(EDGE_COUNT[4]), .Y(n15) );
  ADDHX1M U34 ( .A(EDGE_COUNT[2]), .B(\add_25/carry[2] ), .CO(
        \add_25/carry[3] ), .S(N21) );
  ADDHX1M U35 ( .A(EDGE_COUNT[1]), .B(EDGE_COUNT[0]), .CO(\add_25/carry[2] ), 
        .S(N20) );
  ADDHX1M U36 ( .A(EDGE_COUNT[3]), .B(\add_25/carry[3] ), .CO(
        \add_25/carry[4] ), .S(N22) );
  NOR3X2M U37 ( .A(PRESCALE[2]), .B(PRESCALE[1]), .C(PRESCALE[0]), .Y(n14) );
  OAI21X2M U38 ( .A0(PRESCALE[5]), .A1(n10), .B0(n13), .Y(n19) );
  NAND3BX2M U39 ( .AN(PRESCALE[3]), .B(n36), .C(PRESCALE[5]), .Y(n13) );
  NAND2X2M U40 ( .A(PRESCALE[3]), .B(n36), .Y(n17) );
  NAND2BX2M U41 ( .AN(PRESCALE[3]), .B(PRESCALE[4]), .Y(n18) );
  INVX2M U42 ( .A(PRESCALE[4]), .Y(n36) );
  CLKXOR2X2M U43 ( .A(\add_25/carry[4] ), .B(EDGE_COUNT[4]), .Y(N23) );
endmodule


module UART_RX_parity_checker ( CLK, RST, EN, PARITY_TYPE, SAMPLED_BITS, 
        SAMPLED_PARITY_BIT, ERR_RST, PARITY_ERROR );
  input [7:0] SAMPLED_BITS;
  input CLK, RST, EN, PARITY_TYPE, SAMPLED_PARITY_BIT, ERR_RST;
  output PARITY_ERROR;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n1;

  DFFRQX2M PARITY_ERROR_reg ( .D(n9), .CK(CLK), .RN(RST), .Q(PARITY_ERROR) );
  NOR2BX2M U3 ( .AN(ERR_RST), .B(n2), .Y(n9) );
  AOI22X1M U4 ( .A0(EN), .A1(n3), .B0(PARITY_ERROR), .B1(n1), .Y(n2) );
  INVX2M U5 ( .A(EN), .Y(n1) );
  XOR3XLM U6 ( .A(n4), .B(n5), .C(n6), .Y(n3) );
  XOR3XLM U7 ( .A(SAMPLED_BITS[1]), .B(SAMPLED_BITS[0]), .C(n7), .Y(n6) );
  XOR3XLM U8 ( .A(SAMPLED_BITS[5]), .B(SAMPLED_BITS[4]), .C(n8), .Y(n5) );
  CLKXOR2X2M U9 ( .A(SAMPLED_PARITY_BIT), .B(PARITY_TYPE), .Y(n4) );
  XNOR2X2M U10 ( .A(SAMPLED_BITS[7]), .B(SAMPLED_BITS[6]), .Y(n8) );
  XNOR2X2M U11 ( .A(SAMPLED_BITS[3]), .B(SAMPLED_BITS[2]), .Y(n7) );
endmodule


module UART_RX_start_checker ( CLK, RST, EN, sampled_bit, glitch_rst, 
        start_glitch );
  input CLK, RST, EN, sampled_bit, glitch_rst;
  output start_glitch;
  wire   n2, n3, n1;

  DFFRQX1M start_glitch_reg ( .D(n3), .CK(CLK), .RN(RST), .Q(start_glitch) );
  NOR2BX2M U3 ( .AN(glitch_rst), .B(n2), .Y(n3) );
  AOI22X1M U4 ( .A0(start_glitch), .A1(n1), .B0(sampled_bit), .B1(EN), .Y(n2)
         );
  INVX2M U5 ( .A(EN), .Y(n1) );
endmodule


module UART_RX_stop_checker ( CLK, RST, EN, sampled_bit, error_rst, stop_error
 );
  input CLK, RST, EN, sampled_bit, error_rst;
  output stop_error;
  wire   n2, n3, n1;

  DFFRQX2M stop_error_reg ( .D(n3), .CK(CLK), .RN(RST), .Q(stop_error) );
  NOR2BX2M U3 ( .AN(error_rst), .B(n2), .Y(n3) );
  AOI2BB2XLM U4 ( .B0(stop_error), .B1(n1), .A0N(sampled_bit), .A1N(n1), .Y(n2) );
  INVX2M U5 ( .A(EN), .Y(n1) );
endmodule


module UART_RX_TOP ( CLK, RST, PAR_EN, PAR_TYP, RX_IN, PRESCALE, DATA_VALID, 
        Stop_Error, Parity_Error, P_DATA );
  input [5:0] PRESCALE;
  output [7:0] P_DATA;
  input CLK, RST, PAR_EN, PAR_TYP, RX_IN;
  output DATA_VALID, Stop_Error, Parity_Error;
  wire   start_glitch, start_check_en, stop_check_en, par_check_en,
         deserializer_en, counter_en, sampler_en, count_rst, glitch_rst,
         par_err_rst, stop_err_rst, sampled_bit;
  wire   [3:0] bit_count;
  wire   [4:0] edge_count;

  UART_RX_FSM F1 ( .CLK(CLK), .RST(RST), .RX_IN(RX_IN), .PAR_EN(PAR_EN), 
        .START_GLITCH(start_glitch), .STOP_ERR(Stop_Error), .PAR_ERR(
        Parity_Error), .BIT_COUNT(bit_count), .EDGE_COUNT(edge_count), 
        .PRESCALE(PRESCALE), .DATA_VALID(DATA_VALID), .COUNT_RST(count_rst), 
        .GLITCH_RST(glitch_rst), .PAR_ERR_RST(par_err_rst), .STOP_ERR_RST(
        stop_err_rst), .START_CHECK_EN(start_check_en), .STOP_CHECK_EN(
        stop_check_en), .PAR_CHECK_EN(par_check_en), .DESERIALIZER_EN(
        deserializer_en), .COUNTER_EN(counter_en), .SAMPLER_EN(sampler_en) );
  UART_RX_data_sampler D1 ( .CLK(CLK), .RST(RST), .EN(sampler_en), .RX_IN(
        RX_IN), .sampled_bit(sampled_bit) );
  UART_RX_deserializer D2 ( .CLK(CLK), .RST(RST), .EN(deserializer_en), 
        .sampled_bit(sampled_bit), .P_DATA(P_DATA) );
  UART_RX_edge_bit_counter E1 ( .CLK(CLK), .RST(RST), .EN(counter_en), 
        .COUNT_RST(count_rst), .PRESCALE(PRESCALE), .EDGE_COUNT(edge_count), 
        .BIT_COUNT(bit_count) );
  UART_RX_parity_checker P1 ( .CLK(CLK), .RST(RST), .EN(par_check_en), 
        .PARITY_TYPE(PAR_TYP), .SAMPLED_BITS(P_DATA), .SAMPLED_PARITY_BIT(
        sampled_bit), .ERR_RST(par_err_rst), .PARITY_ERROR(Parity_Error) );
  UART_RX_start_checker S1 ( .CLK(CLK), .RST(RST), .EN(start_check_en), 
        .sampled_bit(sampled_bit), .glitch_rst(glitch_rst), .start_glitch(
        start_glitch) );
  UART_RX_stop_checker S2 ( .CLK(CLK), .RST(RST), .EN(stop_check_en), 
        .sampled_bit(sampled_bit), .error_rst(stop_err_rst), .stop_error(
        Stop_Error) );
endmodule


module UART_TX_FSM ( CLK, RST, DATA_VALID, PAR_EN, SER_DONE, SER_EN, 
        PAR_CALC_EN, MUX_SELECT, BUSY );
  output [2:0] MUX_SELECT;
  input CLK, RST, DATA_VALID, PAR_EN, SER_DONE;
  output SER_EN, PAR_CALC_EN, BUSY;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n2, n3, n5, n6,
         n7, n8, n9, n10;
  wire   [4:0] current_state;
  wire   [4:0] next_state;

  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[4]  ( .D(next_state[4]), .CK(CLK), .RN(RST), .Q(
        current_state[4]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[3]  ( .D(next_state[3]), .CK(CLK), .RN(RST), .Q(
        current_state[3]) );
  DFFSX1M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .SN(RST), .Q(
        current_state[0]), .QN(n2) );
  INVX2M U3 ( .A(MUX_SELECT[2]), .Y(BUSY) );
  NOR2X2M U4 ( .A(MUX_SELECT[0]), .B(SER_EN), .Y(MUX_SELECT[2]) );
  NAND2X2M U5 ( .A(n15), .B(n14), .Y(SER_EN) );
  NAND3X2M U6 ( .A(n9), .B(n8), .C(n2), .Y(n12) );
  INVX2M U7 ( .A(n13), .Y(n6) );
  INVX2M U8 ( .A(n16), .Y(n5) );
  AOI21X2M U9 ( .A0(n6), .A1(n19), .B0(n12), .Y(MUX_SELECT[1]) );
  NOR2X2M U10 ( .A(current_state[4]), .B(current_state[3]), .Y(n17) );
  NOR2X2M U11 ( .A(current_state[2]), .B(current_state[0]), .Y(n20) );
  NAND4X2M U12 ( .A(n20), .B(current_state[3]), .C(n9), .D(n8), .Y(n18) );
  NAND4X2M U13 ( .A(n17), .B(current_state[2]), .C(n2), .D(n9), .Y(n14) );
  NAND3X2M U14 ( .A(n20), .B(n17), .C(current_state[1]), .Y(n15) );
  NOR2X2M U15 ( .A(n7), .B(current_state[3]), .Y(n13) );
  NAND2X2M U16 ( .A(n21), .B(n18), .Y(MUX_SELECT[0]) );
  NAND4BX1M U17 ( .AN(current_state[3]), .B(current_state[4]), .C(n20), .D(n9), 
        .Y(n21) );
  INVX2M U18 ( .A(current_state[1]), .Y(n9) );
  INVX2M U19 ( .A(current_state[2]), .Y(n7) );
  NAND2X2M U20 ( .A(current_state[3]), .B(n7), .Y(n19) );
  INVX2M U21 ( .A(current_state[4]), .Y(n8) );
  OAI32X1M U22 ( .A0(n3), .A1(SER_EN), .A2(n5), .B0(DATA_VALID), .B1(n16), .Y(
        next_state[0]) );
  INVX2M U23 ( .A(n18), .Y(n3) );
  INVX2M U24 ( .A(n15), .Y(PAR_CALC_EN) );
  NOR4BX1M U25 ( .AN(SER_DONE), .B(n6), .C(n12), .D(n10), .Y(next_state[3]) );
  NAND4X2M U26 ( .A(current_state[0]), .B(n17), .C(n9), .D(n7), .Y(n16) );
  OAI21X2M U27 ( .A0(SER_DONE), .A1(n14), .B0(n15), .Y(next_state[2]) );
  NOR2X2M U28 ( .A(n11), .B(n12), .Y(next_state[4]) );
  AOI32X1M U29 ( .A0(n13), .A1(n10), .A2(SER_DONE), .B0(current_state[3]), 
        .B1(n7), .Y(n11) );
  AND2X2M U30 ( .A(DATA_VALID), .B(n5), .Y(next_state[1]) );
  INVX2M U31 ( .A(PAR_EN), .Y(n10) );
endmodule


module UART_TX_Serializer ( CLK, RST, P_DATA, DATA_VALID, EN, S_DATA, DONE );
  input [7:0] P_DATA;
  input CLK, RST, DATA_VALID, EN;
  output S_DATA, DONE;
  wire   N4, N5, N6, \count[3] , N18, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n1,
         n2, n3, n4, n5, n6, n7, n29, n30;
  wire   [7:0] temp_registers;

  DFFRQX2M \temp_registers_reg[5]  ( .D(n26), .CK(CLK), .RN(RST), .Q(
        temp_registers[5]) );
  DFFRQX2M \temp_registers_reg[1]  ( .D(n22), .CK(CLK), .RN(RST), .Q(
        temp_registers[1]) );
  DFFRQX2M \temp_registers_reg[7]  ( .D(n28), .CK(CLK), .RN(RST), .Q(
        temp_registers[7]) );
  DFFRQX2M \temp_registers_reg[3]  ( .D(n24), .CK(CLK), .RN(RST), .Q(
        temp_registers[3]) );
  DFFRQX2M \temp_registers_reg[6]  ( .D(n27), .CK(CLK), .RN(RST), .Q(
        temp_registers[6]) );
  DFFRQX2M \temp_registers_reg[2]  ( .D(n23), .CK(CLK), .RN(RST), .Q(
        temp_registers[2]) );
  DFFRQX2M \temp_registers_reg[4]  ( .D(n25), .CK(CLK), .RN(RST), .Q(
        temp_registers[4]) );
  DFFRQX2M \temp_registers_reg[0]  ( .D(n21), .CK(CLK), .RN(RST), .Q(
        temp_registers[0]) );
  DFFRQX2M DONE_reg ( .D(n16), .CK(CLK), .RN(RST), .Q(DONE) );
  DFFRQX2M \count_reg[3]  ( .D(n17), .CK(CLK), .RN(RST), .Q(\count[3] ) );
  DFFRQX2M \count_reg[2]  ( .D(n18), .CK(CLK), .RN(RST), .Q(N6) );
  DFFRQX2M \count_reg[1]  ( .D(n19), .CK(CLK), .RN(RST), .Q(N5) );
  DFFRQX2M \count_reg[0]  ( .D(n20), .CK(CLK), .RN(RST), .Q(N4) );
  DFFRQX2M S_DATA_reg ( .D(n15), .CK(CLK), .RN(RST), .Q(S_DATA) );
  INVX2M U3 ( .A(EN), .Y(n30) );
  AOI21X2M U4 ( .A0(n5), .A1(n3), .B0(n30), .Y(n13) );
  OAI21X2M U5 ( .A0(EN), .A1(n5), .B0(n9), .Y(n17) );
  INVX2M U6 ( .A(n14), .Y(n29) );
  INVX2M U7 ( .A(n8), .Y(n6) );
  OAI32X1M U8 ( .A0(n3), .A1(N5), .A2(n6), .B0(n13), .B1(n7), .Y(n19) );
  INVX2M U9 ( .A(N5), .Y(n7) );
  OAI32X1M U10 ( .A0(n11), .A1(N6), .A2(n6), .B0(n12), .B1(n4), .Y(n18) );
  INVX2M U11 ( .A(N6), .Y(n4) );
  NAND2X2M U12 ( .A(N5), .B(N4), .Y(n11) );
  OA21X2M U13 ( .A0(N5), .A1(\count[3] ), .B0(n13), .Y(n12) );
  NOR2X2M U14 ( .A(n30), .B(\count[3] ), .Y(n8) );
  OAI22X1M U15 ( .A0(EN), .A1(n3), .B0(N4), .B1(n6), .Y(n20) );
  NAND4X2M U16 ( .A(N6), .B(N5), .C(N4), .D(n8), .Y(n9) );
  NAND2X2M U17 ( .A(DATA_VALID), .B(n30), .Y(n14) );
  NAND2X2M U18 ( .A(n9), .B(n10), .Y(n16) );
  OAI21X2M U19 ( .A0(n30), .A1(n5), .B0(DONE), .Y(n10) );
  AO22X1M U20 ( .A0(N18), .A1(n8), .B0(S_DATA), .B1(n6), .Y(n15) );
  MX2X2M U21 ( .A(n2), .B(n1), .S0(N6), .Y(N18) );
  MX4X1M U22 ( .A(temp_registers[4]), .B(temp_registers[5]), .C(
        temp_registers[6]), .D(temp_registers[7]), .S0(N4), .S1(N5), .Y(n1) );
  MX4X1M U23 ( .A(temp_registers[0]), .B(temp_registers[1]), .C(
        temp_registers[2]), .D(temp_registers[3]), .S0(N4), .S1(N5), .Y(n2) );
  AO22X1M U24 ( .A0(P_DATA[0]), .A1(n29), .B0(temp_registers[0]), .B1(n14), 
        .Y(n21) );
  AO22X1M U25 ( .A0(P_DATA[1]), .A1(n29), .B0(temp_registers[1]), .B1(n14), 
        .Y(n22) );
  AO22X1M U26 ( .A0(P_DATA[2]), .A1(n29), .B0(temp_registers[2]), .B1(n14), 
        .Y(n23) );
  AO22X1M U27 ( .A0(P_DATA[3]), .A1(n29), .B0(temp_registers[3]), .B1(n14), 
        .Y(n24) );
  AO22X1M U28 ( .A0(P_DATA[4]), .A1(n29), .B0(temp_registers[4]), .B1(n14), 
        .Y(n25) );
  AO22X1M U29 ( .A0(P_DATA[5]), .A1(n29), .B0(temp_registers[5]), .B1(n14), 
        .Y(n26) );
  AO22X1M U30 ( .A0(P_DATA[6]), .A1(n29), .B0(temp_registers[6]), .B1(n14), 
        .Y(n27) );
  AO22X1M U31 ( .A0(P_DATA[7]), .A1(n29), .B0(temp_registers[7]), .B1(n14), 
        .Y(n28) );
  INVX2M U32 ( .A(N4), .Y(n3) );
  INVX2M U33 ( .A(\count[3] ), .Y(n5) );
endmodule


module UART_TX_Parity_Calculator ( CLK, RST, DATA, TYPE, EN, PARITY_BIT );
  input [7:0] DATA;
  input CLK, RST, TYPE, EN;
  output PARITY_BIT;
  wire   n1, n3, n4, n5, n6, n7, n2;

  DFFRQX2M PARITY_BIT_reg ( .D(n7), .CK(CLK), .RN(RST), .Q(PARITY_BIT) );
  XOR3XLM U2 ( .A(DATA[5]), .B(DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(DATA[7]), .B(DATA[6]), .Y(n6) );
  OAI2BB2X1M U4 ( .B0(n1), .B1(n2), .A0N(PARITY_BIT), .A1N(n2), .Y(n7) );
  INVX2M U5 ( .A(EN), .Y(n2) );
  XOR3XLM U6 ( .A(n3), .B(TYPE), .C(n4), .Y(n1) );
  XOR3XLM U7 ( .A(DATA[1]), .B(DATA[0]), .C(n5), .Y(n4) );
  XNOR2X2M U8 ( .A(DATA[3]), .B(DATA[2]), .Y(n5) );
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


module UART_TX_TOP ( clk, rst, parity_enable, parity_type, parallel_data, 
        data_valid, tx_out, busy );
  input [7:0] parallel_data;
  input clk, rst, parity_enable, parity_type, data_valid;
  output tx_out, busy;
  wire   flag, ser_done, ser_en, par_calc_en, ser_data, parity_bit, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [7:0] DATA;
  wire   [2:0] sel;

  UART_TX_FSM F1 ( .CLK(clk), .RST(n10), .DATA_VALID(flag), .PAR_EN(
        parity_enable), .SER_DONE(ser_done), .SER_EN(ser_en), .PAR_CALC_EN(
        par_calc_en), .MUX_SELECT(sel), .BUSY(busy) );
  UART_TX_Serializer S1 ( .CLK(clk), .RST(n10), .P_DATA(DATA), .DATA_VALID(
        flag), .EN(ser_en), .S_DATA(ser_data), .DONE(ser_done) );
  UART_TX_Parity_Calculator P1 ( .CLK(clk), .RST(n10), .DATA(DATA), .TYPE(
        parity_type), .EN(par_calc_en), .PARITY_BIT(parity_bit) );
  UART_TX_MUX M1 ( .SELECT(sel), .FIRST(1'b0), .LAST(1'b1), .DATA(ser_data), 
        .PARITY(parity_bit), .IDLE(1'b1), .OUT(tx_out) );
  DFFRQX2M \DATA_reg[1]  ( .D(n8), .CK(clk), .RN(n10), .Q(DATA[1]) );
  DFFRQX2M \DATA_reg[0]  ( .D(n9), .CK(clk), .RN(n10), .Q(DATA[0]) );
  DFFRQX2M \DATA_reg[3]  ( .D(n6), .CK(clk), .RN(n10), .Q(DATA[3]) );
  DFFRQX2M \DATA_reg[2]  ( .D(n7), .CK(clk), .RN(n10), .Q(DATA[2]) );
  DFFRQX2M flag_reg ( .D(n12), .CK(clk), .RN(n10), .Q(flag) );
  DFFRQX2M \DATA_reg[5]  ( .D(n4), .CK(clk), .RN(n10), .Q(DATA[5]) );
  DFFRQX2M \DATA_reg[4]  ( .D(n5), .CK(clk), .RN(n10), .Q(DATA[4]) );
  DFFRQX2M \DATA_reg[6]  ( .D(n3), .CK(clk), .RN(n10), .Q(DATA[6]) );
  DFFRQX2M \DATA_reg[7]  ( .D(n2), .CK(clk), .RN(n10), .Q(DATA[7]) );
  INVX2M U3 ( .A(n1), .Y(n12) );
  INVX2M U4 ( .A(n11), .Y(n10) );
  INVX2M U5 ( .A(rst), .Y(n11) );
  NAND2BX2M U6 ( .AN(busy), .B(data_valid), .Y(n1) );
  AO22X1M U7 ( .A0(parallel_data[7]), .A1(n12), .B0(DATA[7]), .B1(n1), .Y(n2)
         );
  AO22X1M U8 ( .A0(parallel_data[6]), .A1(n12), .B0(DATA[6]), .B1(n1), .Y(n3)
         );
  AO22X1M U9 ( .A0(parallel_data[5]), .A1(n12), .B0(DATA[5]), .B1(n1), .Y(n4)
         );
  AO22X1M U10 ( .A0(parallel_data[4]), .A1(n12), .B0(DATA[4]), .B1(n1), .Y(n5)
         );
  AO22X1M U11 ( .A0(parallel_data[3]), .A1(n12), .B0(DATA[3]), .B1(n1), .Y(n6)
         );
  AO22X1M U12 ( .A0(parallel_data[2]), .A1(n12), .B0(DATA[2]), .B1(n1), .Y(n7)
         );
  AO22X1M U13 ( .A0(parallel_data[1]), .A1(n12), .B0(DATA[1]), .B1(n1), .Y(n8)
         );
  AO22X1M U14 ( .A0(parallel_data[0]), .A1(n12), .B0(DATA[0]), .B1(n1), .Y(n9)
         );
endmodule


module PULSE_GEN ( CLK, RST, LVL_SIG, PULSE_SIG );
  input CLK, RST, LVL_SIG;
  output PULSE_SIG;
  wire   pls_flop, rcv_flop;

  DFFRQX2M rcv_flop_reg ( .D(LVL_SIG), .CK(CLK), .RN(RST), .Q(rcv_flop) );
  DFFRQX2M pls_flop_reg ( .D(rcv_flop), .CK(CLK), .RN(RST), .Q(pls_flop) );
  NOR2BX2M U3 ( .AN(rcv_flop), .B(pls_flop), .Y(PULSE_SIG) );
endmodule


module System_Top ( REF_CLK, UART_CLK, RST, RX_IN, Stop_Error, Parity_Error, 
        TX_OUT );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output Stop_Error, Parity_Error, TX_OUT;
  wire   sync_rst_1, sync_rst_2, rx_valid, sync_valid, gated_clk, alu_en,
         out_valid, wr_en, rd_en, rd_data_valid, gate_en, TX_CLK, RX_CLK,
         fifo_w_inc, fifo_full, fifo_r_inc, fifo_empty, tx_busy, n2, n3, n4,
         n5, n6, n7, n8, n9, n10;
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

  RST_SYNC_0 RST_SYNC_1 ( .RST(RST), .CLK(REF_CLK), .SYNC_RST(sync_rst_1) );
  RST_SYNC_1 RST_SYNC_2 ( .RST(RST), .CLK(UART_CLK), .SYNC_RST(sync_rst_2) );
  DATA_SYNC DATA_SYNC ( .CLK(REF_CLK), .RST(n8), .unsync_bus(rx_data), 
        .bus_enable(rx_valid), .sync_bus(sync_data), .enable_pulse_d(
        sync_valid) );
  ALU ALU ( .CLK(gated_clk), .RST(n8), .EN(alu_en), .A(reg0), .B(reg1), 
        .ALU_FUN(alu_fun), .ALU_OUT(alu_out), .OUT_VALID(out_valid) );
  RegFile RegFile ( .CLK(REF_CLK), .RST(n8), .WrData(wr_data), .Address({
        address[3:1], n5}), .WrEn(wr_en), .RdEn(rd_en), .RdData(rd_data), 
        .RdData_Valid(rd_data_valid), .REG0(reg0), .REG1(reg1), .REG2(reg2), 
        .REG3(reg3) );
  CLK_GATE CLK_GATE ( .CLK(REF_CLK), .EN(gate_en), .GATED_CLK(gated_clk) );
  ClkDiv_0 TX_CLK_DIV ( .i_ref_clk(UART_CLK), .i_rst_n(n6), .i_clk_en(1'b1), 
        .i_div_ratio(reg3), .o_div_clk(TX_CLK) );
  ClkDiv_1 RX_CLK_DIV ( .i_ref_clk(UART_CLK), .i_rst_n(n6), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, rx_div_ratio}), 
        .o_div_clk(RX_CLK) );
  SYS_CTRL SYS_CTRL ( .CLK(REF_CLK), .RST(n8), .ALU_OUT(alu_out), .RdData(
        rd_data), .RX_P_DATA(sync_data), .OUT_VALID(out_valid), .RX_D_VLD(
        sync_valid), .RdData_Valid(rd_data_valid), .FIFO_FULL(fifo_full), 
        .ALU_EN(alu_en), .GATE_EN(gate_en), .ALU_FUN(alu_fun), .FIFO_WR_DATA(
        fifo_wr_data), .WrData(wr_data), .Address(address), .WrEn(wr_en), 
        .RdEn(rd_en), .FIFO_W_INC(fifo_w_inc) );
  FIFO_TOP FIFO_TOP ( .wclk(REF_CLK), .rclk(TX_CLK), .wrst_n(n8), .rrst_n(n6), 
        .rinc(fifo_r_inc), .winc(fifo_w_inc), .wdata(fifo_wr_data), .rdata(
        tx_data), .wfull(fifo_full), .rempty(fifo_empty) );
  UART_RX_TOP UART_RX_TOP ( .CLK(RX_CLK), .RST(n6), .PAR_EN(reg2[0]), 
        .PAR_TYP(reg2[1]), .RX_IN(RX_IN), .PRESCALE(reg2[7:2]), .DATA_VALID(
        rx_valid), .Stop_Error(Stop_Error), .Parity_Error(Parity_Error), 
        .P_DATA(rx_data) );
  UART_TX_TOP UART_TX_TOP ( .clk(TX_CLK), .rst(n6), .parity_enable(reg2[0]), 
        .parity_type(reg2[1]), .parallel_data(tx_data), .data_valid(n10), 
        .tx_out(TX_OUT), .busy(tx_busy) );
  PULSE_GEN PULSE_GEN ( .CLK(TX_CLK), .RST(n6), .LVL_SIG(tx_busy), .PULSE_SIG(
        fifo_r_inc) );
  OAI21X2M U10 ( .A0(n2), .A1(n4), .B0(n3), .Y(rx_div_ratio[0]) );
  AND2X2M U11 ( .A(n3), .B(n4), .Y(rx_div_ratio[1]) );
  AND2X2M U12 ( .A(n2), .B(n3), .Y(rx_div_ratio[2]) );
  BUFX2M U13 ( .A(address[0]), .Y(n5) );
  INVX2M U14 ( .A(fifo_empty), .Y(n10) );
  NOR3BX2M U15 ( .AN(reg2[6]), .B(reg2[5]), .C(reg2[7]), .Y(n4) );
  NOR3BX2M U16 ( .AN(reg2[5]), .B(reg2[6]), .C(reg2[7]), .Y(n2) );
  NOR3X2M U17 ( .A(reg2[4]), .B(reg2[3]), .C(reg2[2]), .Y(n3) );
  INVX4M U18 ( .A(n9), .Y(n8) );
  INVX2M U19 ( .A(sync_rst_1), .Y(n9) );
  INVX4M U20 ( .A(n7), .Y(n6) );
  INVX2M U21 ( .A(sync_rst_2), .Y(n7) );
endmodule

