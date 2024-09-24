/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sat Sep 30 02:14:23 2023
/////////////////////////////////////////////////////////////


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module RST_SYNC_NUM_STAGES2_test_0 ( RST, CLK, SYNC_RST, test_si, test_so, 
        test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST, test_so;

  wire   [1:0] SYN_FLOPS;
  assign test_so = SYN_FLOPS[1];

  SDFFRQX2M SYNC_RST_reg ( .D(SYN_FLOPS[0]), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \SYN_FLOPS_reg[1]  ( .D(1'b1), .SI(SYN_FLOPS[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYN_FLOPS[1]) );
  SDFFRQX2M \SYN_FLOPS_reg[0]  ( .D(SYN_FLOPS[1]), .SI(SYNC_RST), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYN_FLOPS[0]) );
endmodule


module RST_SYNC_NUM_STAGES2_test_1 ( RST, CLK, SYNC_RST, test_si, test_so, 
        test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST, test_so;

  wire   [1:0] SYN_FLOPS;
  assign test_so = SYN_FLOPS[1];

  SDFFRQX2M SYNC_RST_reg ( .D(SYN_FLOPS[0]), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \SYN_FLOPS_reg[1]  ( .D(1'b1), .SI(SYN_FLOPS[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYN_FLOPS[1]) );
  SDFFRQX1M \SYN_FLOPS_reg[0]  ( .D(SYN_FLOPS[1]), .SI(SYNC_RST), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYN_FLOPS[0]) );
endmodule


module DATA_SYNC_BUS_WIDTH8_NUM_STAGES2_test_1 ( Unsync_bus, CLK, RST, 
        bus_enable, enable_pulse, sync_bus, test_si, test_se );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable, test_si, test_se;
  output enable_pulse;
  wire   Multi_FF, PG_FF, n1, n4, n6, n8, n10, n12, n14, n16, n18, n24, n25;
  wire   [1:0] SYN_FLOPS;

  SDFFRQX2M PG_FF_reg ( .D(Multi_FF), .SI(Multi_FF), .SE(test_se), .CK(CLK), 
        .RN(n24), .Q(PG_FF) );
  SDFFRQX2M Multi_FF_reg ( .D(SYN_FLOPS[0]), .SI(test_si), .SE(test_se), .CK(
        CLK), .RN(n24), .Q(Multi_FF) );
  SDFFRQX2M enable_pulse_reg ( .D(n25), .SI(SYN_FLOPS[1]), .SE(test_se), .CK(
        CLK), .RN(n24), .Q(enable_pulse) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(n24), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(n24), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(n24), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(n24), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(n24), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(n24), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(n24), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n4), .SI(enable_pulse), .SE(test_se), .CK(
        CLK), .RN(n24), .Q(sync_bus[0]) );
  SDFFRQX2M \SYN_FLOPS_reg[0]  ( .D(SYN_FLOPS[1]), .SI(PG_FF), .SE(test_se), 
        .CK(CLK), .RN(n24), .Q(SYN_FLOPS[0]) );
  SDFFRQX1M \SYN_FLOPS_reg[1]  ( .D(bus_enable), .SI(SYN_FLOPS[0]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYN_FLOPS[1]) );
  INVX2M U4 ( .A(n1), .Y(n25) );
  BUFX2M U5 ( .A(RST), .Y(n24) );
  NAND2BX2M U6 ( .AN(PG_FF), .B(Multi_FF), .Y(n1) );
  AO22X1M U7 ( .A0(Unsync_bus[0]), .A1(n25), .B0(sync_bus[0]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(Unsync_bus[1]), .A1(n25), .B0(sync_bus[1]), .B1(n1), .Y(n6)
         );
  AO22X1M U9 ( .A0(Unsync_bus[2]), .A1(n25), .B0(sync_bus[2]), .B1(n1), .Y(n8)
         );
  AO22X1M U10 ( .A0(Unsync_bus[3]), .A1(n25), .B0(sync_bus[3]), .B1(n1), .Y(
        n10) );
  AO22X1M U11 ( .A0(Unsync_bus[4]), .A1(n25), .B0(sync_bus[4]), .B1(n1), .Y(
        n12) );
  AO22X1M U12 ( .A0(Unsync_bus[5]), .A1(n25), .B0(sync_bus[5]), .B1(n1), .Y(
        n14) );
  AO22X1M U26 ( .A0(Unsync_bus[6]), .A1(n25), .B0(sync_bus[6]), .B1(n1), .Y(
        n16) );
  AO22X1M U27 ( .A0(Unsync_bus[7]), .A1(n25), .B0(sync_bus[7]), .B1(n1), .Y(
        n18) );
endmodule


module FIFO_MEMORY_test_1 ( WR_DATA, Wr_en, W_CLK, W_RST, W_adrr, R_addr, 
        RD_DATA, test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] WR_DATA;
  input [2:0] W_adrr;
  input [2:0] R_addr;
  output [7:0] RD_DATA;
  input Wr_en, W_CLK, W_RST, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N10, N11, N12, \fifo_MEM[7][7] , \fifo_MEM[7][6] , \fifo_MEM[7][5] ,
         \fifo_MEM[7][4] , \fifo_MEM[7][3] , \fifo_MEM[7][2] ,
         \fifo_MEM[7][1] , \fifo_MEM[7][0] , \fifo_MEM[6][7] ,
         \fifo_MEM[6][6] , \fifo_MEM[6][5] , \fifo_MEM[6][4] ,
         \fifo_MEM[6][3] , \fifo_MEM[6][2] , \fifo_MEM[6][1] ,
         \fifo_MEM[6][0] , \fifo_MEM[5][7] , \fifo_MEM[5][6] ,
         \fifo_MEM[5][5] , \fifo_MEM[5][4] , \fifo_MEM[5][3] ,
         \fifo_MEM[5][2] , \fifo_MEM[5][1] , \fifo_MEM[5][0] ,
         \fifo_MEM[4][7] , \fifo_MEM[4][6] , \fifo_MEM[4][5] ,
         \fifo_MEM[4][4] , \fifo_MEM[4][3] , \fifo_MEM[4][2] ,
         \fifo_MEM[4][1] , \fifo_MEM[4][0] , \fifo_MEM[3][7] ,
         \fifo_MEM[3][6] , \fifo_MEM[3][5] , \fifo_MEM[3][4] ,
         \fifo_MEM[3][3] , \fifo_MEM[3][2] , \fifo_MEM[3][1] ,
         \fifo_MEM[3][0] , \fifo_MEM[2][7] , \fifo_MEM[2][6] ,
         \fifo_MEM[2][5] , \fifo_MEM[2][4] , \fifo_MEM[2][3] ,
         \fifo_MEM[2][2] , \fifo_MEM[2][1] , \fifo_MEM[2][0] ,
         \fifo_MEM[1][7] , \fifo_MEM[1][6] , \fifo_MEM[1][5] ,
         \fifo_MEM[1][4] , \fifo_MEM[1][3] , \fifo_MEM[1][2] ,
         \fifo_MEM[1][1] , \fifo_MEM[1][0] , \fifo_MEM[0][7] ,
         \fifo_MEM[0][6] , \fifo_MEM[0][5] , \fifo_MEM[0][4] ,
         \fifo_MEM[0][3] , \fifo_MEM[0][2] , \fifo_MEM[0][1] ,
         \fifo_MEM[0][0] , n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178;
  assign N10 = R_addr[0];
  assign N11 = R_addr[1];
  assign N12 = R_addr[2];
  assign test_so2 = \fifo_MEM[7][7] ;
  assign test_so1 = \fifo_MEM[1][2] ;

  SDFFRQX2M \fifo_MEM_reg[5][7]  ( .D(n132), .SI(\fifo_MEM[5][6] ), .SE(
        test_se), .CK(W_CLK), .RN(n164), .Q(\fifo_MEM[5][7] ) );
  SDFFRQX2M \fifo_MEM_reg[5][6]  ( .D(n131), .SI(\fifo_MEM[5][5] ), .SE(
        test_se), .CK(W_CLK), .RN(n164), .Q(\fifo_MEM[5][6] ) );
  SDFFRQX2M \fifo_MEM_reg[5][5]  ( .D(n130), .SI(\fifo_MEM[5][4] ), .SE(
        test_se), .CK(W_CLK), .RN(n164), .Q(\fifo_MEM[5][5] ) );
  SDFFRQX2M \fifo_MEM_reg[5][4]  ( .D(n129), .SI(\fifo_MEM[5][3] ), .SE(
        test_se), .CK(W_CLK), .RN(n164), .Q(\fifo_MEM[5][4] ) );
  SDFFRQX2M \fifo_MEM_reg[5][3]  ( .D(n128), .SI(\fifo_MEM[5][2] ), .SE(
        test_se), .CK(W_CLK), .RN(n164), .Q(\fifo_MEM[5][3] ) );
  SDFFRQX2M \fifo_MEM_reg[5][2]  ( .D(n127), .SI(\fifo_MEM[5][1] ), .SE(
        test_se), .CK(W_CLK), .RN(n164), .Q(\fifo_MEM[5][2] ) );
  SDFFRQX2M \fifo_MEM_reg[5][1]  ( .D(n126), .SI(\fifo_MEM[5][0] ), .SE(
        test_se), .CK(W_CLK), .RN(n164), .Q(\fifo_MEM[5][1] ) );
  SDFFRQX2M \fifo_MEM_reg[5][0]  ( .D(n125), .SI(\fifo_MEM[4][7] ), .SE(
        test_se), .CK(W_CLK), .RN(n164), .Q(\fifo_MEM[5][0] ) );
  SDFFRQX2M \fifo_MEM_reg[1][7]  ( .D(n100), .SI(\fifo_MEM[1][6] ), .SE(
        test_se), .CK(W_CLK), .RN(n167), .Q(\fifo_MEM[1][7] ) );
  SDFFRQX2M \fifo_MEM_reg[1][6]  ( .D(n99), .SI(\fifo_MEM[1][5] ), .SE(test_se), .CK(W_CLK), .RN(n167), .Q(\fifo_MEM[1][6] ) );
  SDFFRQX2M \fifo_MEM_reg[1][5]  ( .D(n98), .SI(\fifo_MEM[1][4] ), .SE(test_se), .CK(W_CLK), .RN(n167), .Q(\fifo_MEM[1][5] ) );
  SDFFRQX2M \fifo_MEM_reg[1][4]  ( .D(n97), .SI(\fifo_MEM[1][3] ), .SE(test_se), .CK(W_CLK), .RN(n167), .Q(\fifo_MEM[1][4] ) );
  SDFFRQX2M \fifo_MEM_reg[1][3]  ( .D(n96), .SI(test_si2), .SE(test_se), .CK(
        W_CLK), .RN(n167), .Q(\fifo_MEM[1][3] ) );
  SDFFRQX2M \fifo_MEM_reg[1][2]  ( .D(n95), .SI(\fifo_MEM[1][1] ), .SE(test_se), .CK(W_CLK), .RN(n167), .Q(\fifo_MEM[1][2] ) );
  SDFFRQX2M \fifo_MEM_reg[1][1]  ( .D(n94), .SI(\fifo_MEM[1][0] ), .SE(test_se), .CK(W_CLK), .RN(n167), .Q(\fifo_MEM[1][1] ) );
  SDFFRQX2M \fifo_MEM_reg[1][0]  ( .D(n93), .SI(\fifo_MEM[0][7] ), .SE(test_se), .CK(W_CLK), .RN(n167), .Q(\fifo_MEM[1][0] ) );
  SDFFRQX2M \fifo_MEM_reg[7][7]  ( .D(n148), .SI(\fifo_MEM[7][6] ), .SE(
        test_se), .CK(W_CLK), .RN(n163), .Q(\fifo_MEM[7][7] ) );
  SDFFRQX2M \fifo_MEM_reg[7][6]  ( .D(n147), .SI(\fifo_MEM[7][5] ), .SE(
        test_se), .CK(W_CLK), .RN(n163), .Q(\fifo_MEM[7][6] ) );
  SDFFRQX2M \fifo_MEM_reg[7][5]  ( .D(n146), .SI(\fifo_MEM[7][4] ), .SE(
        test_se), .CK(W_CLK), .RN(n163), .Q(\fifo_MEM[7][5] ) );
  SDFFRQX2M \fifo_MEM_reg[7][4]  ( .D(n145), .SI(\fifo_MEM[7][3] ), .SE(
        test_se), .CK(W_CLK), .RN(n163), .Q(\fifo_MEM[7][4] ) );
  SDFFRQX2M \fifo_MEM_reg[7][3]  ( .D(n144), .SI(\fifo_MEM[7][2] ), .SE(
        test_se), .CK(W_CLK), .RN(n163), .Q(\fifo_MEM[7][3] ) );
  SDFFRQX2M \fifo_MEM_reg[7][2]  ( .D(n143), .SI(\fifo_MEM[7][1] ), .SE(
        test_se), .CK(W_CLK), .RN(n163), .Q(\fifo_MEM[7][2] ) );
  SDFFRQX2M \fifo_MEM_reg[7][1]  ( .D(n142), .SI(\fifo_MEM[7][0] ), .SE(
        test_se), .CK(W_CLK), .RN(n163), .Q(\fifo_MEM[7][1] ) );
  SDFFRQX2M \fifo_MEM_reg[7][0]  ( .D(n141), .SI(\fifo_MEM[6][7] ), .SE(
        test_se), .CK(W_CLK), .RN(n163), .Q(\fifo_MEM[7][0] ) );
  SDFFRQX2M \fifo_MEM_reg[3][7]  ( .D(n116), .SI(\fifo_MEM[3][6] ), .SE(
        test_se), .CK(W_CLK), .RN(n165), .Q(\fifo_MEM[3][7] ) );
  SDFFRQX2M \fifo_MEM_reg[3][6]  ( .D(n115), .SI(\fifo_MEM[3][5] ), .SE(
        test_se), .CK(W_CLK), .RN(n165), .Q(\fifo_MEM[3][6] ) );
  SDFFRQX2M \fifo_MEM_reg[3][5]  ( .D(n114), .SI(\fifo_MEM[3][4] ), .SE(
        test_se), .CK(W_CLK), .RN(n165), .Q(\fifo_MEM[3][5] ) );
  SDFFRQX2M \fifo_MEM_reg[3][4]  ( .D(n113), .SI(\fifo_MEM[3][3] ), .SE(
        test_se), .CK(W_CLK), .RN(n165), .Q(\fifo_MEM[3][4] ) );
  SDFFRQX2M \fifo_MEM_reg[3][3]  ( .D(n112), .SI(\fifo_MEM[3][2] ), .SE(
        test_se), .CK(W_CLK), .RN(n166), .Q(\fifo_MEM[3][3] ) );
  SDFFRQX2M \fifo_MEM_reg[3][2]  ( .D(n111), .SI(\fifo_MEM[3][1] ), .SE(
        test_se), .CK(W_CLK), .RN(n166), .Q(\fifo_MEM[3][2] ) );
  SDFFRQX2M \fifo_MEM_reg[3][1]  ( .D(n110), .SI(\fifo_MEM[3][0] ), .SE(
        test_se), .CK(W_CLK), .RN(n166), .Q(\fifo_MEM[3][1] ) );
  SDFFRQX2M \fifo_MEM_reg[3][0]  ( .D(n109), .SI(\fifo_MEM[2][7] ), .SE(
        test_se), .CK(W_CLK), .RN(n166), .Q(\fifo_MEM[3][0] ) );
  SDFFRQX2M \fifo_MEM_reg[6][7]  ( .D(n140), .SI(\fifo_MEM[6][6] ), .SE(
        test_se), .CK(W_CLK), .RN(n163), .Q(\fifo_MEM[6][7] ) );
  SDFFRQX2M \fifo_MEM_reg[6][6]  ( .D(n139), .SI(\fifo_MEM[6][5] ), .SE(
        test_se), .CK(W_CLK), .RN(n163), .Q(\fifo_MEM[6][6] ) );
  SDFFRQX2M \fifo_MEM_reg[6][5]  ( .D(n138), .SI(\fifo_MEM[6][4] ), .SE(
        test_se), .CK(W_CLK), .RN(n163), .Q(\fifo_MEM[6][5] ) );
  SDFFRQX2M \fifo_MEM_reg[6][4]  ( .D(n137), .SI(\fifo_MEM[6][3] ), .SE(
        test_se), .CK(W_CLK), .RN(n163), .Q(\fifo_MEM[6][4] ) );
  SDFFRQX2M \fifo_MEM_reg[6][3]  ( .D(n136), .SI(\fifo_MEM[6][2] ), .SE(
        test_se), .CK(W_CLK), .RN(n164), .Q(\fifo_MEM[6][3] ) );
  SDFFRQX2M \fifo_MEM_reg[6][2]  ( .D(n135), .SI(\fifo_MEM[6][1] ), .SE(
        test_se), .CK(W_CLK), .RN(n164), .Q(\fifo_MEM[6][2] ) );
  SDFFRQX2M \fifo_MEM_reg[6][1]  ( .D(n134), .SI(\fifo_MEM[6][0] ), .SE(
        test_se), .CK(W_CLK), .RN(n164), .Q(\fifo_MEM[6][1] ) );
  SDFFRQX2M \fifo_MEM_reg[6][0]  ( .D(n133), .SI(\fifo_MEM[5][7] ), .SE(
        test_se), .CK(W_CLK), .RN(n164), .Q(\fifo_MEM[6][0] ) );
  SDFFRQX2M \fifo_MEM_reg[2][7]  ( .D(n108), .SI(\fifo_MEM[2][6] ), .SE(
        test_se), .CK(W_CLK), .RN(n166), .Q(\fifo_MEM[2][7] ) );
  SDFFRQX2M \fifo_MEM_reg[2][6]  ( .D(n107), .SI(\fifo_MEM[2][5] ), .SE(
        test_se), .CK(W_CLK), .RN(n166), .Q(\fifo_MEM[2][6] ) );
  SDFFRQX2M \fifo_MEM_reg[2][5]  ( .D(n106), .SI(\fifo_MEM[2][4] ), .SE(
        test_se), .CK(W_CLK), .RN(n166), .Q(\fifo_MEM[2][5] ) );
  SDFFRQX2M \fifo_MEM_reg[2][4]  ( .D(n105), .SI(\fifo_MEM[2][3] ), .SE(
        test_se), .CK(W_CLK), .RN(n166), .Q(\fifo_MEM[2][4] ) );
  SDFFRQX2M \fifo_MEM_reg[2][3]  ( .D(n104), .SI(\fifo_MEM[2][2] ), .SE(
        test_se), .CK(W_CLK), .RN(n166), .Q(\fifo_MEM[2][3] ) );
  SDFFRQX2M \fifo_MEM_reg[2][2]  ( .D(n103), .SI(\fifo_MEM[2][1] ), .SE(
        test_se), .CK(W_CLK), .RN(n166), .Q(\fifo_MEM[2][2] ) );
  SDFFRQX2M \fifo_MEM_reg[2][1]  ( .D(n102), .SI(\fifo_MEM[2][0] ), .SE(
        test_se), .CK(W_CLK), .RN(n166), .Q(\fifo_MEM[2][1] ) );
  SDFFRQX2M \fifo_MEM_reg[2][0]  ( .D(n101), .SI(\fifo_MEM[1][7] ), .SE(
        test_se), .CK(W_CLK), .RN(n166), .Q(\fifo_MEM[2][0] ) );
  SDFFRQX2M \fifo_MEM_reg[4][7]  ( .D(n124), .SI(\fifo_MEM[4][6] ), .SE(
        test_se), .CK(W_CLK), .RN(n165), .Q(\fifo_MEM[4][7] ) );
  SDFFRQX2M \fifo_MEM_reg[4][6]  ( .D(n123), .SI(\fifo_MEM[4][5] ), .SE(
        test_se), .CK(W_CLK), .RN(n165), .Q(\fifo_MEM[4][6] ) );
  SDFFRQX2M \fifo_MEM_reg[4][5]  ( .D(n122), .SI(\fifo_MEM[4][4] ), .SE(
        test_se), .CK(W_CLK), .RN(n165), .Q(\fifo_MEM[4][5] ) );
  SDFFRQX2M \fifo_MEM_reg[4][4]  ( .D(n121), .SI(\fifo_MEM[4][3] ), .SE(
        test_se), .CK(W_CLK), .RN(n165), .Q(\fifo_MEM[4][4] ) );
  SDFFRQX2M \fifo_MEM_reg[4][3]  ( .D(n120), .SI(\fifo_MEM[4][2] ), .SE(
        test_se), .CK(W_CLK), .RN(n165), .Q(\fifo_MEM[4][3] ) );
  SDFFRQX2M \fifo_MEM_reg[4][2]  ( .D(n119), .SI(\fifo_MEM[4][1] ), .SE(
        test_se), .CK(W_CLK), .RN(n165), .Q(\fifo_MEM[4][2] ) );
  SDFFRQX2M \fifo_MEM_reg[4][1]  ( .D(n118), .SI(\fifo_MEM[4][0] ), .SE(
        test_se), .CK(W_CLK), .RN(n165), .Q(\fifo_MEM[4][1] ) );
  SDFFRQX2M \fifo_MEM_reg[4][0]  ( .D(n117), .SI(\fifo_MEM[3][7] ), .SE(
        test_se), .CK(W_CLK), .RN(n165), .Q(\fifo_MEM[4][0] ) );
  SDFFRQX2M \fifo_MEM_reg[0][7]  ( .D(n92), .SI(\fifo_MEM[0][6] ), .SE(test_se), .CK(W_CLK), .RN(n167), .Q(\fifo_MEM[0][7] ) );
  SDFFRQX2M \fifo_MEM_reg[0][6]  ( .D(n91), .SI(\fifo_MEM[0][5] ), .SE(test_se), .CK(W_CLK), .RN(n167), .Q(\fifo_MEM[0][6] ) );
  SDFFRQX2M \fifo_MEM_reg[0][5]  ( .D(n90), .SI(\fifo_MEM[0][4] ), .SE(test_se), .CK(W_CLK), .RN(n167), .Q(\fifo_MEM[0][5] ) );
  SDFFRQX2M \fifo_MEM_reg[0][4]  ( .D(n89), .SI(\fifo_MEM[0][3] ), .SE(test_se), .CK(W_CLK), .RN(n167), .Q(\fifo_MEM[0][4] ) );
  SDFFRQX2M \fifo_MEM_reg[0][3]  ( .D(n88), .SI(\fifo_MEM[0][2] ), .SE(test_se), .CK(W_CLK), .RN(n168), .Q(\fifo_MEM[0][3] ) );
  SDFFRQX2M \fifo_MEM_reg[0][2]  ( .D(n87), .SI(\fifo_MEM[0][1] ), .SE(test_se), .CK(W_CLK), .RN(n168), .Q(\fifo_MEM[0][2] ) );
  SDFFRQX2M \fifo_MEM_reg[0][1]  ( .D(n86), .SI(\fifo_MEM[0][0] ), .SE(test_se), .CK(W_CLK), .RN(n168), .Q(\fifo_MEM[0][1] ) );
  SDFFRQX2M \fifo_MEM_reg[0][0]  ( .D(n85), .SI(test_si1), .SE(test_se), .CK(
        W_CLK), .RN(n168), .Q(\fifo_MEM[0][0] ) );
  BUFX2M U66 ( .A(n162), .Y(n167) );
  BUFX2M U67 ( .A(n162), .Y(n166) );
  BUFX2M U68 ( .A(n161), .Y(n165) );
  BUFX2M U69 ( .A(n161), .Y(n164) );
  BUFX2M U70 ( .A(n161), .Y(n163) );
  BUFX2M U71 ( .A(n162), .Y(n168) );
  NAND3X2M U72 ( .A(n177), .B(n178), .C(n81), .Y(n80) );
  NAND3X2M U73 ( .A(n177), .B(n178), .C(n76), .Y(n75) );
  BUFX2M U74 ( .A(W_RST), .Y(n162) );
  BUFX2M U75 ( .A(W_RST), .Y(n161) );
  NAND3X2M U76 ( .A(W_adrr[0]), .B(n76), .C(W_adrr[1]), .Y(n79) );
  NAND3X2M U77 ( .A(n76), .B(n178), .C(W_adrr[0]), .Y(n77) );
  NOR2BX2M U78 ( .AN(Wr_en), .B(W_adrr[2]), .Y(n76) );
  BUFX2M U79 ( .A(n82), .Y(n159) );
  NAND3X2M U80 ( .A(W_adrr[0]), .B(n178), .C(n81), .Y(n82) );
  INVX2M U81 ( .A(WR_DATA[0]), .Y(n176) );
  INVX2M U82 ( .A(WR_DATA[1]), .Y(n175) );
  INVX2M U83 ( .A(WR_DATA[2]), .Y(n174) );
  INVX2M U84 ( .A(WR_DATA[3]), .Y(n173) );
  INVX2M U85 ( .A(WR_DATA[4]), .Y(n172) );
  INVX2M U86 ( .A(WR_DATA[5]), .Y(n171) );
  INVX2M U87 ( .A(WR_DATA[6]), .Y(n170) );
  INVX2M U88 ( .A(WR_DATA[7]), .Y(n169) );
  AND2X2M U89 ( .A(W_adrr[2]), .B(Wr_en), .Y(n81) );
  BUFX2M U90 ( .A(n78), .Y(n160) );
  NAND3X2M U91 ( .A(n76), .B(n177), .C(W_adrr[1]), .Y(n78) );
  BUFX2M U92 ( .A(n84), .Y(n157) );
  NAND3X2M U93 ( .A(W_adrr[1]), .B(W_adrr[0]), .C(n81), .Y(n84) );
  BUFX2M U94 ( .A(n83), .Y(n158) );
  NAND3X2M U95 ( .A(W_adrr[1]), .B(n177), .C(n81), .Y(n83) );
  INVX2M U96 ( .A(W_adrr[0]), .Y(n177) );
  INVX2M U97 ( .A(W_adrr[1]), .Y(n178) );
  BUFX2M U98 ( .A(N10), .Y(n155) );
  BUFX2M U99 ( .A(N10), .Y(n156) );
  OAI2BB2X1M U100 ( .B0(n176), .B1(n79), .A0N(\fifo_MEM[3][0] ), .A1N(n79), 
        .Y(n109) );
  OAI2BB2X1M U101 ( .B0(n175), .B1(n79), .A0N(\fifo_MEM[3][1] ), .A1N(n79), 
        .Y(n110) );
  OAI2BB2X1M U102 ( .B0(n174), .B1(n79), .A0N(\fifo_MEM[3][2] ), .A1N(n79), 
        .Y(n111) );
  OAI2BB2X1M U103 ( .B0(n173), .B1(n79), .A0N(\fifo_MEM[3][3] ), .A1N(n79), 
        .Y(n112) );
  OAI2BB2X1M U104 ( .B0(n172), .B1(n79), .A0N(\fifo_MEM[3][4] ), .A1N(n79), 
        .Y(n113) );
  OAI2BB2X1M U105 ( .B0(n171), .B1(n79), .A0N(\fifo_MEM[3][5] ), .A1N(n79), 
        .Y(n114) );
  OAI2BB2X1M U106 ( .B0(n170), .B1(n79), .A0N(\fifo_MEM[3][6] ), .A1N(n79), 
        .Y(n115) );
  OAI2BB2X1M U107 ( .B0(n169), .B1(n79), .A0N(\fifo_MEM[3][7] ), .A1N(n79), 
        .Y(n116) );
  OAI2BB2X1M U108 ( .B0(n176), .B1(n77), .A0N(\fifo_MEM[1][0] ), .A1N(n77), 
        .Y(n93) );
  OAI2BB2X1M U109 ( .B0(n175), .B1(n77), .A0N(\fifo_MEM[1][1] ), .A1N(n77), 
        .Y(n94) );
  OAI2BB2X1M U110 ( .B0(n174), .B1(n77), .A0N(\fifo_MEM[1][2] ), .A1N(n77), 
        .Y(n95) );
  OAI2BB2X1M U111 ( .B0(n173), .B1(n77), .A0N(\fifo_MEM[1][3] ), .A1N(n77), 
        .Y(n96) );
  OAI2BB2X1M U112 ( .B0(n172), .B1(n77), .A0N(\fifo_MEM[1][4] ), .A1N(n77), 
        .Y(n97) );
  OAI2BB2X1M U113 ( .B0(n171), .B1(n77), .A0N(\fifo_MEM[1][5] ), .A1N(n77), 
        .Y(n98) );
  OAI2BB2X1M U114 ( .B0(n170), .B1(n77), .A0N(\fifo_MEM[1][6] ), .A1N(n77), 
        .Y(n99) );
  OAI2BB2X1M U115 ( .B0(n169), .B1(n77), .A0N(\fifo_MEM[1][7] ), .A1N(n77), 
        .Y(n100) );
  OAI2BB2X1M U116 ( .B0(n75), .B1(n176), .A0N(\fifo_MEM[0][0] ), .A1N(n75), 
        .Y(n85) );
  OAI2BB2X1M U117 ( .B0(n75), .B1(n175), .A0N(\fifo_MEM[0][1] ), .A1N(n75), 
        .Y(n86) );
  OAI2BB2X1M U118 ( .B0(n75), .B1(n174), .A0N(\fifo_MEM[0][2] ), .A1N(n75), 
        .Y(n87) );
  OAI2BB2X1M U119 ( .B0(n75), .B1(n173), .A0N(\fifo_MEM[0][3] ), .A1N(n75), 
        .Y(n88) );
  OAI2BB2X1M U120 ( .B0(n75), .B1(n172), .A0N(\fifo_MEM[0][4] ), .A1N(n75), 
        .Y(n89) );
  OAI2BB2X1M U121 ( .B0(n75), .B1(n171), .A0N(\fifo_MEM[0][5] ), .A1N(n75), 
        .Y(n90) );
  OAI2BB2X1M U122 ( .B0(n75), .B1(n170), .A0N(\fifo_MEM[0][6] ), .A1N(n75), 
        .Y(n91) );
  OAI2BB2X1M U123 ( .B0(n75), .B1(n169), .A0N(\fifo_MEM[0][7] ), .A1N(n75), 
        .Y(n92) );
  OAI2BB2X1M U124 ( .B0(n176), .B1(n80), .A0N(\fifo_MEM[4][0] ), .A1N(n80), 
        .Y(n117) );
  OAI2BB2X1M U125 ( .B0(n175), .B1(n80), .A0N(\fifo_MEM[4][1] ), .A1N(n80), 
        .Y(n118) );
  OAI2BB2X1M U126 ( .B0(n174), .B1(n80), .A0N(\fifo_MEM[4][2] ), .A1N(n80), 
        .Y(n119) );
  OAI2BB2X1M U127 ( .B0(n173), .B1(n80), .A0N(\fifo_MEM[4][3] ), .A1N(n80), 
        .Y(n120) );
  OAI2BB2X1M U128 ( .B0(n172), .B1(n80), .A0N(\fifo_MEM[4][4] ), .A1N(n80), 
        .Y(n121) );
  OAI2BB2X1M U129 ( .B0(n171), .B1(n80), .A0N(\fifo_MEM[4][5] ), .A1N(n80), 
        .Y(n122) );
  OAI2BB2X1M U130 ( .B0(n170), .B1(n80), .A0N(\fifo_MEM[4][6] ), .A1N(n80), 
        .Y(n123) );
  OAI2BB2X1M U131 ( .B0(n169), .B1(n80), .A0N(\fifo_MEM[4][7] ), .A1N(n80), 
        .Y(n124) );
  OAI2BB2X1M U132 ( .B0(n176), .B1(n160), .A0N(\fifo_MEM[2][0] ), .A1N(n160), 
        .Y(n101) );
  OAI2BB2X1M U133 ( .B0(n175), .B1(n160), .A0N(\fifo_MEM[2][1] ), .A1N(n160), 
        .Y(n102) );
  OAI2BB2X1M U134 ( .B0(n174), .B1(n160), .A0N(\fifo_MEM[2][2] ), .A1N(n160), 
        .Y(n103) );
  OAI2BB2X1M U135 ( .B0(n173), .B1(n160), .A0N(\fifo_MEM[2][3] ), .A1N(n160), 
        .Y(n104) );
  OAI2BB2X1M U136 ( .B0(n172), .B1(n160), .A0N(\fifo_MEM[2][4] ), .A1N(n160), 
        .Y(n105) );
  OAI2BB2X1M U137 ( .B0(n171), .B1(n160), .A0N(\fifo_MEM[2][5] ), .A1N(n160), 
        .Y(n106) );
  OAI2BB2X1M U138 ( .B0(n170), .B1(n160), .A0N(\fifo_MEM[2][6] ), .A1N(n160), 
        .Y(n107) );
  OAI2BB2X1M U139 ( .B0(n169), .B1(n160), .A0N(\fifo_MEM[2][7] ), .A1N(n160), 
        .Y(n108) );
  OAI2BB2X1M U140 ( .B0(n176), .B1(n159), .A0N(\fifo_MEM[5][0] ), .A1N(n159), 
        .Y(n125) );
  OAI2BB2X1M U141 ( .B0(n175), .B1(n159), .A0N(\fifo_MEM[5][1] ), .A1N(n159), 
        .Y(n126) );
  OAI2BB2X1M U142 ( .B0(n174), .B1(n159), .A0N(\fifo_MEM[5][2] ), .A1N(n159), 
        .Y(n127) );
  OAI2BB2X1M U143 ( .B0(n173), .B1(n159), .A0N(\fifo_MEM[5][3] ), .A1N(n159), 
        .Y(n128) );
  OAI2BB2X1M U144 ( .B0(n172), .B1(n159), .A0N(\fifo_MEM[5][4] ), .A1N(n159), 
        .Y(n129) );
  OAI2BB2X1M U145 ( .B0(n171), .B1(n159), .A0N(\fifo_MEM[5][5] ), .A1N(n159), 
        .Y(n130) );
  OAI2BB2X1M U146 ( .B0(n170), .B1(n159), .A0N(\fifo_MEM[5][6] ), .A1N(n159), 
        .Y(n131) );
  OAI2BB2X1M U147 ( .B0(n169), .B1(n159), .A0N(\fifo_MEM[5][7] ), .A1N(n159), 
        .Y(n132) );
  OAI2BB2X1M U148 ( .B0(n176), .B1(n158), .A0N(\fifo_MEM[6][0] ), .A1N(n158), 
        .Y(n133) );
  OAI2BB2X1M U149 ( .B0(n175), .B1(n158), .A0N(\fifo_MEM[6][1] ), .A1N(n158), 
        .Y(n134) );
  OAI2BB2X1M U150 ( .B0(n174), .B1(n158), .A0N(\fifo_MEM[6][2] ), .A1N(n158), 
        .Y(n135) );
  OAI2BB2X1M U151 ( .B0(n173), .B1(n158), .A0N(\fifo_MEM[6][3] ), .A1N(n158), 
        .Y(n136) );
  OAI2BB2X1M U152 ( .B0(n172), .B1(n158), .A0N(\fifo_MEM[6][4] ), .A1N(n158), 
        .Y(n137) );
  OAI2BB2X1M U153 ( .B0(n171), .B1(n158), .A0N(\fifo_MEM[6][5] ), .A1N(n158), 
        .Y(n138) );
  OAI2BB2X1M U154 ( .B0(n170), .B1(n158), .A0N(\fifo_MEM[6][6] ), .A1N(n158), 
        .Y(n139) );
  OAI2BB2X1M U155 ( .B0(n169), .B1(n158), .A0N(\fifo_MEM[6][7] ), .A1N(n158), 
        .Y(n140) );
  OAI2BB2X1M U156 ( .B0(n176), .B1(n157), .A0N(\fifo_MEM[7][0] ), .A1N(n157), 
        .Y(n141) );
  OAI2BB2X1M U157 ( .B0(n175), .B1(n157), .A0N(\fifo_MEM[7][1] ), .A1N(n157), 
        .Y(n142) );
  OAI2BB2X1M U158 ( .B0(n174), .B1(n157), .A0N(\fifo_MEM[7][2] ), .A1N(n157), 
        .Y(n143) );
  OAI2BB2X1M U159 ( .B0(n173), .B1(n157), .A0N(\fifo_MEM[7][3] ), .A1N(n157), 
        .Y(n144) );
  OAI2BB2X1M U160 ( .B0(n172), .B1(n157), .A0N(\fifo_MEM[7][4] ), .A1N(n157), 
        .Y(n145) );
  OAI2BB2X1M U161 ( .B0(n171), .B1(n157), .A0N(\fifo_MEM[7][5] ), .A1N(n157), 
        .Y(n146) );
  OAI2BB2X1M U162 ( .B0(n170), .B1(n157), .A0N(\fifo_MEM[7][6] ), .A1N(n157), 
        .Y(n147) );
  OAI2BB2X1M U163 ( .B0(n169), .B1(n157), .A0N(\fifo_MEM[7][7] ), .A1N(n157), 
        .Y(n148) );
  MX2X2M U164 ( .A(n154), .B(n153), .S0(N12), .Y(RD_DATA[7]) );
  MX4X1M U165 ( .A(\fifo_MEM[0][7] ), .B(\fifo_MEM[1][7] ), .C(
        \fifo_MEM[2][7] ), .D(\fifo_MEM[3][7] ), .S0(n156), .S1(N11), .Y(n154)
         );
  MX4X1M U166 ( .A(\fifo_MEM[4][7] ), .B(\fifo_MEM[5][7] ), .C(
        \fifo_MEM[6][7] ), .D(\fifo_MEM[7][7] ), .S0(n155), .S1(N11), .Y(n153)
         );
  MX2X2M U167 ( .A(n152), .B(n151), .S0(N12), .Y(RD_DATA[6]) );
  MX4X1M U168 ( .A(\fifo_MEM[0][6] ), .B(\fifo_MEM[1][6] ), .C(
        \fifo_MEM[2][6] ), .D(\fifo_MEM[3][6] ), .S0(n156), .S1(N11), .Y(n152)
         );
  MX4X1M U169 ( .A(\fifo_MEM[4][6] ), .B(\fifo_MEM[5][6] ), .C(
        \fifo_MEM[6][6] ), .D(\fifo_MEM[7][6] ), .S0(n155), .S1(N11), .Y(n151)
         );
  MX2X2M U170 ( .A(n150), .B(n149), .S0(N12), .Y(RD_DATA[5]) );
  MX4X1M U171 ( .A(\fifo_MEM[0][5] ), .B(\fifo_MEM[1][5] ), .C(
        \fifo_MEM[2][5] ), .D(\fifo_MEM[3][5] ), .S0(n156), .S1(N11), .Y(n150)
         );
  MX4X1M U172 ( .A(\fifo_MEM[4][5] ), .B(\fifo_MEM[5][5] ), .C(
        \fifo_MEM[6][5] ), .D(\fifo_MEM[7][5] ), .S0(n155), .S1(N11), .Y(n149)
         );
  MX2X2M U173 ( .A(n74), .B(n73), .S0(N12), .Y(RD_DATA[4]) );
  MX4X1M U174 ( .A(\fifo_MEM[0][4] ), .B(\fifo_MEM[1][4] ), .C(
        \fifo_MEM[2][4] ), .D(\fifo_MEM[3][4] ), .S0(n156), .S1(N11), .Y(n74)
         );
  MX4X1M U175 ( .A(\fifo_MEM[4][4] ), .B(\fifo_MEM[5][4] ), .C(
        \fifo_MEM[6][4] ), .D(\fifo_MEM[7][4] ), .S0(n155), .S1(N11), .Y(n73)
         );
  MX2X2M U176 ( .A(n72), .B(n71), .S0(N12), .Y(RD_DATA[3]) );
  MX4X1M U177 ( .A(\fifo_MEM[0][3] ), .B(\fifo_MEM[1][3] ), .C(
        \fifo_MEM[2][3] ), .D(\fifo_MEM[3][3] ), .S0(n156), .S1(N11), .Y(n72)
         );
  MX4X1M U178 ( .A(\fifo_MEM[4][3] ), .B(\fifo_MEM[5][3] ), .C(
        \fifo_MEM[6][3] ), .D(\fifo_MEM[7][3] ), .S0(n155), .S1(N11), .Y(n71)
         );
  MX2X2M U179 ( .A(n70), .B(n69), .S0(N12), .Y(RD_DATA[2]) );
  MX4X1M U180 ( .A(\fifo_MEM[0][2] ), .B(\fifo_MEM[1][2] ), .C(
        \fifo_MEM[2][2] ), .D(\fifo_MEM[3][2] ), .S0(n156), .S1(N11), .Y(n70)
         );
  MX4X1M U181 ( .A(\fifo_MEM[4][2] ), .B(\fifo_MEM[5][2] ), .C(
        \fifo_MEM[6][2] ), .D(\fifo_MEM[7][2] ), .S0(n155), .S1(N11), .Y(n69)
         );
  MX2X2M U182 ( .A(n68), .B(n67), .S0(N12), .Y(RD_DATA[1]) );
  MX4X1M U183 ( .A(\fifo_MEM[0][1] ), .B(\fifo_MEM[1][1] ), .C(
        \fifo_MEM[2][1] ), .D(\fifo_MEM[3][1] ), .S0(n156), .S1(N11), .Y(n68)
         );
  MX4X1M U184 ( .A(\fifo_MEM[4][1] ), .B(\fifo_MEM[5][1] ), .C(
        \fifo_MEM[6][1] ), .D(\fifo_MEM[7][1] ), .S0(n155), .S1(N11), .Y(n67)
         );
  MX2X2M U185 ( .A(n66), .B(n65), .S0(N12), .Y(RD_DATA[0]) );
  MX4X1M U186 ( .A(\fifo_MEM[0][0] ), .B(\fifo_MEM[1][0] ), .C(
        \fifo_MEM[2][0] ), .D(\fifo_MEM[3][0] ), .S0(n156), .S1(N11), .Y(n66)
         );
  MX4X1M U187 ( .A(\fifo_MEM[4][0] ), .B(\fifo_MEM[5][0] ), .C(
        \fifo_MEM[6][0] ), .D(\fifo_MEM[7][0] ), .S0(n155), .S1(N11), .Y(n65)
         );
endmodule


module Wd_ptr_test_1 ( winc, wfull, wclk, wrst_n, waddr, wptr, test_si, 
        test_se );
  output [2:0] waddr;
  output [3:0] wptr;
  input winc, wfull, wclk, wrst_n, test_si, test_se;
  wire   n1, n2, n3, n4, n6, n8, n10, n12;

  SDFFRQX2M \wptr_reg[0]  ( .D(n12), .SI(test_si), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(wptr[0]) );
  SDFFRQX2M \wptr_reg[1]  ( .D(n10), .SI(waddr[0]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(wptr[1]) );
  SDFFRQX2M \wptr_reg[2]  ( .D(n8), .SI(waddr[1]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(wptr[2]) );
  SDFFRQX2M \wptr_reg[3]  ( .D(n6), .SI(waddr[2]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(wptr[3]) );
  NAND2BX2M U3 ( .AN(wfull), .B(winc), .Y(n4) );
  NOR2BX2M U4 ( .AN(wptr[0]), .B(n4), .Y(n3) );
  NAND2X2M U5 ( .A(wptr[1]), .B(n3), .Y(n2) );
  XNOR2X2M U6 ( .A(wptr[2]), .B(n2), .Y(n8) );
  XNOR2X2M U7 ( .A(wptr[0]), .B(n4), .Y(n12) );
  CLKXOR2X2M U8 ( .A(wptr[1]), .B(n3), .Y(n10) );
  CLKXOR2X2M U9 ( .A(wptr[3]), .B(n1), .Y(n6) );
  NOR2BX2M U10 ( .AN(wptr[2]), .B(n2), .Y(n1) );
  BUFX2M U15 ( .A(wptr[2]), .Y(waddr[2]) );
  BUFX2M U16 ( .A(wptr[1]), .Y(waddr[1]) );
  BUFX2M U17 ( .A(wptr[0]), .Y(waddr[0]) );
endmodule


module BINARY_TO_GRAY_0 ( bin_pointer, gray_pointer );
  input [3:0] bin_pointer;
  output [3:0] gray_pointer;


  CLKXOR2X2M U3 ( .A(bin_pointer[1]), .B(bin_pointer[0]), .Y(gray_pointer[0])
         );
  CLKXOR2X2M U4 ( .A(bin_pointer[2]), .B(bin_pointer[1]), .Y(gray_pointer[1])
         );
  CLKXOR2X2M U5 ( .A(bin_pointer[3]), .B(bin_pointer[2]), .Y(gray_pointer[2])
         );
  BUFX2M U6 ( .A(bin_pointer[3]), .Y(gray_pointer[3]) );
endmodule


module Wd_ptr_GREY_test_1 ( winc, wclk, wrst_n, wq2_rptr, wfull, waddr, 
        gray_wptr, test_si, test_so, test_se );
  input [3:0] wq2_rptr;
  output [2:0] waddr;
  output [3:0] gray_wptr;
  input winc, wclk, wrst_n, test_si, test_se;
  output wfull, test_so;
  wire   n1, n2, n3, n4;
  wire   [3:0] wptr;
  assign test_so = wptr[3];

  NOR4X1M U1 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(wfull) );
  XNOR2X2M U2 ( .A(wq2_rptr[3]), .B(gray_wptr[3]), .Y(n2) );
  XNOR2X2M U3 ( .A(wq2_rptr[2]), .B(gray_wptr[2]), .Y(n1) );
  CLKXOR2X2M U4 ( .A(wq2_rptr[0]), .B(gray_wptr[0]), .Y(n3) );
  CLKXOR2X2M U5 ( .A(wq2_rptr[1]), .B(gray_wptr[1]), .Y(n4) );
  Wd_ptr_test_1 Wd_ptr_u0 ( .winc(winc), .wfull(wfull), .wclk(wclk), .wrst_n(
        wrst_n), .waddr(waddr), .wptr(wptr), .test_si(test_si), .test_se(
        test_se) );
  BINARY_TO_GRAY_0 w_ptr_gray ( .bin_pointer(wptr), .gray_pointer(gray_wptr)
         );
endmodule


module Rd_ptr_test_1 ( rinc, rclk, rrst_n, rempty, raddr, rptr, test_si, 
        test_se );
  output [2:0] raddr;
  output [3:0] rptr;
  input rinc, rclk, rrst_n, rempty, test_si, test_se;
  wire   n1, n2, n3, n4, n6, n8, n10, n12;

  SDFFRQX2M \rptr_reg[0]  ( .D(n12), .SI(test_si), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(rptr[0]) );
  SDFFRQX2M \rptr_reg[1]  ( .D(n10), .SI(raddr[0]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(rptr[1]) );
  SDFFRQX2M \rptr_reg[2]  ( .D(n8), .SI(raddr[1]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(rptr[2]) );
  SDFFRQX2M \rptr_reg[3]  ( .D(n6), .SI(raddr[2]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(rptr[3]) );
  NOR2BX2M U3 ( .AN(rptr[0]), .B(n4), .Y(n3) );
  NAND2X2M U4 ( .A(rptr[1]), .B(n3), .Y(n2) );
  XNOR2X2M U5 ( .A(rptr[2]), .B(n2), .Y(n8) );
  XNOR2X2M U6 ( .A(rptr[0]), .B(n4), .Y(n12) );
  NAND2BX2M U7 ( .AN(rempty), .B(rinc), .Y(n4) );
  CLKXOR2X2M U8 ( .A(rptr[1]), .B(n3), .Y(n10) );
  CLKXOR2X2M U9 ( .A(rptr[3]), .B(n1), .Y(n6) );
  NOR2BX2M U10 ( .AN(rptr[2]), .B(n2), .Y(n1) );
  BUFX2M U15 ( .A(rptr[2]), .Y(raddr[2]) );
  BUFX2M U16 ( .A(rptr[1]), .Y(raddr[1]) );
  BUFX2M U17 ( .A(rptr[0]), .Y(raddr[0]) );
endmodule


module BINARY_TO_GRAY_1 ( bin_pointer, gray_pointer );
  input [3:0] bin_pointer;
  output [3:0] gray_pointer;


  CLKXOR2X2M U3 ( .A(bin_pointer[1]), .B(bin_pointer[0]), .Y(gray_pointer[0])
         );
  CLKXOR2X2M U4 ( .A(bin_pointer[2]), .B(bin_pointer[1]), .Y(gray_pointer[1])
         );
  CLKXOR2X2M U5 ( .A(bin_pointer[3]), .B(bin_pointer[2]), .Y(gray_pointer[2])
         );
  BUFX2M U6 ( .A(bin_pointer[3]), .Y(gray_pointer[3]) );
endmodule


module Rd_ptr_GREY_test_1 ( rinc, rclk, rrst_n, rq2_wptr, rempty, raddr, 
        gray_rptr, test_si, test_so, test_se );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] gray_rptr;
  input rinc, rclk, rrst_n, test_si, test_se;
  output rempty, test_so;
  wire   n1, n2, n3, n4;
  wire   [3:0] rptr;
  assign test_so = rptr[3];

  NOR4X1M U1 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(rempty) );
  CLKXOR2X2M U2 ( .A(rq2_wptr[3]), .B(gray_rptr[3]), .Y(n2) );
  CLKXOR2X2M U3 ( .A(rq2_wptr[2]), .B(gray_rptr[2]), .Y(n1) );
  CLKXOR2X2M U4 ( .A(rq2_wptr[0]), .B(gray_rptr[0]), .Y(n3) );
  CLKXOR2X2M U5 ( .A(rq2_wptr[1]), .B(gray_rptr[1]), .Y(n4) );
  Rd_ptr_test_1 Rd_ptr_u0 ( .rinc(rinc), .rclk(rclk), .rrst_n(rrst_n), 
        .rempty(rempty), .raddr(raddr), .rptr(rptr), .test_si(test_si), 
        .test_se(test_se) );
  BINARY_TO_GRAY_1 rd_ptr_gray ( .bin_pointer(rptr), .gray_pointer(gray_rptr)
         );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 ( ASYNC, CLK, RST, SYNC, test_si, 
        test_so, test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  output test_so;
  wire   \SYN_FLOPS[3][1] , \SYN_FLOPS[3][0] , \SYN_FLOPS[2][1] ,
         \SYN_FLOPS[2][0] , \SYN_FLOPS[1][1] , \SYN_FLOPS[1][0] ,
         \SYN_FLOPS[0][1] , \SYN_FLOPS[0][0] ;
  assign test_so = \SYN_FLOPS[3][1] ;

  SDFFRQX2M \SYNC_reg[3]  ( .D(\SYN_FLOPS[3][0] ), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \SYNC_reg[2]  ( .D(\SYN_FLOPS[2][0] ), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \SYNC_reg[1]  ( .D(\SYN_FLOPS[1][0] ), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \SYNC_reg[0]  ( .D(\SYN_FLOPS[0][0] ), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \SYN_FLOPS_reg[3][1]  ( .D(ASYNC[3]), .SI(\SYN_FLOPS[3][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYN_FLOPS[3][1] ) );
  SDFFRQX2M \SYN_FLOPS_reg[3][0]  ( .D(\SYN_FLOPS[3][1] ), .SI(
        \SYN_FLOPS[2][1] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        \SYN_FLOPS[3][0] ) );
  SDFFRQX2M \SYN_FLOPS_reg[2][1]  ( .D(ASYNC[2]), .SI(\SYN_FLOPS[2][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYN_FLOPS[2][1] ) );
  SDFFRQX2M \SYN_FLOPS_reg[2][0]  ( .D(\SYN_FLOPS[2][1] ), .SI(
        \SYN_FLOPS[1][1] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        \SYN_FLOPS[2][0] ) );
  SDFFRQX2M \SYN_FLOPS_reg[1][1]  ( .D(ASYNC[1]), .SI(\SYN_FLOPS[1][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYN_FLOPS[1][1] ) );
  SDFFRQX2M \SYN_FLOPS_reg[1][0]  ( .D(\SYN_FLOPS[1][1] ), .SI(
        \SYN_FLOPS[0][1] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        \SYN_FLOPS[1][0] ) );
  SDFFRQX2M \SYN_FLOPS_reg[0][1]  ( .D(ASYNC[0]), .SI(\SYN_FLOPS[0][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYN_FLOPS[0][1] ) );
  SDFFRQX2M \SYN_FLOPS_reg[0][0]  ( .D(\SYN_FLOPS[0][1] ), .SI(SYNC[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYN_FLOPS[0][0] ) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 ( ASYNC, CLK, RST, SYNC, test_si, 
        test_so, test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  output test_so;
  wire   \SYN_FLOPS[3][1] , \SYN_FLOPS[3][0] , \SYN_FLOPS[2][1] ,
         \SYN_FLOPS[2][0] , \SYN_FLOPS[1][1] , \SYN_FLOPS[1][0] ,
         \SYN_FLOPS[0][1] , \SYN_FLOPS[0][0] ;
  assign test_so = \SYN_FLOPS[3][1] ;

  SDFFRQX2M \SYNC_reg[3]  ( .D(\SYN_FLOPS[3][0] ), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \SYNC_reg[2]  ( .D(\SYN_FLOPS[2][0] ), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \SYNC_reg[1]  ( .D(\SYN_FLOPS[1][0] ), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \SYNC_reg[0]  ( .D(\SYN_FLOPS[0][0] ), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \SYN_FLOPS_reg[3][1]  ( .D(ASYNC[3]), .SI(\SYN_FLOPS[3][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYN_FLOPS[3][1] ) );
  SDFFRQX2M \SYN_FLOPS_reg[3][0]  ( .D(\SYN_FLOPS[3][1] ), .SI(
        \SYN_FLOPS[2][1] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        \SYN_FLOPS[3][0] ) );
  SDFFRQX2M \SYN_FLOPS_reg[2][1]  ( .D(ASYNC[2]), .SI(\SYN_FLOPS[2][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYN_FLOPS[2][1] ) );
  SDFFRQX2M \SYN_FLOPS_reg[2][0]  ( .D(\SYN_FLOPS[2][1] ), .SI(
        \SYN_FLOPS[1][1] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        \SYN_FLOPS[2][0] ) );
  SDFFRQX2M \SYN_FLOPS_reg[1][1]  ( .D(ASYNC[1]), .SI(\SYN_FLOPS[1][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYN_FLOPS[1][1] ) );
  SDFFRQX2M \SYN_FLOPS_reg[1][0]  ( .D(\SYN_FLOPS[1][1] ), .SI(
        \SYN_FLOPS[0][1] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(
        \SYN_FLOPS[1][0] ) );
  SDFFRQX2M \SYN_FLOPS_reg[0][1]  ( .D(ASYNC[0]), .SI(\SYN_FLOPS[0][0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYN_FLOPS[0][1] ) );
  SDFFRQX2M \SYN_FLOPS_reg[0][0]  ( .D(\SYN_FLOPS[0][1] ), .SI(SYNC[3]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\SYN_FLOPS[0][0] ) );
endmodule


module FIFO_TOP_DATA_WIDTH8_pointer_width4_test_1 ( W_CLK, W_RST, W_INC, R_CLK, 
        R_RST, R_INC, WR_DATA, FULL, RD_DATA, EMPTY, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC, test_si2, test_si1, test_se;
  output FULL, EMPTY, test_so2, test_so1;
  wire   Wr_en, n1, n2, n4, n5, n7, n8;
  wire   [2:0] W_adrr;
  wire   [2:0] R_addr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] gray_wptr;
  wire   [3:0] rq2_wptr;
  wire   [3:0] gray_rptr;

  NOR2BX2M U1 ( .AN(W_INC), .B(FULL), .Y(Wr_en) );
  INVX2M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(W_RST), .Y(n2) );
  FIFO_MEMORY_test_1 u0_FIFO_MEM ( .WR_DATA(WR_DATA), .Wr_en(Wr_en), .W_CLK(
        W_CLK), .W_RST(n1), .W_adrr(W_adrr), .R_addr(R_addr), .RD_DATA(RD_DATA), .test_si2(test_si2), .test_si1(n7), .test_so2(n5), .test_so1(test_so1), 
        .test_se(test_se) );
  Wd_ptr_GREY_test_1 u1_Wd_PTR ( .winc(W_INC), .wclk(W_CLK), .wrst_n(n1), 
        .wq2_rptr(wq2_rptr), .wfull(FULL), .waddr(W_adrr), .gray_wptr(
        gray_wptr), .test_si(n5), .test_so(n4), .test_se(test_se) );
  Rd_ptr_GREY_test_1 u2_Rd_PTR ( .rinc(R_INC), .rclk(R_CLK), .rrst_n(R_RST), 
        .rq2_wptr(rq2_wptr), .rempty(EMPTY), .raddr(R_addr), .gray_rptr(
        gray_rptr), .test_si(n4), .test_so(test_so2), .test_se(test_se) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 sync_w2r ( .ASYNC(gray_wptr), .CLK(
        R_CLK), .RST(R_RST), .SYNC(rq2_wptr), .test_si(n8), .test_so(n7), 
        .test_se(test_se) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 sync_r2w ( .ASYNC(gray_rptr), .CLK(
        W_CLK), .RST(n1), .SYNC(wq2_rptr), .test_si(test_si1), .test_so(n8), 
        .test_se(test_se) );
endmodule


module PULSE_GEN_test_1 ( LVL_SIG, CLK, RST, PULSE_SIG, test_si, test_so, 
        test_se );
  input LVL_SIG, CLK, RST, test_si, test_se;
  output PULSE_SIG, test_so;
  wire   PG_FF;
  assign test_so = PG_FF;

  SDFFRQX2M PG_FF_reg ( .D(LVL_SIG), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(PG_FF) );
  NOR2BX2M U4 ( .AN(LVL_SIG), .B(PG_FF), .Y(PULSE_SIG) );
endmodule


module CLK_Divider_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLK_Divider_test_0 ( I_ref_clk, I_rst_n, I_clk_en, I_div_ratio, 
        O_div_clk, test_si, test_so, test_se );
  input [7:0] I_div_ratio;
  input I_ref_clk, I_rst_n, I_clk_en, test_si, test_se;
  output O_div_clk, test_so;
  wire   div_CLK_FF, N8, N22, N23, N24, N25, N26, N27, N28, N29, n21, n23, n25,
         n27, n29, n31, n33, n35, n36, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56;
  wire   [7:0] edge_count;
  assign test_so = n37;

  SDFFRQX2M div_CLK_FF_reg ( .D(n36), .SI(test_si), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(div_CLK_FF) );
  SDFFRQX2M \edge_count_reg[7]  ( .D(n21), .SI(n18), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(edge_count[7]) );
  SDFFRQX2M \edge_count_reg[0]  ( .D(n35), .SI(div_CLK_FF), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(edge_count[0]) );
  SDFFRQX2M \edge_count_reg[4]  ( .D(n27), .SI(edge_count[3]), .SE(test_se), 
        .CK(I_ref_clk), .RN(I_rst_n), .Q(edge_count[4]) );
  SDFFRQX2M \edge_count_reg[6]  ( .D(n23), .SI(edge_count[5]), .SE(test_se), 
        .CK(I_ref_clk), .RN(I_rst_n), .Q(edge_count[6]) );
  SDFFRQX2M \edge_count_reg[2]  ( .D(n31), .SI(n14), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(edge_count[2]) );
  SDFFRQX2M \edge_count_reg[1]  ( .D(n33), .SI(n11), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(edge_count[1]) );
  SDFFRQX2M \edge_count_reg[5]  ( .D(n25), .SI(edge_count[4]), .SE(test_se), 
        .CK(I_ref_clk), .RN(I_rst_n), .Q(edge_count[5]) );
  SDFFRQX2M \edge_count_reg[3]  ( .D(n29), .SI(edge_count[2]), .SE(test_se), 
        .CK(I_ref_clk), .RN(I_rst_n), .Q(edge_count[3]) );
  NOR2BX2M U3 ( .AN(I_clk_en), .B(n55), .Y(N8) );
  MX2X2M U4 ( .A(I_ref_clk), .B(div_CLK_FF), .S0(N8), .Y(O_div_clk) );
  CLKXOR2X2M U5 ( .A(div_CLK_FF), .B(n1), .Y(n36) );
  NOR2BX1M U6 ( .AN(N8), .B(n2), .Y(n1) );
  AOI221XLM U7 ( .A0(n3), .A1(n4), .B0(n5), .B1(n6), .C0(n7), .Y(n2) );
  CLKINVX1M U8 ( .A(n8), .Y(n7) );
  NOR4X1M U9 ( .A(edge_count[7]), .B(edge_count[6]), .C(edge_count[5]), .D(
        edge_count[4]), .Y(n6) );
  NOR4X1M U10 ( .A(edge_count[3]), .B(edge_count[2]), .C(edge_count[1]), .D(
        edge_count[0]), .Y(n5) );
  CLKINVX1M U11 ( .A(n9), .Y(n4) );
  CLKINVX1M U12 ( .A(n10), .Y(n3) );
  MXI2X1M U13 ( .A(n11), .B(n12), .S0(N8), .Y(n35) );
  NOR2X1M U14 ( .A(N22), .B(n13), .Y(n12) );
  OAI2BB2X1M U15 ( .B0(N8), .B1(n14), .A0N(N23), .A1N(n15), .Y(n33) );
  AO2B2X1M U16 ( .B0(N24), .B1(n15), .A0(edge_count[2]), .A1N(N8), .Y(n31) );
  AO2B2X1M U17 ( .B0(N25), .B1(n15), .A0(edge_count[3]), .A1N(N8), .Y(n29) );
  OAI2BB2X1M U18 ( .B0(N8), .B1(n16), .A0N(N26), .A1N(n15), .Y(n27) );
  OAI2BB2X1M U19 ( .B0(N8), .B1(n17), .A0N(N27), .A1N(n15), .Y(n25) );
  OAI2BB2X1M U20 ( .B0(N8), .B1(n18), .A0N(N28), .A1N(n15), .Y(n23) );
  OAI2BB2X1M U21 ( .B0(N8), .B1(n37), .A0N(N29), .A1N(n15), .Y(n21) );
  NOR2BX1M U22 ( .AN(N8), .B(n13), .Y(n15) );
  MXI2X1M U23 ( .A(n8), .B(I_div_ratio[0]), .S0(n38), .Y(n13) );
  NOR2X1M U24 ( .A(n9), .B(n10), .Y(n38) );
  NAND4X1M U25 ( .A(n39), .B(n40), .C(n41), .D(n37), .Y(n10) );
  CLKXOR2X2M U26 ( .A(I_div_ratio[1]), .B(n11), .Y(n41) );
  CLKXOR2X2M U36 ( .A(I_div_ratio[2]), .B(n14), .Y(n40) );
  CLKINVX1M U37 ( .A(edge_count[1]), .Y(n14) );
  XNOR2X1M U38 ( .A(I_div_ratio[3]), .B(edge_count[2]), .Y(n39) );
  NAND4X1M U39 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n9) );
  XNOR2X1M U40 ( .A(I_div_ratio[4]), .B(edge_count[3]), .Y(n45) );
  CLKXOR2X2M U41 ( .A(I_div_ratio[5]), .B(n16), .Y(n44) );
  CLKINVX1M U42 ( .A(edge_count[4]), .Y(n16) );
  CLKXOR2X2M U43 ( .A(I_div_ratio[6]), .B(n17), .Y(n43) );
  CLKINVX1M U44 ( .A(edge_count[5]), .Y(n17) );
  CLKXOR2X2M U45 ( .A(I_div_ratio[7]), .B(n18), .Y(n42) );
  CLKINVX1M U46 ( .A(edge_count[6]), .Y(n18) );
  NAND4X1M U47 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n8) );
  NOR4X1M U48 ( .A(n50), .B(n51), .C(n52), .D(n53), .Y(n49) );
  CLKXOR2X2M U49 ( .A(edge_count[7]), .B(I_div_ratio[7]), .Y(n53) );
  CLKXOR2X2M U50 ( .A(edge_count[6]), .B(I_div_ratio[6]), .Y(n52) );
  CLKXOR2X2M U51 ( .A(edge_count[5]), .B(I_div_ratio[5]), .Y(n51) );
  CLKXOR2X2M U52 ( .A(edge_count[4]), .B(I_div_ratio[4]), .Y(n50) );
  NOR3BX1M U53 ( .AN(I_div_ratio[0]), .B(n54), .C(n11), .Y(n48) );
  CLKINVX1M U54 ( .A(edge_count[0]), .Y(n11) );
  CLKXOR2X2M U55 ( .A(edge_count[1]), .B(I_div_ratio[1]), .Y(n54) );
  XNOR2X1M U56 ( .A(I_div_ratio[2]), .B(edge_count[2]), .Y(n47) );
  XNOR2X1M U57 ( .A(I_div_ratio[3]), .B(edge_count[3]), .Y(n46) );
  CLKINVX1M U58 ( .A(edge_count[7]), .Y(n37) );
  NOR4BX1M U59 ( .AN(n56), .B(I_div_ratio[2]), .C(I_div_ratio[3]), .D(
        I_div_ratio[1]), .Y(n55) );
  NOR4X1M U60 ( .A(I_div_ratio[7]), .B(I_div_ratio[6]), .C(I_div_ratio[5]), 
        .D(I_div_ratio[4]), .Y(n56) );
  CLK_Divider_0_DW01_inc_0 r75 ( .A(edge_count), .SUM({N29, N28, N27, N26, N25, 
        N24, N23, N22}) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NAND4BX1M U11 ( .AN(IN[3]), .B(IN[4]), .C(n16), .D(n17), .Y(n7) );
  NOR3X2M U12 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NAND4BX1M U13 ( .AN(IN[4]), .B(IN[3]), .C(n16), .D(n17), .Y(n6) );
  NOR3X2M U14 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NOR4X1M U15 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U16 ( .A(n14), .B(n15), .C(IN[2]), .Y(n5) );
  OAI211X2M U17 ( .A0(n8), .A1(n9), .B0(n14), .C0(n15), .Y(OUT[0]) );
  NOR4X1M U18 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n16), .Y(n8) );
  NAND2X2M U19 ( .A(n7), .B(n6), .Y(n9) );
  INVX2M U20 ( .A(IN[2]), .Y(n16) );
  INVX2M U21 ( .A(IN[1]), .Y(n15) );
  INVX2M U22 ( .A(IN[0]), .Y(n14) );
  INVX2M U23 ( .A(IN[5]), .Y(n17) );
  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
endmodule


module CLK_Divider_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLK_Divider_test_1 ( I_ref_clk, I_rst_n, I_clk_en, I_div_ratio, 
        O_div_clk, test_si, test_so, test_se );
  input [7:0] I_div_ratio;
  input I_ref_clk, I_rst_n, I_clk_en, test_si, test_se;
  output O_div_clk, test_so;
  wire   div_CLK_FF, N8, N22, N23, N24, N25, N26, N27, N28, N29, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n60, n62, n64, n66, n68, n70,
         n72;
  wire   [7:0] edge_count;
  assign test_so = n37;

  SDFFRQX2M div_CLK_FF_reg ( .D(n57), .SI(test_si), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(div_CLK_FF) );
  SDFFRQX2M \edge_count_reg[7]  ( .D(n72), .SI(n18), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(edge_count[7]) );
  SDFFRQX2M \edge_count_reg[0]  ( .D(n58), .SI(div_CLK_FF), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(edge_count[0]) );
  SDFFRQX2M \edge_count_reg[4]  ( .D(n66), .SI(edge_count[3]), .SE(test_se), 
        .CK(I_ref_clk), .RN(I_rst_n), .Q(edge_count[4]) );
  SDFFRQX2M \edge_count_reg[6]  ( .D(n70), .SI(edge_count[5]), .SE(test_se), 
        .CK(I_ref_clk), .RN(I_rst_n), .Q(edge_count[6]) );
  SDFFRQX2M \edge_count_reg[2]  ( .D(n62), .SI(n14), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(edge_count[2]) );
  SDFFRQX2M \edge_count_reg[1]  ( .D(n60), .SI(n11), .SE(test_se), .CK(
        I_ref_clk), .RN(I_rst_n), .Q(edge_count[1]) );
  SDFFRQX2M \edge_count_reg[5]  ( .D(n68), .SI(edge_count[4]), .SE(test_se), 
        .CK(I_ref_clk), .RN(I_rst_n), .Q(edge_count[5]) );
  SDFFRQX2M \edge_count_reg[3]  ( .D(n64), .SI(edge_count[2]), .SE(test_se), 
        .CK(I_ref_clk), .RN(I_rst_n), .Q(edge_count[3]) );
  NOR2BX2M U3 ( .AN(I_clk_en), .B(n55), .Y(N8) );
  MX2X2M U4 ( .A(I_ref_clk), .B(div_CLK_FF), .S0(N8), .Y(O_div_clk) );
  CLKXOR2X2M U5 ( .A(div_CLK_FF), .B(n1), .Y(n57) );
  NOR2BX1M U6 ( .AN(N8), .B(n2), .Y(n1) );
  AOI221XLM U7 ( .A0(n3), .A1(n4), .B0(n5), .B1(n6), .C0(n7), .Y(n2) );
  CLKINVX1M U8 ( .A(n8), .Y(n7) );
  NOR4X1M U9 ( .A(edge_count[7]), .B(edge_count[6]), .C(edge_count[5]), .D(
        edge_count[4]), .Y(n6) );
  NOR4X1M U10 ( .A(edge_count[3]), .B(edge_count[2]), .C(edge_count[1]), .D(
        edge_count[0]), .Y(n5) );
  CLKINVX1M U11 ( .A(n9), .Y(n4) );
  CLKINVX1M U12 ( .A(n10), .Y(n3) );
  MXI2X1M U13 ( .A(n11), .B(n12), .S0(N8), .Y(n58) );
  NOR2X1M U14 ( .A(N22), .B(n13), .Y(n12) );
  OAI2BB2X1M U15 ( .B0(N8), .B1(n14), .A0N(N23), .A1N(n15), .Y(n60) );
  AO2B2X1M U16 ( .B0(N24), .B1(n15), .A0(edge_count[2]), .A1N(N8), .Y(n62) );
  AO2B2X1M U17 ( .B0(N25), .B1(n15), .A0(edge_count[3]), .A1N(N8), .Y(n64) );
  OAI2BB2X1M U18 ( .B0(N8), .B1(n16), .A0N(N26), .A1N(n15), .Y(n66) );
  OAI2BB2X1M U19 ( .B0(N8), .B1(n17), .A0N(N27), .A1N(n15), .Y(n68) );
  OAI2BB2X1M U20 ( .B0(N8), .B1(n18), .A0N(N28), .A1N(n15), .Y(n70) );
  OAI2BB2X1M U21 ( .B0(N8), .B1(n37), .A0N(N29), .A1N(n15), .Y(n72) );
  NOR2BX1M U22 ( .AN(N8), .B(n13), .Y(n15) );
  MXI2X1M U23 ( .A(n8), .B(I_div_ratio[0]), .S0(n38), .Y(n13) );
  NOR2X1M U24 ( .A(n9), .B(n10), .Y(n38) );
  NAND4X1M U25 ( .A(n39), .B(n40), .C(n41), .D(n37), .Y(n10) );
  CLKXOR2X2M U26 ( .A(I_div_ratio[1]), .B(n11), .Y(n41) );
  CLKXOR2X2M U36 ( .A(I_div_ratio[2]), .B(n14), .Y(n40) );
  CLKINVX1M U37 ( .A(edge_count[1]), .Y(n14) );
  XNOR2X1M U38 ( .A(I_div_ratio[3]), .B(edge_count[2]), .Y(n39) );
  NAND4X1M U39 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n9) );
  XNOR2X1M U40 ( .A(I_div_ratio[4]), .B(edge_count[3]), .Y(n45) );
  CLKXOR2X2M U41 ( .A(I_div_ratio[5]), .B(n16), .Y(n44) );
  CLKINVX1M U42 ( .A(edge_count[4]), .Y(n16) );
  CLKXOR2X2M U43 ( .A(I_div_ratio[6]), .B(n17), .Y(n43) );
  CLKINVX1M U44 ( .A(edge_count[5]), .Y(n17) );
  CLKXOR2X2M U45 ( .A(I_div_ratio[7]), .B(n18), .Y(n42) );
  CLKINVX1M U46 ( .A(edge_count[6]), .Y(n18) );
  NAND4X1M U47 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n8) );
  NOR4X1M U48 ( .A(n50), .B(n51), .C(n52), .D(n53), .Y(n49) );
  CLKXOR2X2M U49 ( .A(edge_count[7]), .B(I_div_ratio[7]), .Y(n53) );
  CLKXOR2X2M U50 ( .A(edge_count[6]), .B(I_div_ratio[6]), .Y(n52) );
  CLKXOR2X2M U51 ( .A(edge_count[5]), .B(I_div_ratio[5]), .Y(n51) );
  CLKXOR2X2M U52 ( .A(edge_count[4]), .B(I_div_ratio[4]), .Y(n50) );
  NOR3BX1M U53 ( .AN(I_div_ratio[0]), .B(n54), .C(n11), .Y(n48) );
  CLKINVX1M U54 ( .A(edge_count[0]), .Y(n11) );
  CLKXOR2X2M U55 ( .A(edge_count[1]), .B(I_div_ratio[1]), .Y(n54) );
  XNOR2X1M U56 ( .A(I_div_ratio[2]), .B(edge_count[2]), .Y(n47) );
  XNOR2X1M U57 ( .A(I_div_ratio[3]), .B(edge_count[3]), .Y(n46) );
  CLKINVX1M U58 ( .A(edge_count[7]), .Y(n37) );
  NOR4BX1M U59 ( .AN(n56), .B(I_div_ratio[2]), .C(I_div_ratio[3]), .D(
        I_div_ratio[1]), .Y(n55) );
  NOR4X1M U60 ( .A(I_div_ratio[7]), .B(I_div_ratio[6]), .C(I_div_ratio[5]), 
        .D(I_div_ratio[4]), .Y(n56) );
  CLK_Divider_1_DW01_inc_0 r75 ( .A(edge_count), .SUM({N29, N28, N27, N26, N25, 
        N24, N23, N22}) );
endmodule


module FSM_UART_TX_test_1 ( Data_valid, PAR_EN, SER_DONE, CLK, RST, mux_sel, 
        busy_FF, SER_ENABLE, par_block_EN, test_si, test_se );
  output [1:0] mux_sel;
  input Data_valid, PAR_EN, SER_DONE, CLK, RST, test_si, test_se;
  output busy_FF, SER_ENABLE, par_block_EN;
  wire   busy, n11, n12, n13, n5, n6, n7, n8, n9, n10;
  wire   [2:0] CU_STATE;
  wire   [2:0] NXT_STATE;

  SDFFRQX2M busy_FF_reg ( .D(busy), .SI(n9), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(busy_FF) );
  SDFFRQX2M \CU_STATE_reg[0]  ( .D(NXT_STATE[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(CU_STATE[0]) );
  SDFFRQX2M \CU_STATE_reg[1]  ( .D(NXT_STATE[1]), .SI(n7), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(CU_STATE[1]) );
  SDFFRQX2M \CU_STATE_reg[2]  ( .D(NXT_STATE[2]), .SI(n8), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(CU_STATE[2]) );
  OAI31X1M U7 ( .A0(n5), .A1(n10), .A2(n11), .B0(n13), .Y(NXT_STATE[0]) );
  NAND3X2M U8 ( .A(n7), .B(n8), .C(Data_valid), .Y(n13) );
  OAI21BX1M U9 ( .A0(n10), .A1(n11), .B0N(busy), .Y(NXT_STATE[1]) );
  INVX2M U10 ( .A(SER_DONE), .Y(n5) );
  OAI21X2M U11 ( .A0(n6), .A1(n10), .B0(n11), .Y(mux_sel[1]) );
  NAND2X2M U12 ( .A(n12), .B(n9), .Y(mux_sel[0]) );
  INVX2M U13 ( .A(par_block_EN), .Y(n6) );
  AND2X2M U14 ( .A(n12), .B(n9), .Y(SER_ENABLE) );
  OAI32X1M U15 ( .A0(n7), .A1(CU_STATE[2]), .A2(CU_STATE[1]), .B0(SER_DONE), 
        .B1(n11), .Y(busy) );
  OAI31X1M U16 ( .A0(n5), .A1(PAR_EN), .A2(n11), .B0(n6), .Y(NXT_STATE[2]) );
  NOR3X2M U17 ( .A(n7), .B(CU_STATE[2]), .C(n8), .Y(par_block_EN) );
  XNOR2X2M U18 ( .A(CU_STATE[0]), .B(n8), .Y(n12) );
  NAND3X2M U19 ( .A(n7), .B(n9), .C(CU_STATE[1]), .Y(n11) );
  INVX2M U20 ( .A(CU_STATE[0]), .Y(n7) );
  INVX2M U21 ( .A(CU_STATE[1]), .Y(n8) );
  INVX2M U22 ( .A(CU_STATE[2]), .Y(n9) );
  INVX2M U23 ( .A(PAR_EN), .Y(n10) );
endmodule


module MUX_test_1 ( ser_data, par_bit, RST, CLK, mux_sel, TX_OUT_FF, test_si, 
        test_so, test_se );
  input [1:0] mux_sel;
  input ser_data, par_bit, RST, CLK, test_si, test_se;
  output TX_OUT_FF, test_so;
  wire   n8, TX_OUT, n3, n4, n2, n7;
  assign test_so = n8;

  INVX8M U5 ( .A(n2), .Y(TX_OUT_FF) );
  OAI21X2M U7 ( .A0(n3), .A1(n7), .B0(n4), .Y(TX_OUT) );
  NAND3X2M U8 ( .A(mux_sel[1]), .B(n7), .C(ser_data), .Y(n4) );
  NOR2BX2M U9 ( .AN(mux_sel[1]), .B(par_bit), .Y(n3) );
  INVX2M U10 ( .A(mux_sel[0]), .Y(n7) );
  SDFFSX1M TX_OUT_FF_reg ( .D(TX_OUT), .SI(test_si), .SE(test_se), .CK(CLK), 
        .SN(RST), .Q(n8), .QN(n2) );
endmodule


module PARITY_CALC ( PAR_TYP, Data_Valid, par_EN, CLK, RST, P_DATA, PARITY_BIT
 );
  input [7:0] P_DATA;
  input PAR_TYP, Data_Valid, par_EN, CLK, RST;
  output PARITY_BIT;
  wire   n1, n2, n3, n4, n5;

  AND2X2M U2 ( .A(par_EN), .B(n1), .Y(PARITY_BIT) );
  XOR3XLM U3 ( .A(PAR_TYP), .B(n2), .C(n3), .Y(n1) );
  XOR3XLM U4 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n4), .Y(n3) );
  XOR3XLM U5 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n5), .Y(n2) );
  XNOR2X2M U6 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n5) );
  XNOR2X2M U7 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n4) );
endmodule


module SERILIZER_test_1 ( P_DATA, CLK, RST, ser_en, Data_Valid, ser_data, 
        ser_done, test_se );
  input [7:0] P_DATA;
  input CLK, RST, ser_en, Data_Valid, test_se;
  output ser_data, ser_done;
  wire   N2, N3, N4, \bit_counter[3] , N8, N13, N14, N15, N16, N21, n2, n3, n4,
         n5, n6, n8, n9, n15, n1, n7, n16, n17;
  assign ser_done = N21;

  SDFFRQX2M \bit_counter_reg[3]  ( .D(N16), .SI(N4), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\bit_counter[3] ) );
  SDFFRQX2M ser_data_reg ( .D(n15), .SI(\bit_counter[3] ), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ser_data) );
  SDFFRQX2M \bit_counter_reg[2]  ( .D(N15), .SI(N3), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(N4) );
  SDFFRQX2M \bit_counter_reg[1]  ( .D(N14), .SI(N2), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(N3) );
  SDFFRQX2M \bit_counter_reg[0]  ( .D(N13), .SI(P_DATA[7]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(N2) );
  INVX2M U3 ( .A(ser_en), .Y(n17) );
  OAI21X2M U4 ( .A0(n6), .A1(n16), .B0(n8), .Y(n2) );
  CLKXOR2X2M U5 ( .A(n6), .B(n16), .Y(n3) );
  NOR2X2M U6 ( .A(n17), .B(n6), .Y(N14) );
  NOR3BX2M U7 ( .AN(\bit_counter[3] ), .B(n2), .C(n3), .Y(N21) );
  OAI21X2M U8 ( .A0(N3), .A1(N2), .B0(n8), .Y(n6) );
  NAND2X2M U9 ( .A(N3), .B(N2), .Y(n8) );
  OAI2BB2X1M U10 ( .B0(n9), .B1(n17), .A0N(N4), .A1N(N13), .Y(N15) );
  OA22X2M U11 ( .A0(n8), .A1(N4), .B0(n16), .B1(N3), .Y(n9) );
  NOR2X2M U12 ( .A(n17), .B(N2), .Y(N13) );
  AO22X1M U13 ( .A0(ser_data), .A1(n17), .B0(ser_en), .B1(N8), .Y(n15) );
  MX2X2M U14 ( .A(n7), .B(n1), .S0(N4), .Y(N8) );
  MX4X1M U15 ( .A(P_DATA[0]), .B(P_DATA[1]), .C(P_DATA[2]), .D(P_DATA[3]), 
        .S0(N2), .S1(N3), .Y(n7) );
  MX4X1M U16 ( .A(P_DATA[4]), .B(P_DATA[5]), .C(P_DATA[6]), .D(P_DATA[7]), 
        .S0(N2), .S1(N3), .Y(n1) );
  NOR2X2M U17 ( .A(n4), .B(n17), .Y(N16) );
  CLKXOR2X2M U23 ( .A(n5), .B(\bit_counter[3] ), .Y(n4) );
  NAND2X2M U24 ( .A(n3), .B(n2), .Y(n5) );
  INVX2M U25 ( .A(N4), .Y(n16) );
endmodule


module TOP_TX_UART_test_1 ( P_DATA, DATA_Valid, PAR_EN, PAR_TYP, RST, CLK, 
        TX_OUT, BUSY, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input DATA_Valid, PAR_EN, PAR_TYP, RST, CLK, test_si, test_se;
  output TX_OUT, BUSY, test_so;
  wire   ser_done, PAR_block_EN, ser_en, ser_data, par_bit, n1, n4, n6, n8,
         n10, n12, n14, n16, n18, n2, n19, n20, n21;
  wire   [7:0] P_DATA_ff;
  wire   [1:0] mux_sel;
  assign test_so = ser_data;

  SDFFRQX2M \P_DATA_ff_reg[1]  ( .D(n16), .SI(P_DATA_ff[0]), .SE(test_se), 
        .CK(CLK), .RN(n2), .Q(P_DATA_ff[1]) );
  SDFFRQX2M \P_DATA_ff_reg[0]  ( .D(n18), .SI(n21), .SE(test_se), .CK(CLK), 
        .RN(n2), .Q(P_DATA_ff[0]) );
  SDFFRQX2M \P_DATA_ff_reg[4]  ( .D(n10), .SI(P_DATA_ff[3]), .SE(test_se), 
        .CK(CLK), .RN(n2), .Q(P_DATA_ff[4]) );
  SDFFRQX2M \P_DATA_ff_reg[3]  ( .D(n12), .SI(P_DATA_ff[2]), .SE(test_se), 
        .CK(CLK), .RN(n2), .Q(P_DATA_ff[3]) );
  SDFFRQX2M \P_DATA_ff_reg[7]  ( .D(n4), .SI(P_DATA_ff[6]), .SE(test_se), .CK(
        CLK), .RN(n2), .Q(P_DATA_ff[7]) );
  SDFFRQX2M \P_DATA_ff_reg[2]  ( .D(n14), .SI(P_DATA_ff[1]), .SE(test_se), 
        .CK(CLK), .RN(n2), .Q(P_DATA_ff[2]) );
  SDFFRQX2M \P_DATA_ff_reg[6]  ( .D(n6), .SI(P_DATA_ff[5]), .SE(test_se), .CK(
        CLK), .RN(n2), .Q(P_DATA_ff[6]) );
  SDFFRQX2M \P_DATA_ff_reg[5]  ( .D(n8), .SI(P_DATA_ff[4]), .SE(test_se), .CK(
        CLK), .RN(n2), .Q(P_DATA_ff[5]) );
  INVX2M U2 ( .A(n19), .Y(n2) );
  INVX2M U3 ( .A(RST), .Y(n19) );
  INVX2M U4 ( .A(n1), .Y(n20) );
  NAND2BX2M U5 ( .AN(BUSY), .B(DATA_Valid), .Y(n1) );
  AO22X1M U6 ( .A0(P_DATA_ff[7]), .A1(n1), .B0(P_DATA[7]), .B1(n20), .Y(n4) );
  AO22X1M U7 ( .A0(P_DATA_ff[6]), .A1(n1), .B0(P_DATA[6]), .B1(n20), .Y(n6) );
  AO22X1M U8 ( .A0(P_DATA_ff[5]), .A1(n1), .B0(P_DATA[5]), .B1(n20), .Y(n8) );
  AO22X1M U9 ( .A0(P_DATA_ff[4]), .A1(n1), .B0(P_DATA[4]), .B1(n20), .Y(n10)
         );
  AO22X1M U10 ( .A0(P_DATA_ff[3]), .A1(n1), .B0(P_DATA[3]), .B1(n20), .Y(n12)
         );
  AO22X1M U11 ( .A0(P_DATA_ff[2]), .A1(n1), .B0(P_DATA[2]), .B1(n20), .Y(n14)
         );
  AO22X1M U20 ( .A0(P_DATA_ff[1]), .A1(n1), .B0(P_DATA[1]), .B1(n20), .Y(n16)
         );
  AO22X1M U21 ( .A0(P_DATA_ff[0]), .A1(n1), .B0(P_DATA[0]), .B1(n20), .Y(n18)
         );
  FSM_UART_TX_test_1 FSM_B0 ( .Data_valid(DATA_Valid), .PAR_EN(PAR_EN), 
        .SER_DONE(ser_done), .CLK(CLK), .RST(n2), .mux_sel(mux_sel), .busy_FF(
        BUSY), .SER_ENABLE(ser_en), .par_block_EN(PAR_block_EN), .test_si(
        test_si), .test_se(test_se) );
  MUX_test_1 MUX_B1 ( .ser_data(ser_data), .par_bit(par_bit), .RST(n2), .CLK(
        CLK), .mux_sel(mux_sel), .TX_OUT_FF(TX_OUT), .test_si(BUSY), .test_so(
        n21), .test_se(test_se) );
  PARITY_CALC PARITY_CALC_B2 ( .PAR_TYP(PAR_TYP), .Data_Valid(DATA_Valid), 
        .par_EN(PAR_block_EN), .CLK(CLK), .RST(n2), .P_DATA(P_DATA_ff), 
        .PARITY_BIT(par_bit) );
  SERILIZER_test_1 SERILIZER_B3 ( .P_DATA(P_DATA_ff), .CLK(CLK), .RST(n2), 
        .ser_en(ser_en), .Data_Valid(DATA_Valid), .ser_data(ser_data), 
        .ser_done(ser_done), .test_se(test_se) );
endmodule


module FSM_RX_UART_test_1 ( RX_IN, PAR_En, CLK, RST, par_err, strt_glitch, 
        stp_err, bit_count, edge_count, prescale, dat_samp_en, EDGE_CNT_en, 
        deser_en, data_valid, stp_chk_en, strt_chk_en, par_chk_en, test_si, 
        test_se );
  input [3:0] bit_count;
  input [5:0] edge_count;
  input [5:0] prescale;
  input RX_IN, PAR_En, CLK, RST, par_err, strt_glitch, stp_err, test_si,
         test_se;
  output dat_samp_en, EDGE_CNT_en, deser_en, data_valid, stp_chk_en,
         strt_chk_en, par_chk_en;
  wire   N13, N14, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n1, n2, n3, n4, n5, n6, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n37, n38;
  wire   [2:0] CU_STATE;
  wire   [2:0] NXT_STATE;

  SDFFRQX2M \CU_STATE_reg[0]  ( .D(NXT_STATE[0]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(CU_STATE[0]) );
  SDFFRQX2M \CU_STATE_reg[1]  ( .D(NXT_STATE[1]), .SI(n19), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(CU_STATE[1]) );
  SDFFRQX2M \CU_STATE_reg[2]  ( .D(NXT_STATE[2]), .SI(n37), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(CU_STATE[2]) );
  SDFFRQX2M data_valid_reg ( .D(N14), .SI(CU_STATE[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(data_valid) );
  NOR3X2M U5 ( .A(CU_STATE[0]), .B(CU_STATE[2]), .C(n37), .Y(n27) );
  NOR3X2M U8 ( .A(CU_STATE[1]), .B(CU_STATE[2]), .C(n19), .Y(strt_chk_en) );
  OAI21X2M U9 ( .A0(n35), .A1(n22), .B0(n23), .Y(EDGE_CNT_en) );
  NOR3X2M U10 ( .A(n24), .B(stp_err), .C(RX_IN), .Y(n35) );
  INVX2M U11 ( .A(n26), .Y(n17) );
  NOR2BX2M U12 ( .AN(N13), .B(n20), .Y(deser_en) );
  NOR3X2M U13 ( .A(n24), .B(stp_err), .C(n22), .Y(N14) );
  INVX2M U14 ( .A(n31), .Y(n15) );
  INVX2M U15 ( .A(n30), .Y(n16) );
  NOR3X2M U16 ( .A(par_chk_en), .B(strt_chk_en), .C(n27), .Y(n23) );
  INVX2M U17 ( .A(n27), .Y(n20) );
  NAND3BX2M U18 ( .AN(n21), .B(n22), .C(n23), .Y(dat_samp_en) );
  INVX2M U19 ( .A(par_chk_en), .Y(n18) );
  AOI31X2M U20 ( .A0(n14), .A1(bit_count[1]), .A2(bit_count[3]), .B0(n17), .Y(
        n24) );
  INVX2M U21 ( .A(n34), .Y(n14) );
  NAND3BX2M U22 ( .AN(bit_count[2]), .B(N13), .C(bit_count[0]), .Y(n34) );
  NAND4X2M U23 ( .A(bit_count[3]), .B(bit_count[1]), .C(n36), .D(N13), .Y(n26)
         );
  NOR2X2M U24 ( .A(bit_count[2]), .B(bit_count[0]), .Y(n36) );
  NOR3BX2M U25 ( .AN(bit_count[3]), .B(bit_count[1]), .C(n34), .Y(n31) );
  NOR3X2M U26 ( .A(bit_count[1]), .B(bit_count[3]), .C(n34), .Y(n30) );
  NAND3X2M U27 ( .A(n19), .B(n37), .C(CU_STATE[2]), .Y(n22) );
  OAI211X2M U28 ( .A0(n17), .A1(n18), .B0(n28), .C0(n29), .Y(NXT_STATE[1]) );
  NAND3BX2M U29 ( .AN(strt_glitch), .B(strt_chk_en), .C(n30), .Y(n29) );
  OAI21X2M U30 ( .A0(PAR_En), .A1(n15), .B0(n27), .Y(n28) );
  OAI211X2M U31 ( .A0(n17), .A1(n18), .B0(n32), .C0(n33), .Y(NXT_STATE[0]) );
  AOI22X1M U32 ( .A0(strt_chk_en), .A1(n16), .B0(N14), .B1(n38), .Y(n33) );
  AOI31X2M U33 ( .A0(n31), .A1(n27), .A2(PAR_En), .B0(n21), .Y(n32) );
  INVX2M U34 ( .A(RX_IN), .Y(n38) );
  INVX2M U35 ( .A(n22), .Y(stp_chk_en) );
  INVX2M U36 ( .A(CU_STATE[1]), .Y(n37) );
  AO21XLM U37 ( .A0(n24), .A1(stp_chk_en), .B0(n25), .Y(NXT_STATE[2]) );
  OAI33X2M U38 ( .A0(n15), .A1(PAR_En), .A2(n20), .B0(n18), .B1(par_err), .B2(
        n26), .Y(n25) );
  NOR3X2M U39 ( .A(n19), .B(CU_STATE[2]), .C(n37), .Y(par_chk_en) );
  NOR4X1M U40 ( .A(CU_STATE[0]), .B(CU_STATE[1]), .C(CU_STATE[2]), .D(RX_IN), 
        .Y(n21) );
  INVX2M U41 ( .A(CU_STATE[0]), .Y(n19) );
  NOR2BX1M U42 ( .AN(edge_count[0]), .B(prescale[0]), .Y(n1) );
  OAI2B2X1M U43 ( .A1N(prescale[1]), .A0(n1), .B0(edge_count[1]), .B1(n1), .Y(
        n5) );
  NOR2BX1M U44 ( .AN(prescale[0]), .B(edge_count[0]), .Y(n2) );
  OAI2B2X1M U45 ( .A1N(edge_count[1]), .A0(n2), .B0(prescale[1]), .B1(n2), .Y(
        n4) );
  XNOR2X1M U46 ( .A(prescale[5]), .B(edge_count[5]), .Y(n3) );
  NAND3X1M U47 ( .A(n5), .B(n4), .C(n3), .Y(n13) );
  CLKXOR2X2M U48 ( .A(prescale[4]), .B(edge_count[4]), .Y(n12) );
  CLKXOR2X2M U49 ( .A(prescale[2]), .B(edge_count[2]), .Y(n11) );
  CLKXOR2X2M U50 ( .A(prescale[3]), .B(edge_count[3]), .Y(n6) );
  NOR4X1M U51 ( .A(n13), .B(n12), .C(n11), .D(n6), .Y(N13) );
endmodule


module EDGE_BIT_COUNTER_test_1 ( enable, CLK, RST, prescale, edge_count, 
        bit_count, test_si, test_se );
  input [5:0] prescale;
  output [5:0] edge_count;
  output [3:0] bit_count;
  input enable, CLK, RST, test_si, test_se;
  wire   N6, N12, N13, N14, N16, N17, N18, N19, N20, n16, n17, n18, n19, n20,
         N27, N21, \mult_add_32_aco/PROD_not[0] , \add_37_aco/carry[5] ,
         \add_37_aco/carry[4] , \add_37_aco/carry[3] , \add_37_aco/carry[2] ,
         \mult_add_37_aco/PROD_not[0] , n1, n2, n3, n4, n15, n21, n22, n23,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37;

  SDFFRQX2M \bit_count_reg[2]  ( .D(n18), .SI(bit_count[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(bit_count[2]) );
  SDFFRQX2M \bit_count_reg[3]  ( .D(n17), .SI(bit_count[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(bit_count[3]) );
  SDFFRQX2M \bit_count_reg[1]  ( .D(n19), .SI(bit_count[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(bit_count[1]) );
  SDFFRQX2M \edge_count_reg[2]  ( .D(N17), .SI(edge_count[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[2]) );
  SDFFRQX2M \edge_count_reg[5]  ( .D(N20), .SI(edge_count[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[5]) );
  SDFFRQX2M \edge_count_reg[3]  ( .D(N18), .SI(edge_count[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[3]) );
  SDFFRQX2M \edge_count_reg[4]  ( .D(N19), .SI(edge_count[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[4]) );
  SDFFRQX2M \edge_count_reg[1]  ( .D(N16), .SI(edge_count[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[1]) );
  SDFFSQX1M \edge_count_reg[0]  ( .D(\mult_add_37_aco/PROD_not[0] ), .SI(
        bit_count[3]), .SE(test_se), .CK(CLK), .SN(RST), .Q(edge_count[0]) );
  SDFFSQX1M \bit_count_reg[0]  ( .D(n20), .SI(test_si), .SE(test_se), .CK(CLK), 
        .SN(RST), .Q(bit_count[0]) );
  AND2X2M U5 ( .A(bit_count[1]), .B(enable), .Y(n1) );
  AND2X2M U14 ( .A(edge_count[1]), .B(n35), .Y(n2) );
  AND2X2M U15 ( .A(bit_count[2]), .B(enable), .Y(n3) );
  AND2X2M U16 ( .A(enable), .B(bit_count[3]), .Y(n4) );
  AND2X2M U17 ( .A(edge_count[4]), .B(n35), .Y(n15) );
  AND2X2M U18 ( .A(edge_count[3]), .B(n35), .Y(n21) );
  AND2X2M U19 ( .A(edge_count[2]), .B(n35), .Y(n22) );
  AND2X2M U20 ( .A(n35), .B(edge_count[5]), .Y(n23) );
  NAND2X2M U23 ( .A(n1), .B(N21), .Y(n37) );
  INVX2M U24 ( .A(n16), .Y(n35) );
  NAND2BX2M U25 ( .AN(N6), .B(enable), .Y(n16) );
  ADDHX1M U26 ( .A(n2), .B(N27), .CO(\add_37_aco/carry[2] ), .S(N16) );
  ADDHX1M U27 ( .A(n22), .B(\add_37_aco/carry[2] ), .CO(\add_37_aco/carry[3] ), 
        .S(N17) );
  ADDHX1M U28 ( .A(n21), .B(\add_37_aco/carry[3] ), .CO(\add_37_aco/carry[4] ), 
        .S(N18) );
  AO22X1M U29 ( .A0(N12), .A1(n16), .B0(bit_count[1]), .B1(n35), .Y(n19) );
  XNOR2X2M U30 ( .A(n1), .B(\mult_add_32_aco/PROD_not[0] ), .Y(N12) );
  AO22X1M U31 ( .A0(N13), .A1(n16), .B0(bit_count[2]), .B1(n35), .Y(n18) );
  XNOR2X2M U32 ( .A(n3), .B(n37), .Y(N13) );
  AO22X1M U33 ( .A0(\mult_add_32_aco/PROD_not[0] ), .A1(n16), .B0(bit_count[0]), .B1(n35), .Y(n20) );
  ADDHX1M U34 ( .A(n15), .B(\add_37_aco/carry[4] ), .CO(\add_37_aco/carry[5] ), 
        .S(N19) );
  AO22X1M U35 ( .A0(N14), .A1(n16), .B0(bit_count[3]), .B1(n35), .Y(n17) );
  CLKXOR2X2M U36 ( .A(n4), .B(n36), .Y(N14) );
  NOR2BX2M U37 ( .AN(n3), .B(n37), .Y(n36) );
  CLKNAND2X2M U38 ( .A(edge_count[0]), .B(n35), .Y(
        \mult_add_37_aco/PROD_not[0] ) );
  CLKINVX1M U39 ( .A(\mult_add_37_aco/PROD_not[0] ), .Y(N27) );
  CLKXOR2X2M U40 ( .A(\add_37_aco/carry[5] ), .B(n23), .Y(N20) );
  CLKNAND2X2M U41 ( .A(bit_count[0]), .B(enable), .Y(
        \mult_add_32_aco/PROD_not[0] ) );
  CLKINVX1M U42 ( .A(\mult_add_32_aco/PROD_not[0] ), .Y(N21) );
  NOR2BX1M U43 ( .AN(edge_count[0]), .B(prescale[0]), .Y(n26) );
  OAI2B2X1M U44 ( .A1N(prescale[1]), .A0(n26), .B0(edge_count[1]), .B1(n26), 
        .Y(n30) );
  NOR2BX1M U45 ( .AN(prescale[0]), .B(edge_count[0]), .Y(n27) );
  OAI2B2X1M U46 ( .A1N(edge_count[1]), .A0(n27), .B0(prescale[1]), .B1(n27), 
        .Y(n29) );
  XNOR2X1M U47 ( .A(prescale[5]), .B(edge_count[5]), .Y(n28) );
  NAND3X1M U48 ( .A(n30), .B(n29), .C(n28), .Y(n34) );
  CLKXOR2X2M U49 ( .A(prescale[4]), .B(edge_count[4]), .Y(n33) );
  CLKXOR2X2M U50 ( .A(prescale[2]), .B(edge_count[2]), .Y(n32) );
  CLKXOR2X2M U51 ( .A(prescale[3]), .B(edge_count[3]), .Y(n31) );
  NOR4X1M U52 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(N6) );
endmodule


module DATA_SAMPLING_test_1 ( RX_IN, prescale, dat_samp_en, CLK, RST, edge_cnt, 
        sampled_bit, test_si, test_se );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input RX_IN, dat_samp_en, CLK, RST, test_si, test_se;
  output sampled_bit;
  wire   RX_IN_FF, N12, N13, N14, N15, N16, N17, N18, N21, N22, N23, N24, N25,
         N28, N29, N30, N31, N32, N33, N34, N35, n60, n61, n62, n63, n64,
         \add_42/carry[4] , \add_42/carry[3] , \add_42/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83;
  wire   [1:0] ZERO_Count;
  wire   [1:0] One_CONUT;

  SDFFRQX2M RX_IN_FF_reg ( .D(RX_IN), .SI(One_CONUT[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(RX_IN_FF) );
  SDFFRQX2M \ZERO_Count_reg[1]  ( .D(n62), .SI(ZERO_Count[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(ZERO_Count[1]) );
  SDFFRQX2M \One_CONUT_reg[1]  ( .D(n64), .SI(One_CONUT[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(One_CONUT[1]) );
  SDFFRQX2M \One_CONUT_reg[0]  ( .D(n63), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(One_CONUT[0]) );
  SDFFRQX2M \ZERO_Count_reg[0]  ( .D(n61), .SI(RX_IN_FF), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ZERO_Count[0]) );
  SDFFRQX2M sampled_bit_reg ( .D(n60), .SI(ZERO_Count[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sampled_bit) );
  OR2X2M U7 ( .A(prescale[1]), .B(prescale[0]), .Y(n4) );
  OR2X2M U8 ( .A(prescale[2]), .B(prescale[1]), .Y(n1) );
  ADDHX1M U9 ( .A(prescale[4]), .B(\add_42/carry[3] ), .CO(\add_42/carry[4] ), 
        .S(N23) );
  ADDHX1M U10 ( .A(prescale[3]), .B(\add_42/carry[2] ), .CO(\add_42/carry[3] ), 
        .S(N22) );
  ADDHX1M U11 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_42/carry[2] ), .S(
        N21) );
  ADDHX1M U12 ( .A(prescale[5]), .B(\add_42/carry[4] ), .CO(N25), .S(N24) );
  CLKINVX1M U13 ( .A(prescale[1]), .Y(N12) );
  OAI2BB1X1M U16 ( .A0N(prescale[1]), .A1N(prescale[2]), .B0(n1), .Y(N13) );
  OR2X1M U17 ( .A(n1), .B(prescale[3]), .Y(n2) );
  OAI2BB1X1M U18 ( .A0N(n1), .A1N(prescale[3]), .B0(n2), .Y(N14) );
  XNOR2X1M U19 ( .A(prescale[4]), .B(n2), .Y(N15) );
  NOR3X1M U20 ( .A(prescale[4]), .B(prescale[5]), .C(n2), .Y(N17) );
  OAI21X1M U21 ( .A0(prescale[4]), .A1(n2), .B0(prescale[5]), .Y(n3) );
  NAND2BX1M U22 ( .AN(N17), .B(n3), .Y(N16) );
  CLKINVX1M U23 ( .A(prescale[0]), .Y(N28) );
  OAI2BB1X1M U24 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n4), .Y(N29) );
  OR2X1M U25 ( .A(n4), .B(prescale[2]), .Y(n5) );
  OAI2BB1X1M U26 ( .A0N(n4), .A1N(prescale[2]), .B0(n5), .Y(N30) );
  OR2X1M U27 ( .A(n5), .B(prescale[3]), .Y(n6) );
  OAI2BB1X1M U28 ( .A0N(n5), .A1N(prescale[3]), .B0(n6), .Y(N31) );
  OR2X1M U29 ( .A(n6), .B(prescale[4]), .Y(n7) );
  OAI2BB1X1M U30 ( .A0N(n6), .A1N(prescale[4]), .B0(n7), .Y(N32) );
  NOR2X1M U31 ( .A(n7), .B(prescale[5]), .Y(N34) );
  AO21XLM U32 ( .A0(n7), .A1(prescale[5]), .B0(N34), .Y(N33) );
  NOR2BX1M U33 ( .AN(edge_cnt[0]), .B(N12), .Y(n8) );
  OAI2B2X1M U34 ( .A1N(N13), .A0(n8), .B0(edge_cnt[1]), .B1(n8), .Y(n11) );
  NOR2BX1M U35 ( .AN(N12), .B(edge_cnt[0]), .Y(n9) );
  OAI2B2X1M U36 ( .A1N(edge_cnt[1]), .A0(n9), .B0(N13), .B1(n9), .Y(n10) );
  NAND4BBX1M U37 ( .AN(N17), .BN(edge_cnt[5]), .C(n11), .D(n10), .Y(n15) );
  CLKXOR2X2M U38 ( .A(N16), .B(edge_cnt[4]), .Y(n14) );
  CLKXOR2X2M U39 ( .A(N14), .B(edge_cnt[2]), .Y(n13) );
  CLKXOR2X2M U40 ( .A(N15), .B(edge_cnt[3]), .Y(n12) );
  NOR4X1M U41 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(N18) );
  NOR2BX1M U42 ( .AN(N28), .B(edge_cnt[0]), .Y(n16) );
  OAI2B2X1M U43 ( .A1N(edge_cnt[1]), .A0(n16), .B0(N29), .B1(n16), .Y(n26) );
  XNOR2X1M U44 ( .A(N33), .B(edge_cnt[5]), .Y(n25) );
  NOR2BX1M U45 ( .AN(edge_cnt[0]), .B(N28), .Y(n23) );
  OAI2B2X1M U46 ( .A1N(N29), .A0(n23), .B0(edge_cnt[1]), .B1(n23), .Y(n24) );
  NAND4BX1M U47 ( .AN(N34), .B(n26), .C(n25), .D(n24), .Y(n30) );
  CLKXOR2X2M U48 ( .A(N32), .B(edge_cnt[4]), .Y(n29) );
  CLKXOR2X2M U49 ( .A(N30), .B(edge_cnt[2]), .Y(n28) );
  CLKXOR2X2M U50 ( .A(N31), .B(edge_cnt[3]), .Y(n27) );
  NOR4X1M U51 ( .A(n30), .B(n29), .C(n28), .D(n27), .Y(N35) );
  MXI2X1M U52 ( .A(n31), .B(n32), .S0(One_CONUT[1]), .Y(n64) );
  AOI21BX1M U53 ( .A0(n33), .A1(n34), .B0N(n35), .Y(n32) );
  NAND3X1M U54 ( .A(n33), .B(n35), .C(One_CONUT[0]), .Y(n31) );
  MXI2X1M U55 ( .A(n36), .B(n35), .S0(One_CONUT[0]), .Y(n63) );
  CLKNAND2X2M U56 ( .A(n33), .B(n35), .Y(n36) );
  NAND3X1M U57 ( .A(n37), .B(n38), .C(dat_samp_en), .Y(n35) );
  NAND3X1M U58 ( .A(n39), .B(n40), .C(RX_IN_FF), .Y(n37) );
  MXI2X1M U59 ( .A(n41), .B(n42), .S0(ZERO_Count[1]), .Y(n62) );
  AOI2B1X1M U60 ( .A1N(ZERO_Count[0]), .A0(n33), .B0(n43), .Y(n42) );
  CLKINVX1M U61 ( .A(n44), .Y(n43) );
  NAND3X1M U62 ( .A(n33), .B(n44), .C(ZERO_Count[0]), .Y(n41) );
  MXI2X1M U63 ( .A(n45), .B(n44), .S0(ZERO_Count[0]), .Y(n61) );
  CLKNAND2X2M U64 ( .A(n33), .B(n44), .Y(n45) );
  OAI211X1M U65 ( .A0(n46), .A1(n47), .B0(n38), .C0(dat_samp_en), .Y(n44) );
  CLKNAND2X2M U66 ( .A(n40), .B(n48), .Y(n47) );
  CLKINVX1M U67 ( .A(n49), .Y(n40) );
  NOR2X1M U68 ( .A(n50), .B(n49), .Y(n33) );
  CLKMX2X2M U69 ( .A(sampled_bit), .B(n51), .S0(n52), .Y(n60) );
  AOI21X1M U70 ( .A0(n53), .A1(n38), .B0(n50), .Y(n52) );
  CLKINVX1M U71 ( .A(dat_samp_en), .Y(n50) );
  NAND3X1M U72 ( .A(n39), .B(n49), .C(N35), .Y(n38) );
  NOR3X1M U73 ( .A(N18), .B(n54), .C(n55), .Y(n49) );
  NOR4X1M U74 ( .A(n56), .B(n57), .C(n58), .D(n59), .Y(n55) );
  CLKXOR2X2M U75 ( .A(edge_cnt[3]), .B(N23), .Y(n59) );
  CLKXOR2X2M U76 ( .A(edge_cnt[5]), .B(N25), .Y(n58) );
  CLKXOR2X2M U77 ( .A(edge_cnt[4]), .B(N24), .Y(n57) );
  NAND3X1M U78 ( .A(n65), .B(n66), .C(n67), .Y(n56) );
  XNOR2X1M U79 ( .A(edge_cnt[1]), .B(N21), .Y(n67) );
  XNOR2X1M U80 ( .A(edge_cnt[2]), .B(N22), .Y(n66) );
  XNOR2X1M U81 ( .A(edge_cnt[0]), .B(N12), .Y(n65) );
  NOR4X1M U82 ( .A(n68), .B(n69), .C(edge_cnt[5]), .D(edge_cnt[0]), .Y(n54) );
  CLKXOR2X2M U83 ( .A(prescale[5]), .B(edge_cnt[4]), .Y(n69) );
  NAND3X1M U84 ( .A(n70), .B(n71), .C(n72), .Y(n68) );
  XNOR2X1M U85 ( .A(edge_cnt[2]), .B(prescale[3]), .Y(n72) );
  XNOR2X1M U86 ( .A(edge_cnt[3]), .B(prescale[4]), .Y(n71) );
  CLKXOR2X2M U87 ( .A(edge_cnt[1]), .B(n73), .Y(n70) );
  NAND4BBX1M U88 ( .AN(n74), .BN(edge_cnt[1]), .C(edge_cnt[0]), .D(n75), .Y(
        n53) );
  NOR4X1M U89 ( .A(edge_cnt[5]), .B(edge_cnt[4]), .C(edge_cnt[3]), .D(
        edge_cnt[2]), .Y(n75) );
  OAI22X1M U90 ( .A0(n76), .A1(n46), .B0(n48), .B1(n74), .Y(n51) );
  NAND4BX1M U91 ( .AN(prescale[0]), .B(n73), .C(prescale[1]), .D(n77), .Y(n74)
         );
  NOR3X1M U92 ( .A(prescale[3]), .B(prescale[5]), .C(prescale[4]), .Y(n77) );
  CLKINVX1M U93 ( .A(prescale[2]), .Y(n73) );
  CLKINVX1M U94 ( .A(RX_IN_FF), .Y(n48) );
  CLKINVX1M U95 ( .A(n39), .Y(n46) );
  NOR3BX1M U96 ( .AN(n78), .B(prescale[0]), .C(prescale[1]), .Y(n39) );
  MX3X1M U97 ( .A(n79), .B(n80), .C(n81), .S0(prescale[4]), .S1(prescale[5]), 
        .Y(n78) );
  NOR3X1M U98 ( .A(prescale[2]), .B(prescale[4]), .C(prescale[3]), .Y(n81) );
  NOR2X1M U99 ( .A(prescale[3]), .B(prescale[2]), .Y(n80) );
  CLKXOR2X2M U100 ( .A(prescale[3]), .B(prescale[2]), .Y(n79) );
  AOI21X1M U101 ( .A0(One_CONUT[1]), .A1(n82), .B0(n83), .Y(n76) );
  AOI2BB1X1M U102 ( .A0N(n82), .A1N(One_CONUT[1]), .B0(ZERO_Count[1]), .Y(n83)
         );
  CLKNAND2X2M U103 ( .A(ZERO_Count[0]), .B(n34), .Y(n82) );
  CLKINVX1M U104 ( .A(One_CONUT[0]), .Y(n34) );
endmodule


module parity_check ( par_chck_en, par_type, sampled_bit, P_DATA, par_err );
  input [7:0] P_DATA;
  input par_chck_en, par_type, sampled_bit;
  output par_err;
  wire   n1, n2, n3, n4, n5, n6;

  XNOR2X2M U2 ( .A(sampled_bit), .B(n1), .Y(par_err) );
  NAND2X2M U3 ( .A(par_chck_en), .B(n2), .Y(n1) );
  XOR3XLM U4 ( .A(par_type), .B(n3), .C(n4), .Y(n2) );
  XOR3XLM U5 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
  XNOR2X2M U6 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  XOR3XLM U7 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  XNOR2X2M U8 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
endmodule


module start_check ( strt_chck_en, sampled_bit, strt_glitch );
  input strt_chck_en, sampled_bit;
  output strt_glitch;


  NAND2BX2M U1 ( .AN(sampled_bit), .B(strt_chck_en), .Y(strt_glitch) );
endmodule


module stop_check ( stop_chck_en, sampled_bit, stop_error );
  input stop_chck_en, sampled_bit;
  output stop_error;


  NAND2X2M U1 ( .A(stop_chck_en), .B(sampled_bit), .Y(stop_error) );
endmodule


module DESERILIZER_test_1 ( CLK, RST, deser_en, sampled_bit, P_DATA, test_si, 
        test_so, test_se );
  output [7:0] P_DATA;
  input CLK, RST, deser_en, sampled_bit, test_si, test_se;
  output test_so;
  wire   n1, n2, n5, n7, n8, n9, n10, n11, n12, n14, n15, n16, n17, n18, n19,
         n20, n30, n32, n34, n35, n36, n37, n38, n39, n40, n41, n42, n3, n4,
         n6, n13;
  wire   [3:0] deser_count;
  assign test_so = deser_count[2];

  SDFFRQX2M \deser_count_reg[0]  ( .D(n34), .SI(P_DATA[7]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(deser_count[0]) );
  SDFFRQX2M \deser_count_reg[2]  ( .D(n30), .SI(deser_count[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(deser_count[2]) );
  SDFFRQX2M \deser_count_reg[1]  ( .D(n32), .SI(deser_count[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(deser_count[1]) );
  SDFFRQX2M \P_DATA_reg[5]  ( .D(n40), .SI(P_DATA[4]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n36), .SI(P_DATA[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n39), .SI(P_DATA[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[0]  ( .D(n35), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n42), .SI(P_DATA[6]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[7]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n38), .SI(P_DATA[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n41), .SI(P_DATA[5]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[6]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n37), .SI(P_DATA[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[2]) );
  OAI221X1M U3 ( .A0(n1), .A1(n2), .B0(n4), .B1(n13), .C0(n5), .Y(n30) );
  NAND2X2M U4 ( .A(deser_en), .B(n3), .Y(n7) );
  INVX2M U5 ( .A(n2), .Y(n4) );
  OAI21X2M U6 ( .A0(deser_en), .A1(n3), .B0(n7), .Y(n34) );
  NAND2X2M U7 ( .A(n13), .B(n6), .Y(n8) );
  NAND2X2M U8 ( .A(deser_en), .B(deser_count[0]), .Y(n2) );
  XNOR2X2M U9 ( .A(deser_count[1]), .B(n2), .Y(n32) );
  NAND2X2M U10 ( .A(sampled_bit), .B(n4), .Y(n11) );
  NAND2BX2M U11 ( .AN(n7), .B(sampled_bit), .Y(n9) );
  OAI21X2M U12 ( .A0(n1), .A1(n9), .B0(n14), .Y(n37) );
  OAI21X2M U13 ( .A0(n1), .A1(n7), .B0(P_DATA[2]), .Y(n14) );
  OAI21X2M U14 ( .A0(n1), .A1(n11), .B0(n15), .Y(n38) );
  OAI21X2M U15 ( .A0(n1), .A1(n2), .B0(P_DATA[3]), .Y(n15) );
  OAI21X2M U16 ( .A0(n11), .A1(n5), .B0(n17), .Y(n40) );
  OAI21X2M U17 ( .A0(n2), .A1(n5), .B0(P_DATA[5]), .Y(n17) );
  OAI21X2M U18 ( .A0(n11), .A1(n18), .B0(n20), .Y(n42) );
  OAI21X2M U19 ( .A0(n2), .A1(n18), .B0(P_DATA[7]), .Y(n20) );
  OAI21X2M U20 ( .A0(n9), .A1(n5), .B0(n16), .Y(n39) );
  OAI21X2M U21 ( .A0(n7), .A1(n5), .B0(P_DATA[4]), .Y(n16) );
  OAI21X2M U22 ( .A0(n8), .A1(n11), .B0(n12), .Y(n36) );
  OAI21X2M U23 ( .A0(n2), .A1(n8), .B0(P_DATA[1]), .Y(n12) );
  OAI21X2M U24 ( .A0(n9), .A1(n18), .B0(n19), .Y(n41) );
  OAI21X2M U25 ( .A0(n7), .A1(n18), .B0(P_DATA[6]), .Y(n19) );
  OAI21X2M U26 ( .A0(n8), .A1(n9), .B0(n10), .Y(n35) );
  OAI21X2M U27 ( .A0(n8), .A1(n7), .B0(P_DATA[0]), .Y(n10) );
  NAND2X2M U28 ( .A(deser_count[1]), .B(n13), .Y(n1) );
  NAND2X2M U29 ( .A(deser_count[2]), .B(n6), .Y(n5) );
  NAND2X2M U30 ( .A(deser_count[1]), .B(deser_count[2]), .Y(n18) );
  INVX2M U31 ( .A(deser_count[2]), .Y(n13) );
  INVX2M U32 ( .A(deser_count[1]), .Y(n6) );
  INVX2M U33 ( .A(deser_count[0]), .Y(n3) );
endmodule


module TOP_RX_UART_test_1 ( RX_IN, prescale, PAR_EN, PAR_TYPE, CLK, RST, 
        valid_DATA, P_DATA, PAR_ERR, STP_ERR, test_si, test_so, test_se );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYPE, CLK, RST, test_si, test_se;
  output valid_DATA, PAR_ERR, STP_ERR, test_so;
  wire   strt_glitch, dat_samp_en, enable_EDGE_bit_CNT, deser_en, stp_chk_en,
         strt_chk_en, par_chk_En, sampled_OUT, n1;
  wire   [3:0] bit_count;
  wire   [5:0] edge_cnt;
  assign test_so = edge_cnt[5];

  FSM_RX_UART_test_1 fsm_u0 ( .RX_IN(RX_IN), .PAR_En(PAR_EN), .CLK(CLK), .RST(
        RST), .par_err(PAR_ERR), .strt_glitch(strt_glitch), .stp_err(STP_ERR), 
        .bit_count(bit_count), .edge_count(edge_cnt), .prescale(prescale), 
        .dat_samp_en(dat_samp_en), .EDGE_CNT_en(enable_EDGE_bit_CNT), 
        .deser_en(deser_en), .data_valid(valid_DATA), .stp_chk_en(stp_chk_en), 
        .strt_chk_en(strt_chk_en), .par_chk_en(par_chk_En), .test_si(
        sampled_OUT), .test_se(test_se) );
  EDGE_BIT_COUNTER_test_1 u0 ( .enable(enable_EDGE_bit_CNT), .CLK(CLK), .RST(
        RST), .prescale(prescale), .edge_count(edge_cnt), .bit_count(bit_count), .test_si(valid_DATA), .test_se(test_se) );
  DATA_SAMPLING_test_1 data_sampler_u1 ( .RX_IN(RX_IN), .prescale(prescale), 
        .dat_samp_en(dat_samp_en), .CLK(CLK), .RST(RST), .edge_cnt(edge_cnt), 
        .sampled_bit(sampled_OUT), .test_si(n1), .test_se(test_se) );
  parity_check par_chk_u2 ( .par_chck_en(par_chk_En), .par_type(PAR_TYPE), 
        .sampled_bit(sampled_OUT), .P_DATA(P_DATA), .par_err(PAR_ERR) );
  start_check strt_chk_u3 ( .strt_chck_en(strt_chk_en), .sampled_bit(
        sampled_OUT), .strt_glitch(strt_glitch) );
  stop_check stop_chk_u4 ( .stop_chck_en(stp_chk_en), .sampled_bit(sampled_OUT), .stop_error(STP_ERR) );
  DESERILIZER_test_1 DESERILIZER_u5 ( .CLK(CLK), .RST(RST), .deser_en(deser_en), .sampled_bit(sampled_OUT), .P_DATA(P_DATA), .test_si(test_si), .test_so(n1), 
        .test_se(test_se) );
endmodule


module UART_test_1 ( RST, TX_CLK, RX_CLK, parity_enable, parity_type, Prescale, 
        RX_IN, TX_IN_P_Data, TX_IN_Valid, RX_OUT_P_Data, RX_OUT_Valid, TX_OUT, 
        busy, parity_error, framing_error, test_si, test_so, test_se );
  input [5:0] Prescale;
  input [7:0] TX_IN_P_Data;
  output [7:0] RX_OUT_P_Data;
  input RST, TX_CLK, RX_CLK, parity_enable, parity_type, RX_IN, TX_IN_Valid,
         test_si, test_se;
  output RX_OUT_Valid, TX_OUT, busy, parity_error, framing_error, test_so;
  wire   n1, n2, n4;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  TOP_TX_UART_test_1 TX_UART ( .P_DATA(TX_IN_P_Data), .DATA_Valid(TX_IN_Valid), 
        .PAR_EN(parity_enable), .PAR_TYP(parity_type), .RST(n1), .CLK(TX_CLK), 
        .TX_OUT(TX_OUT), .BUSY(busy), .test_si(n4), .test_so(test_so), 
        .test_se(test_se) );
  TOP_RX_UART_test_1 RX_UART ( .RX_IN(RX_IN), .prescale(Prescale), .PAR_EN(
        parity_enable), .PAR_TYPE(parity_type), .CLK(RX_CLK), .RST(n1), 
        .valid_DATA(RX_OUT_Valid), .P_DATA(RX_OUT_P_Data), .PAR_ERR(
        parity_error), .STP_ERR(framing_error), .test_si(test_si), .test_so(n4), .test_se(test_se) );
endmodule


module System_CTRL_test_1 ( ALU_OUT, OUT_VALID, Rx_P_Data, Rx_D_VLD, Rd_Data, 
        Rd_Data_VALID, CLK, RST, FIFO_FULL, ALU_EN, ALU_FUN, Gate_En, 
        out_address, Wr_En, Rd_En, Wr_Data, Wr_Data_FIFO, WR_INC, sys_Error, 
        CLKDIV_EN, test_si2, test_si1, test_so2, test_so1, test_se );
  input [15:0] ALU_OUT;
  input [7:0] Rx_P_Data;
  input [7:0] Rd_Data;
  output [3:0] ALU_FUN;
  output [3:0] out_address;
  output [7:0] Wr_Data;
  output [7:0] Wr_Data_FIFO;
  input OUT_VALID, Rx_D_VLD, Rd_Data_VALID, CLK, RST, FIFO_FULL, test_si2,
         test_si1, test_se;
  output ALU_EN, Gate_En, Wr_En, Rd_En, WR_INC, sys_Error, CLKDIV_EN, test_so2,
         test_so1;
  wire   \send_CNT[0] , N410, N411, N417, N418, N424, N425, N428, N431, N432,
         n27, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, N455, N454, N459, N458, N457, N462, N461, N460, N464,
         N463, n7, n8, n9, n10, n28, n29, n30, n31, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n157, n158, n159, n160, n161, n162,
         n163, n164, n165;
  wire   [3:0] Address_FF;
  wire   [3:0] Address;
  wire   [3:0] CU_STATE;
  wire   [3:0] NXT_STATE;
  wire   [2:0] Frame_Counter;
  wire   [2:0] Expected_NO_Frames;
  assign test_so1 = Frame_Counter[1];

  SDFFRQX2M \Address_FF_reg[2]  ( .D(Address[2]), .SI(Address_FF[1]), .SE(
        test_se), .CK(CLK), .RN(n34), .Q(Address_FF[2]) );
  SDFFRQX2M \Address_FF_reg[3]  ( .D(Address[3]), .SI(Address_FF[2]), .SE(
        test_se), .CK(CLK), .RN(n34), .Q(Address_FF[3]) );
  SDFFRQX2M \Address_FF_reg[1]  ( .D(Address[1]), .SI(Address_FF[0]), .SE(
        test_se), .CK(CLK), .RN(n34), .Q(Address_FF[1]) );
  SDFFRQX2M \Expected_NO_Frames_reg[0]  ( .D(n154), .SI(CU_STATE[3]), .SE(
        test_se), .CK(CLK), .RN(n34), .Q(Expected_NO_Frames[0]) );
  SDFFRQX2M \Expected_NO_Frames_reg[1]  ( .D(n155), .SI(Expected_NO_Frames[0]), 
        .SE(test_se), .CK(CLK), .RN(n34), .Q(Expected_NO_Frames[1]) );
  SDFFRQX2M \Frame_Counter_reg[0]  ( .D(n153), .SI(Expected_NO_Frames[2]), 
        .SE(test_se), .CK(CLK), .RN(n34), .Q(Frame_Counter[0]) );
  SDFFRQX2M \Frame_Counter_reg[2]  ( .D(n152), .SI(test_si2), .SE(test_se), 
        .CK(CLK), .RN(n34), .Q(Frame_Counter[2]) );
  SDFFRQX2M \CU_STATE_reg[0]  ( .D(NXT_STATE[0]), .SI(Address_FF[3]), .SE(
        test_se), .CK(CLK), .RN(n34), .Q(CU_STATE[0]) );
  SDFFRQX2M \CU_STATE_reg[1]  ( .D(NXT_STATE[1]), .SI(CU_STATE[0]), .SE(
        test_se), .CK(CLK), .RN(n34), .Q(CU_STATE[1]) );
  SDFFRQX2M \CU_STATE_reg[3]  ( .D(NXT_STATE[3]), .SI(CU_STATE[2]), .SE(
        test_se), .CK(CLK), .RN(n34), .Q(CU_STATE[3]) );
  SDFFRQX2M \Frame_Counter_reg[1]  ( .D(n151), .SI(n38), .SE(test_se), .CK(CLK), .RN(n34), .Q(Frame_Counter[1]) );
  SDFFRQX2M \CU_STATE_reg[2]  ( .D(NXT_STATE[2]), .SI(CU_STATE[1]), .SE(
        test_se), .CK(CLK), .RN(n34), .Q(CU_STATE[2]) );
  SDFFRX1M \send_CNT_reg[1]  ( .D(n150), .SI(\send_CNT[0] ), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(test_so2), .QN(n27) );
  SDFFSQX1M \Address_FF_reg[0]  ( .D(Address[0]), .SI(test_si1), .SE(test_se), 
        .CK(CLK), .SN(RST), .Q(Address_FF[0]) );
  SDFFSQX1M \Expected_NO_Frames_reg[2]  ( .D(n156), .SI(Expected_NO_Frames[1]), 
        .SE(test_se), .CK(CLK), .SN(n34), .Q(Expected_NO_Frames[2]) );
  SDFFSQX1M \send_CNT_reg[0]  ( .D(n149), .SI(n47), .SE(test_se), .CK(CLK), 
        .SN(n34), .Q(\send_CNT[0] ) );
  AOI2BB2XLM U25 ( .B0(n49), .B1(n127), .A0N(n43), .A1N(n128), .Y(n100) );
  NOR2X2M U26 ( .A(n100), .B(n163), .Y(ALU_FUN[0]) );
  NOR2X2M U27 ( .A(n100), .B(n160), .Y(ALU_FUN[3]) );
  NOR2X2M U28 ( .A(n100), .B(n162), .Y(ALU_FUN[1]) );
  AOI2BB2XLM U29 ( .B0(n49), .B1(n127), .A0N(n44), .A1N(n128), .Y(n101) );
  INVX2M U30 ( .A(Rd_Data_VALID), .Y(n33) );
  INVX2M U31 ( .A(OUT_VALID), .Y(n41) );
  INVX2M U32 ( .A(n7), .Y(Rd_En) );
  INVX2M U33 ( .A(n75), .Y(n55) );
  INVX2M U34 ( .A(n31), .Y(Wr_En) );
  NOR2X2M U35 ( .A(n47), .B(n42), .Y(n127) );
  NAND2X2M U36 ( .A(ALU_EN), .B(WR_INC), .Y(n62) );
  INVX2M U37 ( .A(n116), .Y(n43) );
  INVX2M U38 ( .A(n125), .Y(n44) );
  AOI21X2M U39 ( .A0(n116), .A1(n48), .B0(Rd_En), .Y(n148) );
  NAND2X2M U40 ( .A(n49), .B(n79), .Y(n140) );
  INVX2M U41 ( .A(n135), .Y(n48) );
  OR2X2M U42 ( .A(n123), .B(n43), .Y(n7) );
  NOR4X1M U43 ( .A(n71), .B(n69), .C(n66), .D(n67), .Y(n75) );
  BUFX2M U44 ( .A(n88), .Y(n31) );
  AOI22X1M U45 ( .A0(n48), .A1(n79), .B0(n98), .B1(n49), .Y(n88) );
  AOI2B1X1M U46 ( .A1N(n33), .A0(n72), .B0(n123), .Y(n122) );
  OR2X2M U47 ( .A(n79), .B(n116), .Y(n98) );
  INVX2M U48 ( .A(N463), .Y(n36) );
  INVX2M U49 ( .A(n115), .Y(n45) );
  INVX2M U50 ( .A(n105), .Y(n52) );
  INVX2M U51 ( .A(n86), .Y(n58) );
  NOR3X2M U52 ( .A(n63), .B(n100), .C(n41), .Y(n90) );
  NAND3BX2M U53 ( .AN(n90), .B(n7), .C(n99), .Y(WR_INC) );
  NOR2X2M U54 ( .A(n100), .B(n161), .Y(ALU_FUN[2]) );
  NAND3X2M U55 ( .A(n106), .B(n99), .C(n100), .Y(ALU_EN) );
  NOR2X2M U56 ( .A(n44), .B(n29), .Y(n116) );
  NOR2X2M U57 ( .A(n46), .B(n30), .Y(n125) );
  OAI2BB1X2M U58 ( .A0N(Rd_Data[0]), .A1N(Rd_En), .B0(n97), .Y(Wr_Data_FIFO[0]) );
  AOI22X1M U59 ( .A0(ALU_OUT[0]), .A1(n90), .B0(ALU_OUT[8]), .B1(n51), .Y(n97)
         );
  OAI2BB1X2M U60 ( .A0N(Rd_Data[1]), .A1N(Rd_En), .B0(n96), .Y(Wr_Data_FIFO[1]) );
  AOI22X1M U61 ( .A0(ALU_OUT[1]), .A1(n90), .B0(ALU_OUT[9]), .B1(n51), .Y(n96)
         );
  OAI2BB1X2M U62 ( .A0N(Rd_Data[2]), .A1N(Rd_En), .B0(n95), .Y(Wr_Data_FIFO[2]) );
  AOI22X1M U63 ( .A0(ALU_OUT[2]), .A1(n90), .B0(ALU_OUT[10]), .B1(n51), .Y(n95) );
  OAI2BB1X2M U64 ( .A0N(Rd_Data[3]), .A1N(Rd_En), .B0(n94), .Y(Wr_Data_FIFO[3]) );
  AOI22X1M U65 ( .A0(ALU_OUT[3]), .A1(n90), .B0(ALU_OUT[11]), .B1(n51), .Y(n94) );
  OAI2BB1X2M U66 ( .A0N(Rd_Data[4]), .A1N(Rd_En), .B0(n93), .Y(Wr_Data_FIFO[4]) );
  AOI22X1M U67 ( .A0(ALU_OUT[4]), .A1(n90), .B0(ALU_OUT[12]), .B1(n51), .Y(n93) );
  OAI2BB1X2M U68 ( .A0N(Rd_Data[5]), .A1N(Rd_En), .B0(n92), .Y(Wr_Data_FIFO[5]) );
  AOI22X1M U69 ( .A0(ALU_OUT[5]), .A1(n90), .B0(ALU_OUT[13]), .B1(n51), .Y(n92) );
  OAI2BB1X2M U70 ( .A0N(Rd_Data[6]), .A1N(Rd_En), .B0(n91), .Y(Wr_Data_FIFO[6]) );
  AOI22X1M U71 ( .A0(ALU_OUT[6]), .A1(n90), .B0(ALU_OUT[14]), .B1(n51), .Y(n91) );
  OAI2BB1X2M U72 ( .A0N(Rd_Data[7]), .A1N(Rd_En), .B0(n89), .Y(Wr_Data_FIFO[7]) );
  AOI22X1M U73 ( .A0(ALU_OUT[7]), .A1(n90), .B0(ALU_OUT[15]), .B1(n51), .Y(n89) );
  INVX2M U74 ( .A(n134), .Y(n49) );
  INVX2M U75 ( .A(n103), .Y(n42) );
  INVX2M U76 ( .A(n29), .Y(n47) );
  NAND4X2M U77 ( .A(n110), .B(n111), .C(n112), .D(n113), .Y(NXT_STATE[2]) );
  OAI21X2M U78 ( .A0(n115), .A1(n116), .B0(n49), .Y(n112) );
  AOI221XLM U79 ( .A0(n40), .A1(n41), .B0(n52), .B1(n69), .C0(n114), .Y(n113)
         );
  INVX2M U80 ( .A(n100), .Y(n40) );
  NOR2X2M U81 ( .A(n76), .B(n29), .Y(n79) );
  OAI211X2M U82 ( .A0(n148), .A1(n163), .B0(n111), .C0(n140), .Y(Address[0])
         );
  OAI211X2M U83 ( .A0(n101), .A1(n41), .B0(n39), .C0(n102), .Y(NXT_STATE[3])
         );
  AOI21X2M U84 ( .A0(n103), .A1(n48), .B0(n104), .Y(n102) );
  OAI31X1M U85 ( .A0(n85), .A1(n58), .A2(n105), .B0(n106), .Y(n104) );
  NAND2X2M U86 ( .A(n141), .B(n59), .Y(n123) );
  NAND2X2M U87 ( .A(n144), .B(n59), .Y(n135) );
  NAND4BX1M U88 ( .AN(n117), .B(n39), .C(n118), .D(n119), .Y(NXT_STATE[1]) );
  AOI2BB2XLM U89 ( .B0(n49), .B1(n98), .A0N(n111), .A1N(n43), .Y(n118) );
  AOI211X2M U90 ( .A0(n120), .A1(OUT_VALID), .B0(n121), .C0(n122), .Y(n119) );
  NOR2BX2M U91 ( .AN(n63), .B(n101), .Y(n120) );
  NOR2X2M U92 ( .A(n162), .B(n148), .Y(Address[1]) );
  NOR2X2M U93 ( .A(n161), .B(n148), .Y(Address[2]) );
  NOR2X2M U94 ( .A(n160), .B(n148), .Y(Address[3]) );
  OAI221X1M U95 ( .A0(n128), .A1(n45), .B0(n56), .B1(n105), .C0(n140), .Y(n114) );
  INVX2M U96 ( .A(n71), .Y(n56) );
  OAI222X1M U97 ( .A0(n46), .A1(n37), .B0(n64), .B1(n65), .C0(n44), .C1(n55), 
        .Y(n151) );
  AOI221XLM U98 ( .A0(N417), .A1(n66), .B0(N410), .B1(n67), .C0(n68), .Y(n65)
         );
  XNOR2X2M U99 ( .A(N461), .B(n36), .Y(N417) );
  XNOR2X2M U100 ( .A(N464), .B(n36), .Y(N410) );
  NOR2X2M U101 ( .A(n108), .B(n87), .Y(n71) );
  NOR2X2M U102 ( .A(n107), .B(n87), .Y(n66) );
  NOR2X2M U103 ( .A(n31), .B(n157), .Y(Wr_Data[6]) );
  NOR2X2M U104 ( .A(n31), .B(n158), .Y(Wr_Data[5]) );
  NOR2X2M U105 ( .A(n31), .B(n159), .Y(Wr_Data[4]) );
  NOR2X2M U106 ( .A(n31), .B(n160), .Y(Wr_Data[3]) );
  NOR2X2M U107 ( .A(n31), .B(n161), .Y(Wr_Data[2]) );
  NOR2X2M U108 ( .A(n31), .B(n162), .Y(Wr_Data[1]) );
  NOR2X2M U109 ( .A(n31), .B(n163), .Y(Wr_Data[0]) );
  NOR2X2M U110 ( .A(n87), .B(n83), .Y(n67) );
  NOR2X2M U111 ( .A(n86), .B(n87), .Y(n69) );
  OAI22X1M U112 ( .A0(n64), .A1(n73), .B0(n74), .B1(n47), .Y(n152) );
  AOI21X2M U113 ( .A0(n75), .A1(n76), .B0(n64), .Y(n74) );
  AOI221XLM U114 ( .A0(N418), .A1(n66), .B0(N411), .B1(n67), .C0(n77), .Y(n73)
         );
  CLKXOR2X2M U115 ( .A(N462), .B(n164), .Y(N418) );
  OAI22X1M U116 ( .A0(n38), .A1(n37), .B0(n64), .B1(n80), .Y(n153) );
  AOI221XLM U117 ( .A0(n36), .A1(n66), .B0(n36), .B1(n67), .C0(n81), .Y(n80)
         );
  OAI2BB1X2M U118 ( .A0N(n36), .A1N(n69), .B0(n82), .Y(n81) );
  AOI22X1M U119 ( .A0(n75), .A1(n38), .B0(n36), .B1(n71), .Y(n82) );
  NAND3X2M U120 ( .A(n163), .B(n159), .C(n126), .Y(n86) );
  NAND3X2M U121 ( .A(n163), .B(n159), .C(n109), .Y(n83) );
  INVX2M U122 ( .A(n64), .Y(n37) );
  OAI2BB1X2M U123 ( .A0N(N425), .A1N(n69), .B0(n78), .Y(n77) );
  CLKXOR2X2M U124 ( .A(N459), .B(n165), .Y(N425) );
  AOI22X1M U125 ( .A0(n75), .A1(n79), .B0(N432), .B1(n71), .Y(n78) );
  AND2X2M U126 ( .A(N428), .B(n29), .Y(N459) );
  OAI2BB1X2M U127 ( .A0N(N424), .A1N(n69), .B0(n70), .Y(n68) );
  XNOR2X2M U128 ( .A(N458), .B(n36), .Y(N424) );
  AOI2BB2XLM U129 ( .B0(N431), .B1(n71), .A0N(n55), .A1N(n72), .Y(n70) );
  XNOR2X2M U130 ( .A(N455), .B(n36), .Y(N431) );
  AND2X2M U131 ( .A(n30), .B(N428), .Y(N454) );
  AND2X2M U132 ( .A(n30), .B(N428), .Y(N457) );
  AND2X2M U133 ( .A(n30), .B(N428), .Y(N463) );
  AND2X2M U134 ( .A(n30), .B(N428), .Y(N460) );
  AO22X1M U135 ( .A0(n130), .A1(n144), .B0(n79), .B1(n48), .Y(n143) );
  AND2X2M U136 ( .A(N428), .B(n29), .Y(N462) );
  INVX2M U137 ( .A(n84), .Y(n54) );
  AND2X2M U138 ( .A(N458), .B(N457), .Y(n165) );
  AND2X2M U139 ( .A(N461), .B(N460), .Y(n164) );
  CLKXOR2X2M U140 ( .A(n8), .B(n9), .Y(N432) );
  NAND2X2M U141 ( .A(N428), .B(n29), .Y(n8) );
  NAND2X2M U142 ( .A(N455), .B(N454), .Y(n9) );
  CLKXOR2X2M U143 ( .A(n10), .B(n28), .Y(N411) );
  NAND2X2M U144 ( .A(N428), .B(n29), .Y(n10) );
  NAND2X2M U145 ( .A(N464), .B(N463), .Y(n28) );
  OAI31X1M U146 ( .A0(n105), .A1(n58), .A2(n57), .B0(n124), .Y(n121) );
  OAI21X2M U147 ( .A0(n125), .A1(n46), .B0(n48), .Y(n124) );
  INVX2M U148 ( .A(n108), .Y(n57) );
  OAI211X2M U149 ( .A0(n103), .A1(n134), .B0(n135), .C0(n136), .Y(n133) );
  NOR2X2M U150 ( .A(n72), .B(n29), .Y(n115) );
  OAI2BB2X1M U151 ( .B0(n127), .B1(n110), .A0N(n66), .A1N(n52), .Y(n117) );
  NAND2X2M U152 ( .A(n130), .B(n141), .Y(n105) );
  AOI21X2M U153 ( .A0(n76), .A1(n42), .B0(n136), .Y(n137) );
  NAND2X2M U154 ( .A(n30), .B(n46), .Y(n72) );
  NAND3X2M U155 ( .A(n107), .B(n83), .C(n108), .Y(n85) );
  INVX2M U156 ( .A(n99), .Y(n51) );
  AND2X2M U157 ( .A(n128), .B(n123), .Y(n136) );
  INVX2M U158 ( .A(n30), .Y(n38) );
  INVX2M U159 ( .A(n35), .Y(n34) );
  INVX2M U160 ( .A(RST), .Y(n35) );
  NOR2X2M U161 ( .A(n53), .B(CU_STATE[3]), .Y(n141) );
  NOR2X2M U162 ( .A(CU_STATE[3]), .B(CU_STATE[0]), .Y(n144) );
  NOR2X2M U163 ( .A(Frame_Counter[1]), .B(n30), .Y(n103) );
  OAI22X1M U164 ( .A0(n61), .A1(n27), .B0(n63), .B1(n62), .Y(n150) );
  NAND3X2M U165 ( .A(n141), .B(n50), .C(CU_STATE[2]), .Y(n128) );
  NAND3X2M U166 ( .A(n144), .B(n50), .C(CU_STATE[2]), .Y(n134) );
  INVX2M U167 ( .A(Frame_Counter[1]), .Y(n46) );
  BUFX2M U168 ( .A(Frame_Counter[0]), .Y(n30) );
  INVX2M U169 ( .A(CU_STATE[1]), .Y(n50) );
  NAND2X2M U170 ( .A(\send_CNT[0] ), .B(n62), .Y(n61) );
  BUFX2M U171 ( .A(Frame_Counter[2]), .Y(n29) );
  INVX2M U172 ( .A(CU_STATE[0]), .Y(n53) );
  NAND2X2M U173 ( .A(n60), .B(n61), .Y(n149) );
  AO21XLM U174 ( .A0(n62), .A1(n27), .B0(\send_CNT[0] ), .Y(n60) );
  NOR2X2M U175 ( .A(CU_STATE[2]), .B(CU_STATE[1]), .Y(n130) );
  AO22X1M U176 ( .A0(Address[3]), .A1(Rd_En), .B0(Address_FF[3]), .B1(n7), .Y(
        out_address[3]) );
  NOR2X2M U177 ( .A(n50), .B(CU_STATE[2]), .Y(n59) );
  AO22X1M U178 ( .A0(Rd_En), .A1(Address[2]), .B0(Address_FF[2]), .B1(n7), .Y(
        out_address[2]) );
  NAND3X2M U179 ( .A(CU_STATE[0]), .B(CU_STATE[3]), .C(n130), .Y(n99) );
  NAND2X2M U180 ( .A(n30), .B(Frame_Counter[1]), .Y(n76) );
  NAND3X2M U181 ( .A(n144), .B(CU_STATE[1]), .C(CU_STATE[2]), .Y(n111) );
  NAND3X2M U182 ( .A(CU_STATE[3]), .B(n53), .C(n130), .Y(n106) );
  INVX2M U183 ( .A(Rx_P_Data[2]), .Y(n161) );
  INVX2M U184 ( .A(Rx_P_Data[1]), .Y(n162) );
  INVX2M U185 ( .A(Rx_P_Data[0]), .Y(n163) );
  INVX2M U186 ( .A(Rx_P_Data[3]), .Y(n160) );
  AO22X1M U187 ( .A0(Rd_En), .A1(Address[1]), .B0(Address_FF[1]), .B1(n7), .Y(
        out_address[1]) );
  AO22X1M U188 ( .A0(Address[0]), .A1(Rd_En), .B0(Address_FF[0]), .B1(n7), .Y(
        out_address[0]) );
  AOI21X2M U189 ( .A0(N428), .A1(Rx_D_VLD), .B0(n54), .Y(n64) );
  NOR4X1M U190 ( .A(n158), .B(n162), .C(Rx_P_Data[2]), .D(Rx_P_Data[6]), .Y(
        n109) );
  NOR4X1M U191 ( .A(n157), .B(n161), .C(Rx_P_Data[1]), .D(Rx_P_Data[5]), .Y(
        n126) );
  NAND3X2M U192 ( .A(n145), .B(n146), .C(n147), .Y(N428) );
  XNOR2X2M U193 ( .A(Expected_NO_Frames[2]), .B(n29), .Y(n145) );
  XNOR2X2M U194 ( .A(Expected_NO_Frames[0]), .B(n30), .Y(n146) );
  XNOR2X2M U195 ( .A(Expected_NO_Frames[1]), .B(Frame_Counter[1]), .Y(n147) );
  NOR2BX2M U196 ( .AN(Rx_P_Data[7]), .B(n31), .Y(Wr_Data[7]) );
  NAND2X2M U197 ( .A(Rx_P_Data[7]), .B(Rx_P_Data[3]), .Y(n87) );
  NAND3X2M U198 ( .A(Rx_P_Data[4]), .B(Rx_P_Data[0]), .C(n126), .Y(n108) );
  NAND2X2M U199 ( .A(Rx_D_VLD), .B(n55), .Y(n84) );
  NAND3X2M U200 ( .A(n109), .B(Rx_P_Data[0]), .C(Rx_P_Data[4]), .Y(n107) );
  OAI2BB2X1M U201 ( .B0(n83), .B1(n84), .A0N(n84), .A1N(Expected_NO_Frames[0]), 
        .Y(n154) );
  OAI2BB2X1M U202 ( .B0(n86), .B1(n84), .A0N(n84), .A1N(Expected_NO_Frames[2]), 
        .Y(n156) );
  NAND2X2M U203 ( .A(\send_CNT[0] ), .B(n27), .Y(n63) );
  INVX2M U204 ( .A(Rx_P_Data[4]), .Y(n159) );
  INVX2M U205 ( .A(Rx_P_Data[5]), .Y(n158) );
  INVX2M U206 ( .A(Rx_P_Data[6]), .Y(n157) );
  NAND2BX2M U207 ( .AN(n138), .B(n139), .Y(NXT_STATE[0]) );
  OAI211X2M U208 ( .A0(n45), .A1(n123), .B0(n142), .C0(n106), .Y(n138) );
  AOI211X2M U209 ( .A0(Rd_En), .A1(n33), .B0(n117), .C0(n114), .Y(n139) );
  OAI31X1M U210 ( .A0(n51), .A1(Rd_En), .A2(n143), .B0(Rx_D_VLD), .Y(n142) );
  AND2X2M U211 ( .A(Frame_Counter[1]), .B(N428), .Y(N458) );
  AND2X2M U212 ( .A(Frame_Counter[1]), .B(N428), .Y(N455) );
  AND2X2M U213 ( .A(Frame_Counter[1]), .B(N428), .Y(N464) );
  AND2X2M U214 ( .A(Frame_Counter[1]), .B(N428), .Y(N461) );
  AO22X1M U215 ( .A0(n84), .A1(Expected_NO_Frames[1]), .B0(n85), .B1(n54), .Y(
        n155) );
  NAND3X2M U216 ( .A(n141), .B(CU_STATE[1]), .C(CU_STATE[2]), .Y(n110) );
  INVX2M U217 ( .A(n129), .Y(n39) );
  OAI2B11X2M U218 ( .A1N(CU_STATE[3]), .A0(n130), .B0(n131), .C0(n132), .Y(
        n129) );
  AOI31X2M U219 ( .A0(n49), .A1(n47), .A2(n103), .B0(n137), .Y(n131) );
  AOI22X1M U220 ( .A0(n29), .A1(n133), .B0(n52), .B1(n87), .Y(n132) );
  AND3X2M U221 ( .A(CU_STATE[3]), .B(n53), .C(n59), .Y(sys_Error) );
  NAND3BX2M U222 ( .AN(ALU_EN), .B(n140), .C(n110), .Y(Gate_En) );
  INVX2M U3 ( .A(1'b0), .Y(CLKDIV_EN) );
endmodule


module REG_FILE_test_1 ( adress, WrData, clk, RST, WrEn, RdEn, RdData, REG0, 
        REG1, REG2, REG3, RdData_Valid, test_si2, test_si1, test_so2, test_so1, 
        test_se );
  input [3:0] adress;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input clk, RST, WrEn, RdEn, test_si2, test_si1, test_se;
  output RdData_Valid, test_so2, test_so1;
  wire   N12, N13, N14, N15, \REG_MEM[15][7] , \REG_MEM[15][6] ,
         \REG_MEM[15][5] , \REG_MEM[15][4] , \REG_MEM[15][3] ,
         \REG_MEM[15][2] , \REG_MEM[15][1] , \REG_MEM[15][0] ,
         \REG_MEM[14][7] , \REG_MEM[14][6] , \REG_MEM[14][5] ,
         \REG_MEM[14][4] , \REG_MEM[14][3] , \REG_MEM[14][2] ,
         \REG_MEM[14][1] , \REG_MEM[14][0] , \REG_MEM[13][7] ,
         \REG_MEM[13][6] , \REG_MEM[13][5] , \REG_MEM[13][4] ,
         \REG_MEM[13][3] , \REG_MEM[13][2] , \REG_MEM[13][1] ,
         \REG_MEM[13][0] , \REG_MEM[12][7] , \REG_MEM[12][6] ,
         \REG_MEM[12][5] , \REG_MEM[12][4] , \REG_MEM[12][3] ,
         \REG_MEM[12][2] , \REG_MEM[12][1] , \REG_MEM[12][0] ,
         \REG_MEM[11][7] , \REG_MEM[11][6] , \REG_MEM[11][5] ,
         \REG_MEM[11][4] , \REG_MEM[11][3] , \REG_MEM[11][2] ,
         \REG_MEM[11][1] , \REG_MEM[11][0] , \REG_MEM[10][7] ,
         \REG_MEM[10][6] , \REG_MEM[10][5] , \REG_MEM[10][4] ,
         \REG_MEM[10][3] , \REG_MEM[10][2] , \REG_MEM[10][1] ,
         \REG_MEM[10][0] , \REG_MEM[9][7] , \REG_MEM[9][6] , \REG_MEM[9][5] ,
         \REG_MEM[9][4] , \REG_MEM[9][3] , \REG_MEM[9][2] , \REG_MEM[9][1] ,
         \REG_MEM[9][0] , \REG_MEM[8][7] , \REG_MEM[8][6] , \REG_MEM[8][5] ,
         \REG_MEM[8][4] , \REG_MEM[8][3] , \REG_MEM[8][2] , \REG_MEM[8][1] ,
         \REG_MEM[8][0] , \REG_MEM[7][7] , \REG_MEM[7][6] , \REG_MEM[7][5] ,
         \REG_MEM[7][4] , \REG_MEM[7][3] , \REG_MEM[7][2] , \REG_MEM[7][1] ,
         \REG_MEM[7][0] , \REG_MEM[6][7] , \REG_MEM[6][6] , \REG_MEM[6][5] ,
         \REG_MEM[6][4] , \REG_MEM[6][3] , \REG_MEM[6][2] , \REG_MEM[6][1] ,
         \REG_MEM[6][0] , \REG_MEM[5][7] , \REG_MEM[5][6] , \REG_MEM[5][5] ,
         \REG_MEM[5][4] , \REG_MEM[5][3] , \REG_MEM[5][2] , \REG_MEM[5][1] ,
         \REG_MEM[5][0] , \REG_MEM[4][7] , \REG_MEM[4][6] , \REG_MEM[4][5] ,
         \REG_MEM[4][4] , \REG_MEM[4][3] , \REG_MEM[4][2] , \REG_MEM[4][1] ,
         \REG_MEM[4][0] , N51, N52, N53, N54, N55, N56, N57, N58, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n136, n137,
         n138, n139, n140, n141, n142, n143, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356;
  wire   [3:0] adress_FF;
  assign N12 = adress[0];
  assign N13 = adress[1];
  assign N14 = adress[2];
  assign N15 = adress[3];
  assign test_so1 = \REG_MEM[7][1] ;
  assign test_so2 = adress_FF[3];

  SDFFRQX2M \REG_MEM_reg[13][0]  ( .D(n186), .SI(\REG_MEM[12][7] ), .SE(
        test_se), .CK(clk), .RN(n335), .Q(\REG_MEM[13][0] ) );
  SDFFRQX2M \REG_MEM_reg[13][1]  ( .D(n187), .SI(\REG_MEM[13][0] ), .SE(
        test_se), .CK(clk), .RN(n335), .Q(\REG_MEM[13][1] ) );
  SDFFRQX2M \REG_MEM_reg[13][2]  ( .D(n188), .SI(\REG_MEM[13][1] ), .SE(
        test_se), .CK(clk), .RN(n335), .Q(\REG_MEM[13][2] ) );
  SDFFRQX2M \REG_MEM_reg[13][3]  ( .D(n189), .SI(\REG_MEM[13][2] ), .SE(
        test_se), .CK(clk), .RN(n334), .Q(\REG_MEM[13][3] ) );
  SDFFRQX2M \REG_MEM_reg[13][4]  ( .D(n190), .SI(\REG_MEM[13][3] ), .SE(
        test_se), .CK(clk), .RN(n334), .Q(\REG_MEM[13][4] ) );
  SDFFRQX2M \REG_MEM_reg[13][5]  ( .D(n191), .SI(\REG_MEM[13][4] ), .SE(
        test_se), .CK(clk), .RN(n334), .Q(\REG_MEM[13][5] ) );
  SDFFRQX2M \REG_MEM_reg[13][6]  ( .D(n192), .SI(\REG_MEM[13][5] ), .SE(
        test_se), .CK(clk), .RN(n334), .Q(\REG_MEM[13][6] ) );
  SDFFRQX2M \REG_MEM_reg[13][7]  ( .D(n193), .SI(\REG_MEM[13][6] ), .SE(
        test_se), .CK(clk), .RN(n334), .Q(\REG_MEM[13][7] ) );
  SDFFRQX2M \REG_MEM_reg[9][0]  ( .D(n218), .SI(\REG_MEM[8][7] ), .SE(test_se), 
        .CK(clk), .RN(n333), .Q(\REG_MEM[9][0] ) );
  SDFFRQX2M \REG_MEM_reg[9][1]  ( .D(n219), .SI(\REG_MEM[9][0] ), .SE(test_se), 
        .CK(clk), .RN(n334), .Q(\REG_MEM[9][1] ) );
  SDFFRQX2M \REG_MEM_reg[9][2]  ( .D(n220), .SI(\REG_MEM[9][1] ), .SE(test_se), 
        .CK(clk), .RN(n333), .Q(\REG_MEM[9][2] ) );
  SDFFRQX2M \REG_MEM_reg[9][3]  ( .D(n221), .SI(\REG_MEM[9][2] ), .SE(test_se), 
        .CK(clk), .RN(n333), .Q(\REG_MEM[9][3] ) );
  SDFFRQX2M \REG_MEM_reg[9][4]  ( .D(n222), .SI(\REG_MEM[9][3] ), .SE(test_se), 
        .CK(clk), .RN(n333), .Q(\REG_MEM[9][4] ) );
  SDFFRQX2M \REG_MEM_reg[9][5]  ( .D(n223), .SI(\REG_MEM[9][4] ), .SE(test_se), 
        .CK(clk), .RN(n333), .Q(\REG_MEM[9][5] ) );
  SDFFRQX2M \REG_MEM_reg[9][6]  ( .D(n224), .SI(\REG_MEM[9][5] ), .SE(test_se), 
        .CK(clk), .RN(n333), .Q(\REG_MEM[9][6] ) );
  SDFFRQX2M \REG_MEM_reg[9][7]  ( .D(n225), .SI(\REG_MEM[9][6] ), .SE(test_se), 
        .CK(clk), .RN(n333), .Q(\REG_MEM[9][7] ) );
  SDFFRQX2M \REG_MEM_reg[5][0]  ( .D(n250), .SI(\REG_MEM[4][7] ), .SE(test_se), 
        .CK(clk), .RN(n332), .Q(\REG_MEM[5][0] ) );
  SDFFRQX2M \REG_MEM_reg[5][1]  ( .D(n251), .SI(\REG_MEM[5][0] ), .SE(test_se), 
        .CK(clk), .RN(n332), .Q(\REG_MEM[5][1] ) );
  SDFFRQX2M \REG_MEM_reg[5][2]  ( .D(n252), .SI(\REG_MEM[5][1] ), .SE(test_se), 
        .CK(clk), .RN(n332), .Q(\REG_MEM[5][2] ) );
  SDFFRQX2M \REG_MEM_reg[5][3]  ( .D(n253), .SI(\REG_MEM[5][2] ), .SE(test_se), 
        .CK(clk), .RN(n332), .Q(\REG_MEM[5][3] ) );
  SDFFRQX2M \REG_MEM_reg[5][4]  ( .D(n254), .SI(\REG_MEM[5][3] ), .SE(test_se), 
        .CK(clk), .RN(n332), .Q(\REG_MEM[5][4] ) );
  SDFFRQX2M \REG_MEM_reg[5][5]  ( .D(n255), .SI(\REG_MEM[5][4] ), .SE(test_se), 
        .CK(clk), .RN(n332), .Q(\REG_MEM[5][5] ) );
  SDFFRQX2M \REG_MEM_reg[5][6]  ( .D(n256), .SI(\REG_MEM[5][5] ), .SE(test_se), 
        .CK(clk), .RN(n332), .Q(\REG_MEM[5][6] ) );
  SDFFRQX2M \REG_MEM_reg[5][7]  ( .D(n257), .SI(\REG_MEM[5][6] ), .SE(test_se), 
        .CK(clk), .RN(n332), .Q(\REG_MEM[5][7] ) );
  SDFFRQX2M \REG_MEM_reg[15][0]  ( .D(n170), .SI(\REG_MEM[14][7] ), .SE(
        test_se), .CK(clk), .RN(n335), .Q(\REG_MEM[15][0] ) );
  SDFFRQX2M \REG_MEM_reg[15][1]  ( .D(n171), .SI(\REG_MEM[15][0] ), .SE(
        test_se), .CK(clk), .RN(n335), .Q(\REG_MEM[15][1] ) );
  SDFFRQX2M \REG_MEM_reg[15][2]  ( .D(n172), .SI(\REG_MEM[15][1] ), .SE(
        test_se), .CK(clk), .RN(n335), .Q(\REG_MEM[15][2] ) );
  SDFFRQX2M \REG_MEM_reg[15][3]  ( .D(n173), .SI(\REG_MEM[15][2] ), .SE(
        test_se), .CK(clk), .RN(n335), .Q(\REG_MEM[15][3] ) );
  SDFFRQX2M \REG_MEM_reg[15][4]  ( .D(n174), .SI(\REG_MEM[15][3] ), .SE(
        test_se), .CK(clk), .RN(n335), .Q(\REG_MEM[15][4] ) );
  SDFFRQX2M \REG_MEM_reg[15][5]  ( .D(n175), .SI(\REG_MEM[15][4] ), .SE(
        test_se), .CK(clk), .RN(n335), .Q(\REG_MEM[15][5] ) );
  SDFFRQX2M \REG_MEM_reg[15][6]  ( .D(n176), .SI(\REG_MEM[15][5] ), .SE(
        test_se), .CK(clk), .RN(n335), .Q(\REG_MEM[15][6] ) );
  SDFFRQX2M \REG_MEM_reg[15][7]  ( .D(n177), .SI(\REG_MEM[15][6] ), .SE(
        test_se), .CK(clk), .RN(n335), .Q(\REG_MEM[15][7] ) );
  SDFFRQX2M \REG_MEM_reg[11][0]  ( .D(n202), .SI(\REG_MEM[10][7] ), .SE(
        test_se), .CK(clk), .RN(n334), .Q(\REG_MEM[11][0] ) );
  SDFFRQX2M \REG_MEM_reg[11][1]  ( .D(n203), .SI(\REG_MEM[11][0] ), .SE(
        test_se), .CK(clk), .RN(n334), .Q(\REG_MEM[11][1] ) );
  SDFFRQX2M \REG_MEM_reg[11][2]  ( .D(n204), .SI(\REG_MEM[11][1] ), .SE(
        test_se), .CK(clk), .RN(n334), .Q(\REG_MEM[11][2] ) );
  SDFFRQX2M \REG_MEM_reg[11][3]  ( .D(n205), .SI(\REG_MEM[11][2] ), .SE(
        test_se), .CK(clk), .RN(n334), .Q(\REG_MEM[11][3] ) );
  SDFFRQX2M \REG_MEM_reg[11][4]  ( .D(n206), .SI(\REG_MEM[11][3] ), .SE(
        test_se), .CK(clk), .RN(n334), .Q(\REG_MEM[11][4] ) );
  SDFFRQX2M \REG_MEM_reg[11][5]  ( .D(n207), .SI(\REG_MEM[11][4] ), .SE(
        test_se), .CK(clk), .RN(n334), .Q(\REG_MEM[11][5] ) );
  SDFFRQX2M \REG_MEM_reg[11][6]  ( .D(n208), .SI(\REG_MEM[11][5] ), .SE(
        test_se), .CK(clk), .RN(n334), .Q(\REG_MEM[11][6] ) );
  SDFFRQX2M \REG_MEM_reg[11][7]  ( .D(n209), .SI(\REG_MEM[11][6] ), .SE(
        test_se), .CK(clk), .RN(n334), .Q(\REG_MEM[11][7] ) );
  SDFFRQX2M \REG_MEM_reg[7][0]  ( .D(n234), .SI(\REG_MEM[6][7] ), .SE(test_se), 
        .CK(clk), .RN(n333), .Q(\REG_MEM[7][0] ) );
  SDFFRQX2M \REG_MEM_reg[7][1]  ( .D(n235), .SI(\REG_MEM[7][0] ), .SE(test_se), 
        .CK(clk), .RN(n333), .Q(\REG_MEM[7][1] ) );
  SDFFRQX2M \REG_MEM_reg[7][2]  ( .D(n236), .SI(test_si2), .SE(test_se), .CK(
        clk), .RN(n333), .Q(\REG_MEM[7][2] ) );
  SDFFRQX2M \REG_MEM_reg[7][3]  ( .D(n237), .SI(\REG_MEM[7][2] ), .SE(test_se), 
        .CK(clk), .RN(n333), .Q(\REG_MEM[7][3] ) );
  SDFFRQX2M \REG_MEM_reg[7][4]  ( .D(n238), .SI(\REG_MEM[7][3] ), .SE(test_se), 
        .CK(clk), .RN(n333), .Q(\REG_MEM[7][4] ) );
  SDFFRQX2M \REG_MEM_reg[7][5]  ( .D(n239), .SI(\REG_MEM[7][4] ), .SE(test_se), 
        .CK(clk), .RN(n333), .Q(\REG_MEM[7][5] ) );
  SDFFRQX2M \REG_MEM_reg[7][6]  ( .D(n240), .SI(\REG_MEM[7][5] ), .SE(test_se), 
        .CK(clk), .RN(n332), .Q(\REG_MEM[7][6] ) );
  SDFFRQX2M \REG_MEM_reg[7][7]  ( .D(n241), .SI(\REG_MEM[7][6] ), .SE(test_se), 
        .CK(clk), .RN(n333), .Q(\REG_MEM[7][7] ) );
  SDFFRQX2M \REG_MEM_reg[14][0]  ( .D(n178), .SI(\REG_MEM[13][7] ), .SE(
        test_se), .CK(clk), .RN(n340), .Q(\REG_MEM[14][0] ) );
  SDFFRQX2M \REG_MEM_reg[14][1]  ( .D(n179), .SI(\REG_MEM[14][0] ), .SE(
        test_se), .CK(clk), .RN(n340), .Q(\REG_MEM[14][1] ) );
  SDFFRQX2M \REG_MEM_reg[14][2]  ( .D(n180), .SI(\REG_MEM[14][1] ), .SE(
        test_se), .CK(clk), .RN(n340), .Q(\REG_MEM[14][2] ) );
  SDFFRQX2M \REG_MEM_reg[14][3]  ( .D(n181), .SI(\REG_MEM[14][2] ), .SE(
        test_se), .CK(clk), .RN(n340), .Q(\REG_MEM[14][3] ) );
  SDFFRQX2M \REG_MEM_reg[14][4]  ( .D(n182), .SI(\REG_MEM[14][3] ), .SE(
        test_se), .CK(clk), .RN(n339), .Q(\REG_MEM[14][4] ) );
  SDFFRQX2M \REG_MEM_reg[14][5]  ( .D(n183), .SI(\REG_MEM[14][4] ), .SE(
        test_se), .CK(clk), .RN(n339), .Q(\REG_MEM[14][5] ) );
  SDFFRQX2M \REG_MEM_reg[14][6]  ( .D(n184), .SI(\REG_MEM[14][5] ), .SE(
        test_se), .CK(clk), .RN(n339), .Q(\REG_MEM[14][6] ) );
  SDFFRQX2M \REG_MEM_reg[14][7]  ( .D(n185), .SI(\REG_MEM[14][6] ), .SE(
        test_se), .CK(clk), .RN(n339), .Q(\REG_MEM[14][7] ) );
  SDFFRQX2M \REG_MEM_reg[10][0]  ( .D(n210), .SI(\REG_MEM[9][7] ), .SE(test_se), .CK(clk), .RN(n339), .Q(\REG_MEM[10][0] ) );
  SDFFRQX2M \REG_MEM_reg[10][1]  ( .D(n211), .SI(\REG_MEM[10][0] ), .SE(
        test_se), .CK(clk), .RN(n339), .Q(\REG_MEM[10][1] ) );
  SDFFRQX2M \REG_MEM_reg[10][2]  ( .D(n212), .SI(\REG_MEM[10][1] ), .SE(
        test_se), .CK(clk), .RN(n338), .Q(\REG_MEM[10][2] ) );
  SDFFRQX2M \REG_MEM_reg[10][3]  ( .D(n213), .SI(\REG_MEM[10][2] ), .SE(
        test_se), .CK(clk), .RN(n338), .Q(\REG_MEM[10][3] ) );
  SDFFRQX2M \REG_MEM_reg[10][4]  ( .D(n214), .SI(\REG_MEM[10][3] ), .SE(
        test_se), .CK(clk), .RN(n338), .Q(\REG_MEM[10][4] ) );
  SDFFRQX2M \REG_MEM_reg[10][5]  ( .D(n215), .SI(\REG_MEM[10][4] ), .SE(
        test_se), .CK(clk), .RN(n338), .Q(\REG_MEM[10][5] ) );
  SDFFRQX2M \REG_MEM_reg[10][6]  ( .D(n216), .SI(\REG_MEM[10][5] ), .SE(
        test_se), .CK(clk), .RN(n338), .Q(\REG_MEM[10][6] ) );
  SDFFRQX2M \REG_MEM_reg[10][7]  ( .D(n217), .SI(\REG_MEM[10][6] ), .SE(
        test_se), .CK(clk), .RN(n338), .Q(\REG_MEM[10][7] ) );
  SDFFRQX2M \REG_MEM_reg[6][0]  ( .D(n242), .SI(\REG_MEM[5][7] ), .SE(test_se), 
        .CK(clk), .RN(n337), .Q(\REG_MEM[6][0] ) );
  SDFFRQX2M \REG_MEM_reg[6][1]  ( .D(n243), .SI(\REG_MEM[6][0] ), .SE(test_se), 
        .CK(clk), .RN(n337), .Q(\REG_MEM[6][1] ) );
  SDFFRQX2M \REG_MEM_reg[6][2]  ( .D(n244), .SI(\REG_MEM[6][1] ), .SE(test_se), 
        .CK(clk), .RN(n337), .Q(\REG_MEM[6][2] ) );
  SDFFRQX2M \REG_MEM_reg[6][3]  ( .D(n245), .SI(\REG_MEM[6][2] ), .SE(test_se), 
        .CK(clk), .RN(n337), .Q(\REG_MEM[6][3] ) );
  SDFFRQX2M \REG_MEM_reg[6][4]  ( .D(n246), .SI(\REG_MEM[6][3] ), .SE(test_se), 
        .CK(clk), .RN(n337), .Q(\REG_MEM[6][4] ) );
  SDFFRQX2M \REG_MEM_reg[6][5]  ( .D(n247), .SI(\REG_MEM[6][4] ), .SE(test_se), 
        .CK(clk), .RN(n337), .Q(\REG_MEM[6][5] ) );
  SDFFRQX2M \REG_MEM_reg[6][6]  ( .D(n248), .SI(\REG_MEM[6][5] ), .SE(test_se), 
        .CK(clk), .RN(n337), .Q(\REG_MEM[6][6] ) );
  SDFFRQX2M \REG_MEM_reg[6][7]  ( .D(n249), .SI(\REG_MEM[6][6] ), .SE(test_se), 
        .CK(clk), .RN(n337), .Q(\REG_MEM[6][7] ) );
  SDFFRQX2M \REG_MEM_reg[12][0]  ( .D(n194), .SI(\REG_MEM[11][7] ), .SE(
        test_se), .CK(clk), .RN(n339), .Q(\REG_MEM[12][0] ) );
  SDFFRQX2M \REG_MEM_reg[12][1]  ( .D(n195), .SI(\REG_MEM[12][0] ), .SE(
        test_se), .CK(clk), .RN(n339), .Q(\REG_MEM[12][1] ) );
  SDFFRQX2M \REG_MEM_reg[12][2]  ( .D(n196), .SI(\REG_MEM[12][1] ), .SE(
        test_se), .CK(clk), .RN(n339), .Q(\REG_MEM[12][2] ) );
  SDFFRQX2M \REG_MEM_reg[12][3]  ( .D(n197), .SI(\REG_MEM[12][2] ), .SE(
        test_se), .CK(clk), .RN(n339), .Q(\REG_MEM[12][3] ) );
  SDFFRQX2M \REG_MEM_reg[12][4]  ( .D(n198), .SI(\REG_MEM[12][3] ), .SE(
        test_se), .CK(clk), .RN(n339), .Q(\REG_MEM[12][4] ) );
  SDFFRQX2M \REG_MEM_reg[12][5]  ( .D(n199), .SI(\REG_MEM[12][4] ), .SE(
        test_se), .CK(clk), .RN(n339), .Q(\REG_MEM[12][5] ) );
  SDFFRQX2M \REG_MEM_reg[12][6]  ( .D(n200), .SI(\REG_MEM[12][5] ), .SE(
        test_se), .CK(clk), .RN(n339), .Q(\REG_MEM[12][6] ) );
  SDFFRQX2M \REG_MEM_reg[12][7]  ( .D(n201), .SI(\REG_MEM[12][6] ), .SE(
        test_se), .CK(clk), .RN(n339), .Q(\REG_MEM[12][7] ) );
  SDFFRQX2M \REG_MEM_reg[8][0]  ( .D(n226), .SI(\REG_MEM[7][7] ), .SE(test_se), 
        .CK(clk), .RN(n338), .Q(\REG_MEM[8][0] ) );
  SDFFRQX2M \REG_MEM_reg[8][1]  ( .D(n227), .SI(\REG_MEM[8][0] ), .SE(test_se), 
        .CK(clk), .RN(n338), .Q(\REG_MEM[8][1] ) );
  SDFFRQX2M \REG_MEM_reg[8][2]  ( .D(n228), .SI(\REG_MEM[8][1] ), .SE(test_se), 
        .CK(clk), .RN(n338), .Q(\REG_MEM[8][2] ) );
  SDFFRQX2M \REG_MEM_reg[8][3]  ( .D(n229), .SI(\REG_MEM[8][2] ), .SE(test_se), 
        .CK(clk), .RN(n338), .Q(\REG_MEM[8][3] ) );
  SDFFRQX2M \REG_MEM_reg[8][4]  ( .D(n230), .SI(\REG_MEM[8][3] ), .SE(test_se), 
        .CK(clk), .RN(n338), .Q(\REG_MEM[8][4] ) );
  SDFFRQX2M \REG_MEM_reg[8][5]  ( .D(n231), .SI(\REG_MEM[8][4] ), .SE(test_se), 
        .CK(clk), .RN(n338), .Q(\REG_MEM[8][5] ) );
  SDFFRQX2M \REG_MEM_reg[8][6]  ( .D(n232), .SI(\REG_MEM[8][5] ), .SE(test_se), 
        .CK(clk), .RN(n338), .Q(\REG_MEM[8][6] ) );
  SDFFRQX2M \REG_MEM_reg[8][7]  ( .D(n233), .SI(\REG_MEM[8][6] ), .SE(test_se), 
        .CK(clk), .RN(n338), .Q(\REG_MEM[8][7] ) );
  SDFFRQX2M \REG_MEM_reg[4][0]  ( .D(n258), .SI(REG3[7]), .SE(test_se), .CK(
        clk), .RN(n337), .Q(\REG_MEM[4][0] ) );
  SDFFRQX2M \REG_MEM_reg[4][1]  ( .D(n259), .SI(\REG_MEM[4][0] ), .SE(test_se), 
        .CK(clk), .RN(n337), .Q(\REG_MEM[4][1] ) );
  SDFFRQX2M \REG_MEM_reg[4][2]  ( .D(n260), .SI(\REG_MEM[4][1] ), .SE(test_se), 
        .CK(clk), .RN(n337), .Q(\REG_MEM[4][2] ) );
  SDFFRQX2M \REG_MEM_reg[4][3]  ( .D(n261), .SI(\REG_MEM[4][2] ), .SE(test_se), 
        .CK(clk), .RN(n337), .Q(\REG_MEM[4][3] ) );
  SDFFRQX2M \REG_MEM_reg[4][4]  ( .D(n262), .SI(\REG_MEM[4][3] ), .SE(test_se), 
        .CK(clk), .RN(n337), .Q(\REG_MEM[4][4] ) );
  SDFFRQX2M \REG_MEM_reg[4][5]  ( .D(n263), .SI(\REG_MEM[4][4] ), .SE(test_se), 
        .CK(clk), .RN(n337), .Q(\REG_MEM[4][5] ) );
  SDFFRQX2M \REG_MEM_reg[4][6]  ( .D(n264), .SI(\REG_MEM[4][5] ), .SE(test_se), 
        .CK(clk), .RN(n336), .Q(\REG_MEM[4][6] ) );
  SDFFRQX2M \REG_MEM_reg[4][7]  ( .D(n265), .SI(\REG_MEM[4][6] ), .SE(test_se), 
        .CK(clk), .RN(n336), .Q(\REG_MEM[4][7] ) );
  SDFFRQX2M \REG_MEM_reg[1][0]  ( .D(n282), .SI(REG0[7]), .SE(test_se), .CK(
        clk), .RN(n331), .Q(REG1[0]) );
  SDFFRQX2M \REG_MEM_reg[1][1]  ( .D(n283), .SI(REG1[0]), .SE(test_se), .CK(
        clk), .RN(n331), .Q(REG1[1]) );
  SDFFRQX2M \REG_MEM_reg[1][2]  ( .D(n284), .SI(REG1[1]), .SE(test_se), .CK(
        clk), .RN(n331), .Q(REG1[2]) );
  SDFFRQX2M \REG_MEM_reg[1][3]  ( .D(n285), .SI(REG1[2]), .SE(test_se), .CK(
        clk), .RN(n331), .Q(REG1[3]) );
  SDFFRQX2M \REG_MEM_reg[1][4]  ( .D(n286), .SI(REG1[3]), .SE(test_se), .CK(
        clk), .RN(n331), .Q(REG1[4]) );
  SDFFRQX2M \REG_MEM_reg[1][5]  ( .D(n287), .SI(REG1[4]), .SE(test_se), .CK(
        clk), .RN(n331), .Q(REG1[5]) );
  SDFFRQX2M \REG_MEM_reg[1][6]  ( .D(n288), .SI(REG1[5]), .SE(test_se), .CK(
        clk), .RN(n331), .Q(REG1[6]) );
  SDFFRQX2M \REG_MEM_reg[1][7]  ( .D(n289), .SI(REG1[6]), .SE(test_se), .CK(
        clk), .RN(n335), .Q(REG1[7]) );
  SDFFRQX2M \REG_MEM_reg[0][0]  ( .D(n290), .SI(test_si1), .SE(test_se), .CK(
        clk), .RN(n336), .Q(REG0[0]) );
  SDFFRQX2M \REG_MEM_reg[0][1]  ( .D(n291), .SI(REG0[0]), .SE(test_se), .CK(
        clk), .RN(n336), .Q(REG0[1]) );
  SDFFRQX2M \REG_MEM_reg[0][2]  ( .D(n292), .SI(REG0[1]), .SE(test_se), .CK(
        clk), .RN(n336), .Q(REG0[2]) );
  SDFFRQX2M \REG_MEM_reg[0][3]  ( .D(n293), .SI(REG0[2]), .SE(test_se), .CK(
        clk), .RN(n336), .Q(REG0[3]) );
  SDFFRQX2M \REG_MEM_reg[0][4]  ( .D(n294), .SI(REG0[3]), .SE(test_se), .CK(
        clk), .RN(n336), .Q(REG0[4]) );
  SDFFRQX2M \REG_MEM_reg[0][5]  ( .D(n295), .SI(REG0[4]), .SE(test_se), .CK(
        clk), .RN(n336), .Q(REG0[5]) );
  SDFFRQX2M \REG_MEM_reg[0][6]  ( .D(n296), .SI(REG0[5]), .SE(test_se), .CK(
        clk), .RN(n335), .Q(REG0[6]) );
  SDFFRQX2M \REG_MEM_reg[0][7]  ( .D(n297), .SI(REG0[6]), .SE(test_se), .CK(
        clk), .RN(n335), .Q(REG0[7]) );
  SDFFRQX2M \REG_MEM_reg[3][0]  ( .D(n266), .SI(REG2[7]), .SE(test_se), .CK(
        clk), .RN(n332), .Q(REG3[0]) );
  SDFFRQX2M \REG_MEM_reg[2][1]  ( .D(n275), .SI(REG2[0]), .SE(test_se), .CK(
        clk), .RN(n336), .Q(REG2[1]) );
  SDFFRQX2M \adress_FF_reg[3]  ( .D(N15), .SI(n346), .SE(test_se), .CK(clk), 
        .RN(n331), .Q(adress_FF[3]) );
  SDFFRQX2M \adress_FF_reg[0]  ( .D(N12), .SI(\REG_MEM[15][7] ), .SE(test_se), 
        .CK(clk), .RN(n340), .Q(adress_FF[0]) );
  SDFFRQX2M \adress_FF_reg[2]  ( .D(N14), .SI(adress_FF[1]), .SE(test_se), 
        .CK(clk), .RN(n340), .Q(adress_FF[2]) );
  SDFFRQX2M \adress_FF_reg[1]  ( .D(N13), .SI(adress_FF[0]), .SE(test_se), 
        .CK(clk), .RN(n340), .Q(adress_FF[1]) );
  SDFFRQX2M \REG_MEM_reg[3][3]  ( .D(n269), .SI(REG3[2]), .SE(test_se), .CK(
        clk), .RN(n332), .Q(REG3[3]) );
  SDFFRQX2M \REG_MEM_reg[3][4]  ( .D(n270), .SI(REG3[3]), .SE(test_se), .CK(
        clk), .RN(n331), .Q(REG3[4]) );
  SDFFRQX2M \REG_MEM_reg[3][1]  ( .D(n267), .SI(REG3[0]), .SE(test_se), .CK(
        clk), .RN(n332), .Q(REG3[1]) );
  SDFFRQX2M \REG_MEM_reg[3][6]  ( .D(n272), .SI(REG3[5]), .SE(test_se), .CK(
        clk), .RN(n331), .Q(REG3[6]) );
  SDFFRQX2M \REG_MEM_reg[3][2]  ( .D(n268), .SI(REG3[1]), .SE(test_se), .CK(
        clk), .RN(n332), .Q(REG3[2]) );
  SDFFRQX2M \REG_MEM_reg[3][7]  ( .D(n273), .SI(REG3[6]), .SE(test_se), .CK(
        clk), .RN(n332), .Q(REG3[7]) );
  SDFFRQX2M \REG_MEM_reg[2][2]  ( .D(n276), .SI(REG2[1]), .SE(test_se), .CK(
        clk), .RN(n336), .Q(REG2[2]) );
  SDFFRQX2M \REG_MEM_reg[2][4]  ( .D(n278), .SI(REG2[3]), .SE(test_se), .CK(
        clk), .RN(n336), .Q(REG2[4]) );
  SDFFRQX2M \REG_MEM_reg[2][3]  ( .D(n277), .SI(REG2[2]), .SE(test_se), .CK(
        clk), .RN(n336), .Q(REG2[3]) );
  SDFFRQX2M \REG_MEM_reg[2][5]  ( .D(n279), .SI(REG2[4]), .SE(test_se), .CK(
        clk), .RN(n336), .Q(REG2[5]) );
  SDFFRQX2M \REG_MEM_reg[2][6]  ( .D(n280), .SI(REG2[5]), .SE(test_se), .CK(
        clk), .RN(n336), .Q(REG2[6]) );
  SDFFSQX1M \REG_MEM_reg[3][5]  ( .D(n271), .SI(REG3[4]), .SE(test_se), .CK(
        clk), .SN(n331), .Q(REG3[5]) );
  SDFFSQX1M \REG_MEM_reg[2][7]  ( .D(n281), .SI(REG2[6]), .SE(test_se), .CK(
        clk), .SN(n331), .Q(REG2[7]) );
  SDFFSQX1M \REG_MEM_reg[2][0]  ( .D(n274), .SI(REG1[7]), .SE(test_se), .CK(
        clk), .SN(n331), .Q(REG2[0]) );
  NOR2X2M U138 ( .A(n346), .B(n347), .Y(n145) );
  NOR2X2M U139 ( .A(adress_FF[1]), .B(adress_FF[2]), .Y(n156) );
  NOR2X2M U140 ( .A(n347), .B(adress_FF[2]), .Y(n153) );
  NOR2X2M U141 ( .A(n346), .B(adress_FF[1]), .Y(n150) );
  INVX2M U142 ( .A(n330), .Y(RdData_Valid) );
  INVX2M U143 ( .A(RdEn), .Y(n330) );
  INVX2M U144 ( .A(n326), .Y(n328) );
  INVX2M U145 ( .A(n326), .Y(n327) );
  INVX2M U146 ( .A(n323), .Y(n324) );
  BUFX2M U147 ( .A(n325), .Y(n326) );
  BUFX2M U148 ( .A(n322), .Y(n323) );
  NAND2X2M U149 ( .A(n162), .B(n145), .Y(n161) );
  NAND2X2M U150 ( .A(n148), .B(n145), .Y(n147) );
  BUFX2M U151 ( .A(n345), .Y(n332) );
  BUFX2M U152 ( .A(n344), .Y(n333) );
  BUFX2M U153 ( .A(n344), .Y(n334) );
  BUFX2M U154 ( .A(n343), .Y(n335) );
  BUFX2M U155 ( .A(n343), .Y(n336) );
  BUFX2M U156 ( .A(n342), .Y(n337) );
  BUFX2M U157 ( .A(n342), .Y(n338) );
  BUFX2M U158 ( .A(n341), .Y(n339) );
  BUFX2M U159 ( .A(n345), .Y(n331) );
  BUFX2M U160 ( .A(n341), .Y(n340) );
  AND2X2M U161 ( .A(N58), .B(RdData_Valid), .Y(RdData[0]) );
  AND2X2M U162 ( .A(N57), .B(RdData_Valid), .Y(RdData[1]) );
  AND2X2M U163 ( .A(N56), .B(RdData_Valid), .Y(RdData[2]) );
  AND2X2M U164 ( .A(N55), .B(RdData_Valid), .Y(RdData[3]) );
  AND2X2M U165 ( .A(N54), .B(RdData_Valid), .Y(RdData[4]) );
  AND2X2M U166 ( .A(N53), .B(RdData_Valid), .Y(RdData[5]) );
  AND2X2M U167 ( .A(N52), .B(RdData_Valid), .Y(RdData[6]) );
  AND2X2M U168 ( .A(RdData_Valid), .B(N51), .Y(RdData[7]) );
  INVX2M U169 ( .A(N12), .Y(n325) );
  INVX2M U170 ( .A(N13), .Y(n322) );
  NAND2X2M U171 ( .A(n160), .B(n156), .Y(n167) );
  NAND2X2M U172 ( .A(n160), .B(n153), .Y(n165) );
  NAND2X2M U173 ( .A(n160), .B(n150), .Y(n163) );
  NAND2X2M U174 ( .A(n156), .B(n146), .Y(n155) );
  NAND2X2M U175 ( .A(n153), .B(n146), .Y(n152) );
  NAND2X2M U176 ( .A(n150), .B(n146), .Y(n149) );
  NAND2X2M U177 ( .A(n162), .B(n156), .Y(n169) );
  NAND2X2M U178 ( .A(n162), .B(n153), .Y(n166) );
  NAND2X2M U179 ( .A(n162), .B(n150), .Y(n164) );
  NAND2X2M U180 ( .A(n156), .B(n148), .Y(n158) );
  NAND2X2M U181 ( .A(n153), .B(n148), .Y(n154) );
  NAND2X2M U182 ( .A(n150), .B(n148), .Y(n151) );
  NAND2X2M U183 ( .A(n160), .B(n145), .Y(n159) );
  NAND2X2M U184 ( .A(n145), .B(n146), .Y(n144) );
  INVX2M U185 ( .A(WrData[6]), .Y(n355) );
  INVX2M U186 ( .A(WrData[5]), .Y(n354) );
  INVX2M U187 ( .A(WrData[4]), .Y(n353) );
  INVX2M U188 ( .A(WrData[3]), .Y(n352) );
  INVX2M U189 ( .A(WrData[2]), .Y(n351) );
  INVX2M U190 ( .A(WrData[1]), .Y(n350) );
  INVX2M U191 ( .A(WrData[0]), .Y(n349) );
  AND2X2M U192 ( .A(n157), .B(n348), .Y(n148) );
  AND2X2M U193 ( .A(n168), .B(n348), .Y(n162) );
  BUFX2M U194 ( .A(RST), .Y(n344) );
  BUFX2M U195 ( .A(RST), .Y(n343) );
  BUFX2M U196 ( .A(RST), .Y(n342) );
  BUFX2M U197 ( .A(RST), .Y(n341) );
  BUFX2M U198 ( .A(RST), .Y(n345) );
  MX4X1M U199 ( .A(n321), .B(n319), .C(n320), .D(n318), .S0(N15), .S1(N14), 
        .Y(N51) );
  MX4X1M U200 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n327), 
        .S1(N13), .Y(n321) );
  MX4X1M U201 ( .A(\REG_MEM[8][7] ), .B(\REG_MEM[9][7] ), .C(\REG_MEM[10][7] ), 
        .D(\REG_MEM[11][7] ), .S0(n327), .S1(N13), .Y(n319) );
  MX4X1M U202 ( .A(\REG_MEM[4][7] ), .B(\REG_MEM[5][7] ), .C(\REG_MEM[6][7] ), 
        .D(\REG_MEM[7][7] ), .S0(n327), .S1(N13), .Y(n320) );
  MX4X1M U203 ( .A(n139), .B(n137), .C(n138), .D(n136), .S0(N15), .S1(N14), 
        .Y(N58) );
  MX4X1M U204 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n327), 
        .S1(N13), .Y(n139) );
  MX4X1M U205 ( .A(\REG_MEM[8][0] ), .B(\REG_MEM[9][0] ), .C(\REG_MEM[10][0] ), 
        .D(\REG_MEM[11][0] ), .S0(n327), .S1(N13), .Y(n137) );
  MX4X1M U206 ( .A(\REG_MEM[4][0] ), .B(\REG_MEM[5][0] ), .C(\REG_MEM[6][0] ), 
        .D(\REG_MEM[7][0] ), .S0(n327), .S1(N13), .Y(n138) );
  MX4X1M U207 ( .A(n143), .B(n141), .C(n142), .D(n140), .S0(N15), .S1(N14), 
        .Y(N57) );
  MX4X1M U208 ( .A(\REG_MEM[8][1] ), .B(\REG_MEM[9][1] ), .C(\REG_MEM[10][1] ), 
        .D(\REG_MEM[11][1] ), .S0(n327), .S1(N13), .Y(n141) );
  MX4X1M U209 ( .A(\REG_MEM[12][1] ), .B(\REG_MEM[13][1] ), .C(
        \REG_MEM[14][1] ), .D(\REG_MEM[15][1] ), .S0(n327), .S1(n324), .Y(n140) );
  MX4X1M U210 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n328), 
        .S1(N13), .Y(n143) );
  MX4X1M U211 ( .A(n301), .B(n299), .C(n300), .D(n298), .S0(N15), .S1(N14), 
        .Y(N56) );
  MX4X1M U212 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n328), 
        .S1(n324), .Y(n301) );
  MX4X1M U213 ( .A(\REG_MEM[8][2] ), .B(\REG_MEM[9][2] ), .C(\REG_MEM[10][2] ), 
        .D(\REG_MEM[11][2] ), .S0(n328), .S1(n324), .Y(n299) );
  MX4X1M U214 ( .A(\REG_MEM[4][2] ), .B(\REG_MEM[5][2] ), .C(\REG_MEM[6][2] ), 
        .D(\REG_MEM[7][2] ), .S0(n328), .S1(n324), .Y(n300) );
  MX4X1M U215 ( .A(n305), .B(n303), .C(n304), .D(n302), .S0(N15), .S1(N14), 
        .Y(N55) );
  MX4X1M U216 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n328), 
        .S1(n324), .Y(n305) );
  MX4X1M U217 ( .A(\REG_MEM[8][3] ), .B(\REG_MEM[9][3] ), .C(\REG_MEM[10][3] ), 
        .D(\REG_MEM[11][3] ), .S0(n328), .S1(n324), .Y(n303) );
  MX4X1M U218 ( .A(\REG_MEM[4][3] ), .B(\REG_MEM[5][3] ), .C(\REG_MEM[6][3] ), 
        .D(\REG_MEM[7][3] ), .S0(n328), .S1(n324), .Y(n304) );
  MX4X1M U219 ( .A(n309), .B(n307), .C(n308), .D(n306), .S0(N15), .S1(N14), 
        .Y(N54) );
  MX4X1M U220 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(N12), 
        .S1(n324), .Y(n309) );
  MX4X1M U221 ( .A(\REG_MEM[8][4] ), .B(\REG_MEM[9][4] ), .C(\REG_MEM[10][4] ), 
        .D(\REG_MEM[11][4] ), .S0(n328), .S1(n324), .Y(n307) );
  MX4X1M U222 ( .A(\REG_MEM[4][4] ), .B(\REG_MEM[5][4] ), .C(\REG_MEM[6][4] ), 
        .D(\REG_MEM[7][4] ), .S0(n328), .S1(n324), .Y(n308) );
  MX4X1M U223 ( .A(n313), .B(n311), .C(n312), .D(n310), .S0(N15), .S1(N14), 
        .Y(N53) );
  MX4X1M U224 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(N12), 
        .S1(N13), .Y(n313) );
  MX4X1M U225 ( .A(\REG_MEM[8][5] ), .B(\REG_MEM[9][5] ), .C(\REG_MEM[10][5] ), 
        .D(\REG_MEM[11][5] ), .S0(N12), .S1(N13), .Y(n311) );
  MX4X1M U226 ( .A(\REG_MEM[4][5] ), .B(\REG_MEM[5][5] ), .C(\REG_MEM[6][5] ), 
        .D(\REG_MEM[7][5] ), .S0(n327), .S1(N13), .Y(n312) );
  MX4X1M U227 ( .A(n317), .B(n315), .C(n316), .D(n314), .S0(N15), .S1(N14), 
        .Y(N52) );
  MX4X1M U228 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(N12), 
        .S1(N13), .Y(n317) );
  MX4X1M U229 ( .A(\REG_MEM[8][6] ), .B(\REG_MEM[9][6] ), .C(\REG_MEM[10][6] ), 
        .D(\REG_MEM[11][6] ), .S0(N12), .S1(N13), .Y(n315) );
  MX4X1M U230 ( .A(\REG_MEM[4][6] ), .B(\REG_MEM[5][6] ), .C(\REG_MEM[6][6] ), 
        .D(\REG_MEM[7][6] ), .S0(n328), .S1(N13), .Y(n316) );
  MX4X1M U231 ( .A(\REG_MEM[4][1] ), .B(\REG_MEM[5][1] ), .C(\REG_MEM[6][1] ), 
        .D(\REG_MEM[7][1] ), .S0(n328), .S1(n324), .Y(n142) );
  MX4X1M U232 ( .A(\REG_MEM[12][0] ), .B(\REG_MEM[13][0] ), .C(
        \REG_MEM[14][0] ), .D(\REG_MEM[15][0] ), .S0(n327), .S1(N13), .Y(n136)
         );
  MX4X1M U233 ( .A(\REG_MEM[12][2] ), .B(\REG_MEM[13][2] ), .C(
        \REG_MEM[14][2] ), .D(\REG_MEM[15][2] ), .S0(n328), .S1(n324), .Y(n298) );
  MX4X1M U234 ( .A(\REG_MEM[12][3] ), .B(\REG_MEM[13][3] ), .C(
        \REG_MEM[14][3] ), .D(\REG_MEM[15][3] ), .S0(n328), .S1(n324), .Y(n302) );
  MX4X1M U235 ( .A(\REG_MEM[12][4] ), .B(\REG_MEM[13][4] ), .C(
        \REG_MEM[14][4] ), .D(\REG_MEM[15][4] ), .S0(n328), .S1(n324), .Y(n306) );
  MX4X1M U236 ( .A(\REG_MEM[12][5] ), .B(\REG_MEM[13][5] ), .C(
        \REG_MEM[14][5] ), .D(\REG_MEM[15][5] ), .S0(n327), .S1(N13), .Y(n310)
         );
  MX4X1M U237 ( .A(\REG_MEM[12][6] ), .B(\REG_MEM[13][6] ), .C(
        \REG_MEM[14][6] ), .D(\REG_MEM[15][6] ), .S0(n327), .S1(N13), .Y(n314)
         );
  MX4X1M U238 ( .A(\REG_MEM[12][7] ), .B(\REG_MEM[13][7] ), .C(
        \REG_MEM[14][7] ), .D(\REG_MEM[15][7] ), .S0(n327), .S1(N13), .Y(n318)
         );
  INVX2M U239 ( .A(WrData[7]), .Y(n356) );
  OAI2BB2X1M U240 ( .B0(n144), .B1(n356), .A0N(\REG_MEM[15][7] ), .A1N(n144), 
        .Y(n177) );
  OAI2BB2X1M U241 ( .B0(n144), .B1(n355), .A0N(\REG_MEM[15][6] ), .A1N(n144), 
        .Y(n176) );
  OAI2BB2X1M U242 ( .B0(n144), .B1(n354), .A0N(\REG_MEM[15][5] ), .A1N(n144), 
        .Y(n175) );
  OAI2BB2X1M U243 ( .B0(n144), .B1(n353), .A0N(\REG_MEM[15][4] ), .A1N(n144), 
        .Y(n174) );
  OAI2BB2X1M U244 ( .B0(n144), .B1(n352), .A0N(\REG_MEM[15][3] ), .A1N(n144), 
        .Y(n173) );
  OAI2BB2X1M U245 ( .B0(n144), .B1(n351), .A0N(\REG_MEM[15][2] ), .A1N(n144), 
        .Y(n172) );
  OAI2BB2X1M U246 ( .B0(n144), .B1(n350), .A0N(\REG_MEM[15][1] ), .A1N(n144), 
        .Y(n171) );
  OAI2BB2X1M U247 ( .B0(n144), .B1(n349), .A0N(\REG_MEM[15][0] ), .A1N(n144), 
        .Y(n170) );
  OAI2BB2X1M U248 ( .B0(n356), .B1(n155), .A0N(\REG_MEM[9][7] ), .A1N(n155), 
        .Y(n225) );
  OAI2BB2X1M U249 ( .B0(n355), .B1(n155), .A0N(\REG_MEM[9][6] ), .A1N(n155), 
        .Y(n224) );
  OAI2BB2X1M U250 ( .B0(n354), .B1(n155), .A0N(\REG_MEM[9][5] ), .A1N(n155), 
        .Y(n223) );
  OAI2BB2X1M U251 ( .B0(n353), .B1(n155), .A0N(\REG_MEM[9][4] ), .A1N(n155), 
        .Y(n222) );
  OAI2BB2X1M U252 ( .B0(n352), .B1(n155), .A0N(\REG_MEM[9][3] ), .A1N(n155), 
        .Y(n221) );
  OAI2BB2X1M U253 ( .B0(n351), .B1(n155), .A0N(\REG_MEM[9][2] ), .A1N(n155), 
        .Y(n220) );
  OAI2BB2X1M U254 ( .B0(n350), .B1(n155), .A0N(\REG_MEM[9][1] ), .A1N(n155), 
        .Y(n219) );
  OAI2BB2X1M U255 ( .B0(n349), .B1(n155), .A0N(\REG_MEM[9][0] ), .A1N(n155), 
        .Y(n218) );
  OAI2BB2X1M U256 ( .B0(n356), .B1(n152), .A0N(\REG_MEM[11][7] ), .A1N(n152), 
        .Y(n209) );
  OAI2BB2X1M U257 ( .B0(n355), .B1(n152), .A0N(\REG_MEM[11][6] ), .A1N(n152), 
        .Y(n208) );
  OAI2BB2X1M U258 ( .B0(n354), .B1(n152), .A0N(\REG_MEM[11][5] ), .A1N(n152), 
        .Y(n207) );
  OAI2BB2X1M U259 ( .B0(n353), .B1(n152), .A0N(\REG_MEM[11][4] ), .A1N(n152), 
        .Y(n206) );
  OAI2BB2X1M U260 ( .B0(n352), .B1(n152), .A0N(\REG_MEM[11][3] ), .A1N(n152), 
        .Y(n205) );
  OAI2BB2X1M U261 ( .B0(n351), .B1(n152), .A0N(\REG_MEM[11][2] ), .A1N(n152), 
        .Y(n204) );
  OAI2BB2X1M U262 ( .B0(n350), .B1(n152), .A0N(\REG_MEM[11][1] ), .A1N(n152), 
        .Y(n203) );
  OAI2BB2X1M U263 ( .B0(n349), .B1(n152), .A0N(\REG_MEM[11][0] ), .A1N(n152), 
        .Y(n202) );
  OAI2BB2X1M U264 ( .B0(n356), .B1(n149), .A0N(\REG_MEM[13][7] ), .A1N(n149), 
        .Y(n193) );
  OAI2BB2X1M U265 ( .B0(n355), .B1(n149), .A0N(\REG_MEM[13][6] ), .A1N(n149), 
        .Y(n192) );
  OAI2BB2X1M U266 ( .B0(n354), .B1(n149), .A0N(\REG_MEM[13][5] ), .A1N(n149), 
        .Y(n191) );
  OAI2BB2X1M U267 ( .B0(n353), .B1(n149), .A0N(\REG_MEM[13][4] ), .A1N(n149), 
        .Y(n190) );
  OAI2BB2X1M U268 ( .B0(n352), .B1(n149), .A0N(\REG_MEM[13][3] ), .A1N(n149), 
        .Y(n189) );
  OAI2BB2X1M U269 ( .B0(n351), .B1(n149), .A0N(\REG_MEM[13][2] ), .A1N(n149), 
        .Y(n188) );
  OAI2BB2X1M U270 ( .B0(n350), .B1(n149), .A0N(\REG_MEM[13][1] ), .A1N(n149), 
        .Y(n187) );
  OAI2BB2X1M U271 ( .B0(n349), .B1(n149), .A0N(\REG_MEM[13][0] ), .A1N(n149), 
        .Y(n186) );
  OAI2BB2X1M U272 ( .B0(n356), .B1(n158), .A0N(\REG_MEM[8][7] ), .A1N(n158), 
        .Y(n233) );
  OAI2BB2X1M U273 ( .B0(n355), .B1(n158), .A0N(\REG_MEM[8][6] ), .A1N(n158), 
        .Y(n232) );
  OAI2BB2X1M U274 ( .B0(n354), .B1(n158), .A0N(\REG_MEM[8][5] ), .A1N(n158), 
        .Y(n231) );
  OAI2BB2X1M U275 ( .B0(n353), .B1(n158), .A0N(\REG_MEM[8][4] ), .A1N(n158), 
        .Y(n230) );
  OAI2BB2X1M U276 ( .B0(n352), .B1(n158), .A0N(\REG_MEM[8][3] ), .A1N(n158), 
        .Y(n229) );
  OAI2BB2X1M U277 ( .B0(n351), .B1(n158), .A0N(\REG_MEM[8][2] ), .A1N(n158), 
        .Y(n228) );
  OAI2BB2X1M U278 ( .B0(n350), .B1(n158), .A0N(\REG_MEM[8][1] ), .A1N(n158), 
        .Y(n227) );
  OAI2BB2X1M U279 ( .B0(n349), .B1(n158), .A0N(\REG_MEM[8][0] ), .A1N(n158), 
        .Y(n226) );
  OAI2BB2X1M U280 ( .B0(n356), .B1(n154), .A0N(\REG_MEM[10][7] ), .A1N(n154), 
        .Y(n217) );
  OAI2BB2X1M U281 ( .B0(n355), .B1(n154), .A0N(\REG_MEM[10][6] ), .A1N(n154), 
        .Y(n216) );
  OAI2BB2X1M U282 ( .B0(n354), .B1(n154), .A0N(\REG_MEM[10][5] ), .A1N(n154), 
        .Y(n215) );
  OAI2BB2X1M U283 ( .B0(n353), .B1(n154), .A0N(\REG_MEM[10][4] ), .A1N(n154), 
        .Y(n214) );
  OAI2BB2X1M U284 ( .B0(n352), .B1(n154), .A0N(\REG_MEM[10][3] ), .A1N(n154), 
        .Y(n213) );
  OAI2BB2X1M U285 ( .B0(n351), .B1(n154), .A0N(\REG_MEM[10][2] ), .A1N(n154), 
        .Y(n212) );
  OAI2BB2X1M U286 ( .B0(n350), .B1(n154), .A0N(\REG_MEM[10][1] ), .A1N(n154), 
        .Y(n211) );
  OAI2BB2X1M U287 ( .B0(n349), .B1(n154), .A0N(\REG_MEM[10][0] ), .A1N(n154), 
        .Y(n210) );
  OAI2BB2X1M U288 ( .B0(n356), .B1(n151), .A0N(\REG_MEM[12][7] ), .A1N(n151), 
        .Y(n201) );
  OAI2BB2X1M U289 ( .B0(n355), .B1(n151), .A0N(\REG_MEM[12][6] ), .A1N(n151), 
        .Y(n200) );
  OAI2BB2X1M U290 ( .B0(n354), .B1(n151), .A0N(\REG_MEM[12][5] ), .A1N(n151), 
        .Y(n199) );
  OAI2BB2X1M U291 ( .B0(n353), .B1(n151), .A0N(\REG_MEM[12][4] ), .A1N(n151), 
        .Y(n198) );
  OAI2BB2X1M U292 ( .B0(n352), .B1(n151), .A0N(\REG_MEM[12][3] ), .A1N(n151), 
        .Y(n197) );
  OAI2BB2X1M U293 ( .B0(n351), .B1(n151), .A0N(\REG_MEM[12][2] ), .A1N(n151), 
        .Y(n196) );
  OAI2BB2X1M U294 ( .B0(n350), .B1(n151), .A0N(\REG_MEM[12][1] ), .A1N(n151), 
        .Y(n195) );
  OAI2BB2X1M U295 ( .B0(n349), .B1(n151), .A0N(\REG_MEM[12][0] ), .A1N(n151), 
        .Y(n194) );
  OAI2BB2X1M U296 ( .B0(n356), .B1(n159), .A0N(\REG_MEM[7][7] ), .A1N(n159), 
        .Y(n241) );
  OAI2BB2X1M U297 ( .B0(n355), .B1(n159), .A0N(\REG_MEM[7][6] ), .A1N(n159), 
        .Y(n240) );
  OAI2BB2X1M U298 ( .B0(n354), .B1(n159), .A0N(\REG_MEM[7][5] ), .A1N(n159), 
        .Y(n239) );
  OAI2BB2X1M U299 ( .B0(n353), .B1(n159), .A0N(\REG_MEM[7][4] ), .A1N(n159), 
        .Y(n238) );
  OAI2BB2X1M U300 ( .B0(n352), .B1(n159), .A0N(\REG_MEM[7][3] ), .A1N(n159), 
        .Y(n237) );
  OAI2BB2X1M U301 ( .B0(n351), .B1(n159), .A0N(\REG_MEM[7][2] ), .A1N(n159), 
        .Y(n236) );
  OAI2BB2X1M U302 ( .B0(n350), .B1(n159), .A0N(\REG_MEM[7][1] ), .A1N(n159), 
        .Y(n235) );
  OAI2BB2X1M U303 ( .B0(n349), .B1(n159), .A0N(\REG_MEM[7][0] ), .A1N(n159), 
        .Y(n234) );
  OAI2BB2X1M U304 ( .B0(n356), .B1(n161), .A0N(\REG_MEM[6][7] ), .A1N(n161), 
        .Y(n249) );
  OAI2BB2X1M U305 ( .B0(n355), .B1(n161), .A0N(\REG_MEM[6][6] ), .A1N(n161), 
        .Y(n248) );
  OAI2BB2X1M U306 ( .B0(n354), .B1(n161), .A0N(\REG_MEM[6][5] ), .A1N(n161), 
        .Y(n247) );
  OAI2BB2X1M U307 ( .B0(n353), .B1(n161), .A0N(\REG_MEM[6][4] ), .A1N(n161), 
        .Y(n246) );
  OAI2BB2X1M U308 ( .B0(n352), .B1(n161), .A0N(\REG_MEM[6][3] ), .A1N(n161), 
        .Y(n245) );
  OAI2BB2X1M U309 ( .B0(n351), .B1(n161), .A0N(\REG_MEM[6][2] ), .A1N(n161), 
        .Y(n244) );
  OAI2BB2X1M U310 ( .B0(n350), .B1(n161), .A0N(\REG_MEM[6][1] ), .A1N(n161), 
        .Y(n243) );
  OAI2BB2X1M U311 ( .B0(n349), .B1(n161), .A0N(\REG_MEM[6][0] ), .A1N(n161), 
        .Y(n242) );
  OAI2BB2X1M U312 ( .B0(n356), .B1(n147), .A0N(\REG_MEM[14][7] ), .A1N(n147), 
        .Y(n185) );
  OAI2BB2X1M U313 ( .B0(n355), .B1(n147), .A0N(\REG_MEM[14][6] ), .A1N(n147), 
        .Y(n184) );
  OAI2BB2X1M U314 ( .B0(n354), .B1(n147), .A0N(\REG_MEM[14][5] ), .A1N(n147), 
        .Y(n183) );
  OAI2BB2X1M U315 ( .B0(n353), .B1(n147), .A0N(\REG_MEM[14][4] ), .A1N(n147), 
        .Y(n182) );
  OAI2BB2X1M U316 ( .B0(n352), .B1(n147), .A0N(\REG_MEM[14][3] ), .A1N(n147), 
        .Y(n181) );
  OAI2BB2X1M U317 ( .B0(n351), .B1(n147), .A0N(\REG_MEM[14][2] ), .A1N(n147), 
        .Y(n180) );
  OAI2BB2X1M U318 ( .B0(n350), .B1(n147), .A0N(\REG_MEM[14][1] ), .A1N(n147), 
        .Y(n179) );
  OAI2BB2X1M U319 ( .B0(n349), .B1(n147), .A0N(\REG_MEM[14][0] ), .A1N(n147), 
        .Y(n178) );
  OAI2BB2X1M U320 ( .B0(n356), .B1(n167), .A0N(REG1[7]), .A1N(n167), .Y(n289)
         );
  OAI2BB2X1M U321 ( .B0(n355), .B1(n167), .A0N(REG1[6]), .A1N(n167), .Y(n288)
         );
  OAI2BB2X1M U322 ( .B0(n354), .B1(n167), .A0N(REG1[5]), .A1N(n167), .Y(n287)
         );
  OAI2BB2X1M U323 ( .B0(n353), .B1(n167), .A0N(REG1[4]), .A1N(n167), .Y(n286)
         );
  OAI2BB2X1M U324 ( .B0(n352), .B1(n167), .A0N(REG1[3]), .A1N(n167), .Y(n285)
         );
  OAI2BB2X1M U325 ( .B0(n351), .B1(n167), .A0N(REG1[2]), .A1N(n167), .Y(n284)
         );
  OAI2BB2X1M U326 ( .B0(n350), .B1(n167), .A0N(REG1[1]), .A1N(n167), .Y(n283)
         );
  OAI2BB2X1M U327 ( .B0(n349), .B1(n167), .A0N(REG1[0]), .A1N(n167), .Y(n282)
         );
  OAI2BB2X1M U328 ( .B0(n356), .B1(n165), .A0N(REG3[7]), .A1N(n165), .Y(n273)
         );
  OAI2BB2X1M U329 ( .B0(n355), .B1(n165), .A0N(REG3[6]), .A1N(n165), .Y(n272)
         );
  OAI2BB2X1M U330 ( .B0(n353), .B1(n165), .A0N(REG3[4]), .A1N(n165), .Y(n270)
         );
  OAI2BB2X1M U331 ( .B0(n352), .B1(n165), .A0N(REG3[3]), .A1N(n165), .Y(n269)
         );
  OAI2BB2X1M U332 ( .B0(n351), .B1(n165), .A0N(REG3[2]), .A1N(n165), .Y(n268)
         );
  OAI2BB2X1M U333 ( .B0(n350), .B1(n165), .A0N(REG3[1]), .A1N(n165), .Y(n267)
         );
  OAI2BB2X1M U334 ( .B0(n349), .B1(n165), .A0N(REG3[0]), .A1N(n165), .Y(n266)
         );
  OAI2BB2X1M U335 ( .B0(n356), .B1(n163), .A0N(\REG_MEM[5][7] ), .A1N(n163), 
        .Y(n257) );
  OAI2BB2X1M U336 ( .B0(n355), .B1(n163), .A0N(\REG_MEM[5][6] ), .A1N(n163), 
        .Y(n256) );
  OAI2BB2X1M U337 ( .B0(n354), .B1(n163), .A0N(\REG_MEM[5][5] ), .A1N(n163), 
        .Y(n255) );
  OAI2BB2X1M U338 ( .B0(n353), .B1(n163), .A0N(\REG_MEM[5][4] ), .A1N(n163), 
        .Y(n254) );
  OAI2BB2X1M U339 ( .B0(n352), .B1(n163), .A0N(\REG_MEM[5][3] ), .A1N(n163), 
        .Y(n253) );
  OAI2BB2X1M U340 ( .B0(n351), .B1(n163), .A0N(\REG_MEM[5][2] ), .A1N(n163), 
        .Y(n252) );
  OAI2BB2X1M U341 ( .B0(n350), .B1(n163), .A0N(\REG_MEM[5][1] ), .A1N(n163), 
        .Y(n251) );
  OAI2BB2X1M U342 ( .B0(n349), .B1(n163), .A0N(\REG_MEM[5][0] ), .A1N(n163), 
        .Y(n250) );
  OAI2BB2X1M U343 ( .B0(n356), .B1(n169), .A0N(REG0[7]), .A1N(n169), .Y(n297)
         );
  OAI2BB2X1M U344 ( .B0(n355), .B1(n169), .A0N(REG0[6]), .A1N(n169), .Y(n296)
         );
  OAI2BB2X1M U345 ( .B0(n354), .B1(n169), .A0N(REG0[5]), .A1N(n169), .Y(n295)
         );
  OAI2BB2X1M U346 ( .B0(n353), .B1(n169), .A0N(REG0[4]), .A1N(n169), .Y(n294)
         );
  OAI2BB2X1M U347 ( .B0(n352), .B1(n169), .A0N(REG0[3]), .A1N(n169), .Y(n293)
         );
  OAI2BB2X1M U348 ( .B0(n351), .B1(n169), .A0N(REG0[2]), .A1N(n169), .Y(n292)
         );
  OAI2BB2X1M U349 ( .B0(n350), .B1(n169), .A0N(REG0[1]), .A1N(n169), .Y(n291)
         );
  OAI2BB2X1M U350 ( .B0(n349), .B1(n169), .A0N(REG0[0]), .A1N(n169), .Y(n290)
         );
  OAI2BB2X1M U351 ( .B0(n355), .B1(n166), .A0N(REG2[6]), .A1N(n166), .Y(n280)
         );
  OAI2BB2X1M U352 ( .B0(n354), .B1(n166), .A0N(REG2[5]), .A1N(n166), .Y(n279)
         );
  OAI2BB2X1M U353 ( .B0(n353), .B1(n166), .A0N(REG2[4]), .A1N(n166), .Y(n278)
         );
  OAI2BB2X1M U354 ( .B0(n352), .B1(n166), .A0N(REG2[3]), .A1N(n166), .Y(n277)
         );
  OAI2BB2X1M U355 ( .B0(n351), .B1(n166), .A0N(REG2[2]), .A1N(n166), .Y(n276)
         );
  OAI2BB2X1M U356 ( .B0(n350), .B1(n166), .A0N(REG2[1]), .A1N(n166), .Y(n275)
         );
  OAI2BB2X1M U357 ( .B0(n356), .B1(n164), .A0N(\REG_MEM[4][7] ), .A1N(n164), 
        .Y(n265) );
  OAI2BB2X1M U358 ( .B0(n355), .B1(n164), .A0N(\REG_MEM[4][6] ), .A1N(n164), 
        .Y(n264) );
  OAI2BB2X1M U359 ( .B0(n354), .B1(n164), .A0N(\REG_MEM[4][5] ), .A1N(n164), 
        .Y(n263) );
  OAI2BB2X1M U360 ( .B0(n353), .B1(n164), .A0N(\REG_MEM[4][4] ), .A1N(n164), 
        .Y(n262) );
  OAI2BB2X1M U361 ( .B0(n352), .B1(n164), .A0N(\REG_MEM[4][3] ), .A1N(n164), 
        .Y(n261) );
  OAI2BB2X1M U362 ( .B0(n351), .B1(n164), .A0N(\REG_MEM[4][2] ), .A1N(n164), 
        .Y(n260) );
  OAI2BB2X1M U363 ( .B0(n350), .B1(n164), .A0N(\REG_MEM[4][1] ), .A1N(n164), 
        .Y(n259) );
  OAI2BB2X1M U364 ( .B0(n349), .B1(n164), .A0N(\REG_MEM[4][0] ), .A1N(n164), 
        .Y(n258) );
  OAI2BB2X1M U365 ( .B0(n354), .B1(n165), .A0N(REG3[5]), .A1N(n165), .Y(n271)
         );
  OAI2BB2X1M U366 ( .B0(n356), .B1(n166), .A0N(REG2[7]), .A1N(n166), .Y(n281)
         );
  OAI2BB2X1M U367 ( .B0(n349), .B1(n166), .A0N(REG2[0]), .A1N(n166), .Y(n274)
         );
  AND2X2M U368 ( .A(n157), .B(adress_FF[0]), .Y(n146) );
  AND2X2M U369 ( .A(n168), .B(adress_FF[0]), .Y(n160) );
  NOR2BX2M U370 ( .AN(WrEn), .B(adress_FF[3]), .Y(n168) );
  AND2X2M U371 ( .A(adress_FF[3]), .B(WrEn), .Y(n157) );
  INVX2M U372 ( .A(adress_FF[2]), .Y(n346) );
  INVX2M U373 ( .A(adress_FF[1]), .Y(n347) );
  INVX2M U374 ( .A(adress_FF[0]), .Y(n348) );
endmodule


module ALU_TOP_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
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
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n12), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n13), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n15), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n16), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n17), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n14), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n13), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n12), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n11), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n17), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n17), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n17), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n17), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n17), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n17), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n16), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n15), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n14), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n13), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n14), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n15), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n14), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n16), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n15), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n16), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n15), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n16), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n16), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  XNOR2X2M U2 ( .A(n18), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n18), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n18), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n18), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n18), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n18), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n18), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n18), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n18), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n18), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n18), .Y(n6) );
  NAND2X2M U19 ( .A(n2), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n8) );
  NAND2X2M U21 ( .A(n6), .B(n9), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U22 ( .A(a[1]), .Y(n9) );
  NAND2X2M U23 ( .A(n4), .B(n10), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U24 ( .A(a[0]), .Y(n10) );
  NAND2X2M U25 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n1) );
  INVX2M U27 ( .A(b[1]), .Y(n17) );
  INVX2M U28 ( .A(b[2]), .Y(n16) );
  INVX2M U29 ( .A(b[3]), .Y(n15) );
  INVX2M U30 ( .A(b[4]), .Y(n14) );
  INVX2M U31 ( .A(b[5]), .Y(n13) );
  INVX2M U32 ( .A(b[6]), .Y(n12) );
  INVX2M U33 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U34 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U40 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U41 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U46 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U47 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U51 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U52 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U58 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U59 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U60 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U61 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U62 ( .A(\u_div/CryTmp[7][1] ), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U63 ( .A(n19), .B(n16), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U64 ( .A(\u_div/CryTmp[5][3] ), .B(n19), .Y(quotient[5]) );
  AND2X1M U65 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U66 ( .A(\u_div/CryTmp[4][4] ), .B(n20), .Y(quotient[4]) );
  AND3X1M U67 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U68 ( .A(n21), .B(n13), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U69 ( .A(\u_div/CryTmp[2][6] ), .B(n21), .Y(quotient[2]) );
  NOR2X1M U70 ( .A(b[6]), .B(b[7]), .Y(n21) );
  AND2X1M U71 ( .A(\u_div/CryTmp[1][7] ), .B(n11), .Y(quotient[1]) );
endmodule


module ALU_TOP_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[0]), .Y(n9) );
  INVX2M U3 ( .A(B[2]), .Y(n7) );
  INVX2M U4 ( .A(B[3]), .Y(n6) );
  INVX2M U5 ( .A(B[4]), .Y(n5) );
  INVX2M U6 ( .A(B[5]), .Y(n4) );
  INVX2M U7 ( .A(B[6]), .Y(n3) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_TOP_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_TOP_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  XNOR2X2M U3 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U4 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U5 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  NAND2X2M U6 ( .A(A[7]), .B(B[7]), .Y(n15) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_TOP_DW02_mult_0 ( A, B, TC, PRODUCT );
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

  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
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
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  CLKXOR2X2M U10 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U11 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U17 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U18 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U19 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U20 ( .A(\ab[0][2] ), .Y(n18) );
  INVX2M U21 ( .A(\ab[0][6] ), .Y(n22) );
  INVX2M U22 ( .A(\ab[0][4] ), .Y(n20) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[5]), .Y(n26) );
  INVX2M U38 ( .A(A[2]), .Y(n29) );
  INVX2M U39 ( .A(A[3]), .Y(n28) );
  INVX2M U40 ( .A(A[7]), .Y(n24) );
  INVX2M U41 ( .A(A[0]), .Y(n31) );
  INVX2M U42 ( .A(A[1]), .Y(n30) );
  INVX2M U43 ( .A(A[4]), .Y(n27) );
  INVX2M U44 ( .A(A[6]), .Y(n25) );
  INVX2M U45 ( .A(B[6]), .Y(n33) );
  INVX2M U46 ( .A(B[4]), .Y(n35) );
  INVX2M U47 ( .A(B[0]), .Y(n39) );
  INVX2M U48 ( .A(B[7]), .Y(n32) );
  INVX2M U49 ( .A(B[5]), .Y(n34) );
  INVX2M U50 ( .A(B[2]), .Y(n37) );
  INVX2M U51 ( .A(B[3]), .Y(n36) );
  INVX2M U52 ( .A(B[1]), .Y(n38) );
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
  ALU_TOP_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_TOP_test_1 ( A, B, ALU_FUN, clk, RST, Enable, OUT_VALID, ALU_OUT, 
        test_si, test_so, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input clk, RST, Enable, test_si, test_se;
  output OUT_VALID, test_so;
  wire   N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99,
         N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, N152, N153, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n3, n4, n5, n6, n7, n8, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143;
  wire   [7:0] A_FF;
  wire   [7:0] B_FF;
  assign test_so = B_FF[7];

  SDFFRQX2M \A_FF_reg[0]  ( .D(A[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(A_FF[0]) );
  INVX2M U7 ( .A(n55), .Y(n137) );
  INVX2M U22 ( .A(n111), .Y(n136) );
  NAND2X2M U23 ( .A(n123), .B(n110), .Y(n55) );
  NOR2X2M U24 ( .A(n51), .B(n134), .Y(OUT_VALID) );
  NOR4X1M U25 ( .A(n52), .B(n138), .C(n142), .D(n143), .Y(n51) );
  NAND4X2M U26 ( .A(n53), .B(n54), .C(n55), .D(n56), .Y(n52) );
  INVX2M U27 ( .A(n112), .Y(n138) );
  NAND2X2M U28 ( .A(n122), .B(n110), .Y(n56) );
  INVX2M U29 ( .A(n62), .Y(n142) );
  NAND2X2M U30 ( .A(n56), .B(n121), .Y(n72) );
  AND2X2M U31 ( .A(n124), .B(n122), .Y(n63) );
  NAND2X2M U32 ( .A(n124), .B(n123), .Y(n111) );
  INVX2M U33 ( .A(n54), .Y(n140) );
  OAI2BB1X2M U34 ( .A0N(N113), .A1N(n57), .B0(n58), .Y(ALU_OUT[9]) );
  OAI2BB1X2M U35 ( .A0N(N114), .A1N(n57), .B0(n58), .Y(ALU_OUT[10]) );
  OAI2BB1X2M U36 ( .A0N(N115), .A1N(n57), .B0(n58), .Y(ALU_OUT[11]) );
  OAI2BB1X2M U37 ( .A0N(N116), .A1N(n57), .B0(n58), .Y(ALU_OUT[12]) );
  OAI2BB1X2M U38 ( .A0N(N117), .A1N(n57), .B0(n58), .Y(ALU_OUT[13]) );
  OAI2BB1X2M U39 ( .A0N(N118), .A1N(n57), .B0(n58), .Y(ALU_OUT[14]) );
  OAI2BB1X2M U40 ( .A0N(N119), .A1N(n57), .B0(n58), .Y(ALU_OUT[15]) );
  INVX2M U41 ( .A(n53), .Y(n135) );
  AOI31X2M U42 ( .A0(ALU_FUN[1]), .A1(ALU_FUN[2]), .A2(n123), .B0(n141), .Y(
        n112) );
  INVX2M U43 ( .A(n121), .Y(n141) );
  NOR2X2M U44 ( .A(n143), .B(ALU_FUN[1]), .Y(n110) );
  NOR2X2M U45 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .Y(n122) );
  NOR2X2M U46 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  NOR2X2M U47 ( .A(n139), .B(ALU_FUN[3]), .Y(n123) );
  NAND3X2M U48 ( .A(ALU_FUN[0]), .B(n110), .C(ALU_FUN[3]), .Y(n62) );
  NAND3X2M U49 ( .A(n122), .B(ALU_FUN[2]), .C(ALU_FUN[1]), .Y(n54) );
  NAND3X2M U50 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .C(n124), .Y(n121) );
  NAND3X2M U51 ( .A(n110), .B(n139), .C(ALU_FUN[3]), .Y(n53) );
  INVX2M U52 ( .A(ALU_FUN[2]), .Y(n143) );
  INVX2M U53 ( .A(ALU_FUN[0]), .Y(n139) );
  INVX2M U54 ( .A(Enable), .Y(n134) );
  AND3X2M U55 ( .A(ALU_FUN[3]), .B(n139), .C(n124), .Y(n71) );
  AND3X2M U56 ( .A(n123), .B(n143), .C(ALU_FUN[1]), .Y(n73) );
  NAND2X2M U57 ( .A(Enable), .B(n64), .Y(n58) );
  AND3X2M U58 ( .A(n122), .B(n143), .C(ALU_FUN[1]), .Y(n61) );
  AND2X2M U59 ( .A(n61), .B(Enable), .Y(n57) );
  AOI221XLM U60 ( .A0(n3), .A1(n71), .B0(n138), .B1(n127), .C0(n140), .Y(n117)
         );
  AOI31X2M U61 ( .A0(n86), .A1(n87), .A2(n88), .B0(n134), .Y(ALU_OUT[4]) );
  AOI22X1M U62 ( .A0(N99), .A1(n136), .B0(N90), .B1(n63), .Y(n86) );
  AOI222X1M U63 ( .A0(N108), .A1(n61), .B0(n7), .B1(n137), .C0(N124), .C1(n73), 
        .Y(n87) );
  AOI221XLM U64 ( .A0(n135), .A1(n8), .B0(n140), .B1(n50), .C0(n89), .Y(n88)
         );
  AOI31X2M U65 ( .A0(n80), .A1(n81), .A2(n82), .B0(n134), .Y(ALU_OUT[5]) );
  AOI22X1M U66 ( .A0(N100), .A1(n136), .B0(N91), .B1(n63), .Y(n80) );
  AOI222X1M U67 ( .A0(N109), .A1(n61), .B0(n8), .B1(n137), .C0(N125), .C1(n73), 
        .Y(n81) );
  AOI221XLM U68 ( .A0(n135), .A1(n25), .B0(n140), .B1(n49), .C0(n83), .Y(n82)
         );
  AOI31X2M U69 ( .A0(n74), .A1(n75), .A2(n76), .B0(n134), .Y(ALU_OUT[6]) );
  AOI22X1M U70 ( .A0(N101), .A1(n136), .B0(N92), .B1(n63), .Y(n74) );
  AOI222X1M U71 ( .A0(N110), .A1(n61), .B0(n137), .B1(n25), .C0(N126), .C1(n73), .Y(n75) );
  AOI221XLM U72 ( .A0(n135), .A1(n26), .B0(n140), .B1(n48), .C0(n77), .Y(n76)
         );
  AOI31X2M U73 ( .A0(n113), .A1(n114), .A2(n115), .B0(n134), .Y(ALU_OUT[0]) );
  AOI22X1M U74 ( .A0(N95), .A1(n136), .B0(N86), .B1(n63), .Y(n113) );
  AOI222X1M U75 ( .A0(N104), .A1(n61), .B0(n3), .B1(n137), .C0(N120), .C1(n73), 
        .Y(n114) );
  AOI221XLM U76 ( .A0(n4), .A1(n135), .B0(n140), .B1(n127), .C0(n116), .Y(n115) );
  AOI31X2M U77 ( .A0(n104), .A1(n105), .A2(n106), .B0(n134), .Y(ALU_OUT[1]) );
  AOI22X1M U78 ( .A0(N96), .A1(n136), .B0(N87), .B1(n63), .Y(n104) );
  AOI222X1M U79 ( .A0(N105), .A1(n61), .B0(n4), .B1(n137), .C0(N121), .C1(n73), 
        .Y(n105) );
  AOI221XLM U80 ( .A0(n5), .A1(n135), .B0(n140), .B1(n126), .C0(n107), .Y(n106) );
  AOI31X2M U81 ( .A0(n98), .A1(n99), .A2(n100), .B0(n134), .Y(ALU_OUT[2]) );
  AOI22X1M U82 ( .A0(N97), .A1(n136), .B0(N88), .B1(n63), .Y(n98) );
  AOI222X1M U83 ( .A0(N106), .A1(n61), .B0(n5), .B1(n137), .C0(N122), .C1(n73), 
        .Y(n99) );
  AOI221XLM U84 ( .A0(n6), .A1(n135), .B0(n140), .B1(n46), .C0(n101), .Y(n100)
         );
  AOI31X2M U85 ( .A0(n92), .A1(n93), .A2(n94), .B0(n134), .Y(ALU_OUT[3]) );
  AOI22X1M U86 ( .A0(N98), .A1(n136), .B0(N89), .B1(n63), .Y(n92) );
  AOI222X1M U87 ( .A0(N107), .A1(n61), .B0(n6), .B1(n137), .C0(N123), .C1(n73), 
        .Y(n93) );
  AOI221XLM U88 ( .A0(n7), .A1(n135), .B0(n140), .B1(n125), .C0(n95), .Y(n94)
         );
  AOI31X2M U89 ( .A0(n65), .A1(n66), .A2(n67), .B0(n134), .Y(ALU_OUT[7]) );
  AOI22X1M U90 ( .A0(N102), .A1(n136), .B0(N93), .B1(n63), .Y(n65) );
  AOI22X1M U91 ( .A0(N127), .A1(n73), .B0(N111), .B1(n61), .Y(n66) );
  AOI221XLM U92 ( .A0(n140), .A1(n47), .B0(n137), .B1(n26), .C0(n68), .Y(n67)
         );
  OAI2B11X2M U93 ( .A1N(N103), .A0(n111), .B0(n54), .C0(n112), .Y(n64) );
  AOI21X2M U94 ( .A0(n59), .A1(n60), .B0(n134), .Y(ALU_OUT[8]) );
  AOI22X1M U95 ( .A0(n26), .A1(n142), .B0(N112), .B1(n61), .Y(n60) );
  AOI21X2M U96 ( .A0(N94), .A1(n63), .B0(n64), .Y(n59) );
  INVX2M U97 ( .A(n8), .Y(n49) );
  INVX2M U98 ( .A(n6), .Y(n125) );
  INVX2M U99 ( .A(n3), .Y(n127) );
  INVX2M U100 ( .A(n4), .Y(n126) );
  INVX2M U101 ( .A(n7), .Y(n50) );
  INVX2M U102 ( .A(n25), .Y(n48) );
  INVX2M U103 ( .A(n26), .Y(n47) );
  INVX2M U104 ( .A(n5), .Y(n46) );
  OAI222X1M U105 ( .A0(n108), .A1(n132), .B0(B_FF[1]), .B1(n109), .C0(n62), 
        .C1(n127), .Y(n107) );
  AOI221XLM U107 ( .A0(n71), .A1(n126), .B0(n4), .B1(n72), .C0(n137), .Y(n108)
         );
  AOI221XLM U108 ( .A0(n4), .A1(n71), .B0(n138), .B1(n126), .C0(n140), .Y(n109) );
  OAI222X1M U109 ( .A0(n102), .A1(n131), .B0(B_FF[2]), .B1(n103), .C0(n62), 
        .C1(n126), .Y(n101) );
  AOI221XLM U111 ( .A0(n71), .A1(n46), .B0(n5), .B1(n72), .C0(n137), .Y(n102)
         );
  AOI221XLM U112 ( .A0(n5), .A1(n71), .B0(n138), .B1(n46), .C0(n140), .Y(n103)
         );
  OAI222X1M U113 ( .A0(n96), .A1(n130), .B0(B_FF[3]), .B1(n97), .C0(n62), .C1(
        n46), .Y(n95) );
  AOI221XLM U115 ( .A0(n71), .A1(n125), .B0(n6), .B1(n72), .C0(n137), .Y(n96)
         );
  AOI221XLM U116 ( .A0(n6), .A1(n71), .B0(n138), .B1(n125), .C0(n140), .Y(n97)
         );
  OAI222X1M U117 ( .A0(n90), .A1(n44), .B0(B_FF[4]), .B1(n91), .C0(n62), .C1(
        n125), .Y(n89) );
  AOI221XLM U118 ( .A0(n71), .A1(n50), .B0(n7), .B1(n72), .C0(n137), .Y(n90)
         );
  AOI221XLM U119 ( .A0(n7), .A1(n71), .B0(n138), .B1(n50), .C0(n140), .Y(n91)
         );
  OAI222X1M U120 ( .A0(n84), .A1(n129), .B0(B_FF[5]), .B1(n85), .C0(n62), .C1(
        n50), .Y(n83) );
  AOI221XLM U122 ( .A0(n71), .A1(n49), .B0(n8), .B1(n72), .C0(n137), .Y(n84)
         );
  AOI221XLM U123 ( .A0(n8), .A1(n71), .B0(n138), .B1(n49), .C0(n140), .Y(n85)
         );
  OAI222X1M U124 ( .A0(n78), .A1(n45), .B0(B_FF[6]), .B1(n79), .C0(n62), .C1(
        n49), .Y(n77) );
  AOI221XLM U125 ( .A0(n71), .A1(n48), .B0(n25), .B1(n72), .C0(n137), .Y(n78)
         );
  AOI221XLM U126 ( .A0(n25), .A1(n71), .B0(n138), .B1(n48), .C0(n140), .Y(n79)
         );
  OAI222X1M U127 ( .A0(n69), .A1(n128), .B0(B_FF[7]), .B1(n70), .C0(n62), .C1(
        n48), .Y(n68) );
  AOI221XLM U129 ( .A0(n71), .A1(n47), .B0(n26), .B1(n72), .C0(n137), .Y(n69)
         );
  AOI221XLM U130 ( .A0(n71), .A1(n26), .B0(n138), .B1(n47), .C0(n140), .Y(n70)
         );
  OAI221X1M U131 ( .A0(B_FF[0]), .A1(n117), .B0(n118), .B1(n133), .C0(n119), 
        .Y(n116) );
  NAND4BX1M U133 ( .AN(n120), .B(n143), .C(ALU_FUN[3]), .D(ALU_FUN[1]), .Y(
        n119) );
  AOI221XLM U134 ( .A0(n71), .A1(n127), .B0(n3), .B1(n72), .C0(n137), .Y(n118)
         );
  AOI22X1M U135 ( .A0(N152), .A1(n139), .B0(N153), .B1(ALU_FUN[0]), .Y(n120)
         );
  BUFX2M U137 ( .A(A_FF[5]), .Y(n8) );
  BUFX2M U138 ( .A(A_FF[2]), .Y(n5) );
  BUFX2M U139 ( .A(A_FF[3]), .Y(n6) );
  BUFX2M U140 ( .A(A_FF[7]), .Y(n26) );
  BUFX2M U141 ( .A(A_FF[0]), .Y(n3) );
  BUFX2M U142 ( .A(A_FF[1]), .Y(n4) );
  BUFX2M U143 ( .A(A_FF[4]), .Y(n7) );
  BUFX2M U144 ( .A(A_FF[6]), .Y(n25) );
  NOR2BX1M U146 ( .AN(B_FF[0]), .B(n3), .Y(n27) );
  OAI2B2X1M U147 ( .A1N(n4), .A0(n27), .B0(B_FF[1]), .B1(n27), .Y(n28) );
  NAND2BX1M U148 ( .AN(n25), .B(B_FF[6]), .Y(n39) );
  CLKNAND2X2M U149 ( .A(B_FF[5]), .B(n49), .Y(n38) );
  NAND2BX1M U150 ( .AN(n7), .B(B_FF[4]), .Y(n35) );
  NAND4X1M U151 ( .A(n28), .B(n39), .C(n38), .D(n35), .Y(n43) );
  CLKNAND2X2M U152 ( .A(B_FF[3]), .B(n125), .Y(n34) );
  CLKNAND2X2M U153 ( .A(B_FF[2]), .B(n46), .Y(n29) );
  CLKNAND2X2M U154 ( .A(n34), .B(n29), .Y(n42) );
  NOR2BX1M U155 ( .AN(B_FF[7]), .B(n26), .Y(n41) );
  NOR2BX1M U156 ( .AN(n3), .B(B_FF[0]), .Y(n31) );
  OAI2BB1X1M U157 ( .A0N(n31), .A1N(n4), .B0(B_FF[1]), .Y(n30) );
  OAI211X1M U158 ( .A0(n4), .A1(n31), .B0(n30), .C0(n29), .Y(n32) );
  OAI221X1M U159 ( .A0(B_FF[2]), .A1(n46), .B0(B_FF[3]), .B1(n125), .C0(n32), 
        .Y(n33) );
  AOI32X1M U160 ( .A0(n35), .A1(n34), .A2(n33), .B0(n7), .B1(n44), .Y(n36) );
  OAI21X1M U161 ( .A0(B_FF[5]), .A1(n49), .B0(n36), .Y(n37) );
  AOI32X1M U162 ( .A0(n39), .A1(n38), .A2(n37), .B0(n25), .B1(n45), .Y(n40) );
  OAI2B2X1M U163 ( .A1N(n26), .A0(B_FF[7]), .B0(n41), .B1(n40), .Y(N153) );
  NOR4X1M U164 ( .A(n43), .B(n42), .C(N153), .D(n41), .Y(N152) );
  ALU_TOP_DW_div_uns_0 div_40 ( .a({n26, n25, n8, n7, n6, n5, n4, n3}), .b(
        B_FF), .quotient({N127, N126, N125, N124, N123, N122, N121, N120}) );
  ALU_TOP_DW01_sub_0 sub_28 ( .A({1'b0, n26, n25, n8, n7, n6, n5, n4, n3}), 
        .B({1'b0, B_FF}), .CI(1'b0), .DIFF({N103, N102, N101, N100, N99, N98, 
        N97, N96, N95}) );
  ALU_TOP_DW01_add_0 add_22 ( .A({1'b0, n26, n25, n8, n7, n6, n5, n4, n3}), 
        .B({1'b0, B_FF}), .CI(1'b0), .SUM({N94, N93, N92, N91, N90, N89, N88, 
        N87, N86}) );
  ALU_TOP_DW02_mult_0 mult_34 ( .A({n26, n25, n8, n7, n6, n5, n4, n3}), .B(
        B_FF), .TC(1'b0), .PRODUCT({N119, N118, N117, N116, N115, N114, N113, 
        N112, N111, N110, N109, N108, N107, N106, N105, N104}) );
  SDFFRX1M \B_FF_reg[0]  ( .D(B[0]), .SI(A_FF[7]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(B_FF[0]), .QN(n133) );
  SDFFRX1M \A_FF_reg[7]  ( .D(A[7]), .SI(A_FF[6]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(A_FF[7]) );
  SDFFRX1M \A_FF_reg[6]  ( .D(A[6]), .SI(A_FF[5]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(A_FF[6]) );
  SDFFRX1M \A_FF_reg[5]  ( .D(A[5]), .SI(A_FF[4]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(A_FF[5]) );
  SDFFRX1M \A_FF_reg[4]  ( .D(A[4]), .SI(A_FF[3]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(A_FF[4]) );
  SDFFRX1M \A_FF_reg[3]  ( .D(A[3]), .SI(A_FF[2]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(A_FF[3]) );
  SDFFRX1M \A_FF_reg[2]  ( .D(A[2]), .SI(A_FF[1]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(A_FF[2]) );
  SDFFRX1M \A_FF_reg[1]  ( .D(A[1]), .SI(A_FF[0]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(A_FF[1]) );
  SDFFRX1M \B_FF_reg[5]  ( .D(B[5]), .SI(B_FF[4]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(B_FF[5]), .QN(n129) );
  SDFFRX1M \B_FF_reg[2]  ( .D(B[2]), .SI(B_FF[1]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(B_FF[2]), .QN(n131) );
  SDFFRX1M \B_FF_reg[7]  ( .D(B[7]), .SI(B_FF[6]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(B_FF[7]), .QN(n128) );
  SDFFRX1M \B_FF_reg[4]  ( .D(B[4]), .SI(B_FF[3]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(B_FF[4]), .QN(n44) );
  SDFFRX1M \B_FF_reg[3]  ( .D(B[3]), .SI(B_FF[2]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(B_FF[3]), .QN(n130) );
  SDFFRX1M \B_FF_reg[6]  ( .D(B[6]), .SI(B_FF[5]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(B_FF[6]), .QN(n45) );
  SDFFRX1M \B_FF_reg[1]  ( .D(B[1]), .SI(B_FF[0]), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(B_FF[1]), .QN(n132) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX8M U0 ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, scan_clk, scan_rst, 
        test_mode, SI, SE, UART_TX_O, parity_error, framing_error, sys_Error, 
        SO );
  input [3:0] SI;
  output [3:0] SO;
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN, scan_clk, scan_rst, test_mode,
         SE;
  output UART_TX_O, parity_error, framing_error, sys_Error;
  wire   REF_CLK_M, UART_CLK_M, UART_TX_CLK, UART_TX_CLK_M, UART_RX_CLK,
         UART_RX_CLK_M, RST_M, SYNC_UART_RST, SYNC_UART_RST_M, SYNC_REF_RST,
         SYNC_REF_RST_M, UART_RX_V_OUT, UART_RX_V_SYNC, UART_TX_VLD,
         UART_TX_Busy_PULSE, FIFO_FULL, UART_TX_V_SYNC, UART_TX_Busy,
         RF_RdData_VLD, RF_WrEn, RF_RdEn, ALU_EN, ALU_OUT_VLD, CLKG_EN,
         ALU_CLK, _1_net_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n13, n14,
         n17, n18, n21, n24, n25, n26, n27;
  wire   [7:0] UART_RX_OUT;
  wire   [7:0] UART_RX_SYNC;
  wire   [7:0] UART_TX_IN;
  wire   [7:0] UART_TX_SYNC;
  wire   [7:0] DIV_RATIO;
  wire   [7:0] UART_Config;
  wire   [7:0] DIV_RATIO_RX;
  wire   [7:0] RF_RdData;
  wire   [3:0] RF_Address;
  wire   [7:0] RF_WrData;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [7:0] Operand_A;
  wire   [7:0] Operand_B;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  INVX2M U3 ( .A(n8), .Y(n7) );
  BUFX2M U4 ( .A(RF_RdData_VLD), .Y(n6) );
  BUFX2M U5 ( .A(RF_RdEn), .Y(n5) );
  INVX2M U6 ( .A(UART_TX_V_SYNC), .Y(n1) );
  BUFX2M U7 ( .A(RF_Address[1]), .Y(n4) );
  BUFX2M U8 ( .A(RF_Address[0]), .Y(n3) );
  INVX2M U9 ( .A(SYNC_REF_RST_M), .Y(n8) );
  INVX4M U10 ( .A(n10), .Y(n9) );
  INVX2M U11 ( .A(SYNC_UART_RST_M), .Y(n10) );
  BUFX2M U12 ( .A(UART_RX_IN), .Y(n2) );
  OR2X2M U13 ( .A(CLKG_EN), .B(test_mode), .Y(_1_net_) );
  mux2X1_0 u0_clk_mux ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(REF_CLK_M) );
  mux2X1_6 u1_clk_mux ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(UART_CLK_M) );
  mux2X1_5 u2_clk_mux ( .IN_0(UART_TX_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(UART_TX_CLK_M) );
  mux2X1_4 u3_clk_mux ( .IN_0(UART_RX_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(UART_RX_CLK_M) );
  mux2X1_3 u0_rst_mux ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        RST_M) );
  mux2X1_2 u1_rst_mux ( .IN_0(SYNC_UART_RST), .IN_1(scan_rst), .SEL(test_mode), 
        .OUT(SYNC_UART_RST_M) );
  mux2X1_1 u2_rst_mux ( .IN_0(SYNC_REF_RST), .IN_1(scan_rst), .SEL(test_mode), 
        .OUT(SYNC_REF_RST_M) );
  RST_SYNC_NUM_STAGES2_test_0 U0_RST_SYNC ( .RST(RST_M), .CLK(UART_CLK_M), 
        .SYNC_RST(SYNC_UART_RST), .test_si(n25), .test_so(n24), .test_se(SE)
         );
  RST_SYNC_NUM_STAGES2_test_1 U1_RST_SYNC ( .RST(RST_M), .CLK(REF_CLK_M), 
        .SYNC_RST(SYNC_REF_RST), .test_si(n13), .test_so(SO[0]), .test_se(SE)
         );
  DATA_SYNC_BUS_WIDTH8_NUM_STAGES2_test_1 U0_ref_sync ( .Unsync_bus(
        UART_RX_OUT), .CLK(REF_CLK_M), .RST(n7), .bus_enable(UART_RX_V_OUT), 
        .enable_pulse(UART_RX_V_SYNC), .sync_bus(UART_RX_SYNC), .test_si(n14), 
        .test_se(SE) );
  FIFO_TOP_DATA_WIDTH8_pointer_width4_test_1 U0_UART_FIFO ( .W_CLK(REF_CLK_M), 
        .W_RST(n7), .W_INC(UART_TX_VLD), .R_CLK(UART_TX_CLK_M), .R_RST(n9), 
        .R_INC(UART_TX_Busy_PULSE), .WR_DATA(UART_TX_IN), .FULL(FIFO_FULL), 
        .RD_DATA(UART_TX_SYNC), .EMPTY(UART_TX_V_SYNC), .test_si2(SI[0]), 
        .test_si1(n17), .test_so2(n14), .test_so1(SO[1]), .test_se(SE) );
  PULSE_GEN_test_1 U0_PULSE_GEN ( .LVL_SIG(UART_TX_Busy), .CLK(UART_TX_CLK_M), 
        .RST(n9), .PULSE_SIG(UART_TX_Busy_PULSE), .test_si(n26), .test_so(n25), 
        .test_se(SE) );
  CLK_Divider_test_0 U0_ClkDiv ( .I_ref_clk(UART_CLK_M), .I_rst_n(n9), 
        .I_clk_en(1'b1), .I_div_ratio(DIV_RATIO), .O_div_clk(UART_TX_CLK), 
        .test_si(n27), .test_so(n26), .test_se(SE) );
  CLKDIV_MUX U0_CLKDIV_MUX ( .IN(UART_Config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  CLK_Divider_test_1 U1_ClkDiv ( .I_ref_clk(UART_CLK_M), .I_rst_n(n9), 
        .I_clk_en(1'b1), .I_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        DIV_RATIO_RX[3:0]}), .O_div_clk(UART_RX_CLK), .test_si(UART_RX_SYNC[7]), .test_so(n13), .test_se(SE) );
  UART_test_1 U0_UART ( .RST(n9), .TX_CLK(UART_TX_CLK_M), .RX_CLK(
        UART_RX_CLK_M), .parity_enable(UART_Config[0]), .parity_type(
        UART_Config[1]), .Prescale(UART_Config[7:2]), .RX_IN(n2), 
        .TX_IN_P_Data(UART_TX_SYNC), .TX_IN_Valid(n1), .RX_OUT_P_Data(
        UART_RX_OUT), .RX_OUT_Valid(UART_RX_V_OUT), .TX_OUT(UART_TX_O), .busy(
        UART_TX_Busy), .parity_error(parity_error), .framing_error(
        framing_error), .test_si(n18), .test_so(n17), .test_se(SE) );
  System_CTRL_test_1 U0_SYS_CTRL ( .ALU_OUT(ALU_OUT), .OUT_VALID(ALU_OUT_VLD), 
        .Rx_P_Data(UART_RX_SYNC), .Rx_D_VLD(UART_RX_V_SYNC), .Rd_Data(
        RF_RdData), .Rd_Data_VALID(n6), .CLK(REF_CLK_M), .RST(n7), .FIFO_FULL(
        FIFO_FULL), .ALU_EN(ALU_EN), .ALU_FUN(ALU_FUN), .Gate_En(CLKG_EN), 
        .out_address(RF_Address), .Wr_En(RF_WrEn), .Rd_En(RF_RdEn), .Wr_Data(
        RF_WrData), .Wr_Data_FIFO(UART_TX_IN), .WR_INC(UART_TX_VLD), 
        .sys_Error(sys_Error), .test_si2(SI[1]), .test_si1(n21), .test_so2(n18), .test_so1(SO[2]), .test_se(SE) );
  REG_FILE_test_1 U0_RegFile ( .adress({RF_Address[3:2], n4, n3}), .WrData(
        RF_WrData), .clk(REF_CLK_M), .RST(n7), .WrEn(RF_WrEn), .RdEn(n5), 
        .RdData(RF_RdData), .REG0(Operand_A), .REG1(Operand_B), .REG2(
        UART_Config), .REG3(DIV_RATIO), .RdData_Valid(RF_RdData_VLD), 
        .test_si2(SI[2]), .test_si1(n24), .test_so2(n21), .test_so1(SO[3]), 
        .test_se(SE) );
  ALU_TOP_test_1 U0_ALU ( .A(Operand_A), .B(Operand_B), .ALU_FUN(ALU_FUN), 
        .clk(ALU_CLK), .RST(n7), .Enable(ALU_EN), .OUT_VALID(ALU_OUT_VLD), 
        .ALU_OUT(ALU_OUT), .test_si(SI[3]), .test_so(n27), .test_se(SE) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(_1_net_), .CLK(REF_CLK_M), .GATED_CLK(ALU_CLK) );
endmodule

