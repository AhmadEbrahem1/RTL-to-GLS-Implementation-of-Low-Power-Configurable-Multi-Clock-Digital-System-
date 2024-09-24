/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sat Sep 30 02:08:32 2023
/////////////////////////////////////////////////////////////


module RST_SYNC_NUM_STAGES2_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;

  wire   [1:0] SYN_FLOPS;

  DFFRQX2M SYNC_RST_reg ( .D(SYN_FLOPS[0]), .CK(CLK), .RN(RST), .Q(SYNC_RST)
         );
  DFFRQX2M \SYN_FLOPS_reg[0]  ( .D(SYN_FLOPS[1]), .CK(CLK), .RN(RST), .Q(
        SYN_FLOPS[0]) );
  DFFRQX2M \SYN_FLOPS_reg[1]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(SYN_FLOPS[1])
         );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;

  wire   [1:0] SYN_FLOPS;

  DFFRQX2M SYNC_RST_reg ( .D(SYN_FLOPS[0]), .CK(CLK), .RN(RST), .Q(SYNC_RST)
         );
  DFFRQX2M \SYN_FLOPS_reg[0]  ( .D(SYN_FLOPS[1]), .CK(CLK), .RN(RST), .Q(
        SYN_FLOPS[0]) );
  DFFRQX2M \SYN_FLOPS_reg[1]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(SYN_FLOPS[1])
         );
endmodule


module DATA_SYNC_BUS_WIDTH8_NUM_STAGES2 ( Unsync_bus, CLK, RST, bus_enable, 
        enable_pulse, sync_bus );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse;
  wire   Multi_FF, PG_FF, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] SYN_FLOPS;

  DFFRQX2M PG_FF_reg ( .D(Multi_FF), .CK(CLK), .RN(RST), .Q(PG_FF) );
  EDFFHQX2M Multi_FF_reg ( .D(SYN_FLOPS[0]), .E(RST), .CK(CLK), .Q(Multi_FF)
         );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M \SYN_FLOPS_reg[1]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(
        SYN_FLOPS[1]) );
  DFFRQX2M \SYN_FLOPS_reg[0]  ( .D(SYN_FLOPS[1]), .CK(CLK), .RN(RST), .Q(
        SYN_FLOPS[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(PG_FF), .B(Multi_FF), .Y(n1) );
  AO22X1M U5 ( .A0(Unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(Unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(Unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(Unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(Unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(Unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(Unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(Unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module FIFO_MEMORY ( WR_DATA, Wr_en, W_CLK, W_RST, W_adrr, R_addr, RD_DATA );
  input [7:0] WR_DATA;
  input [2:0] W_adrr;
  input [2:0] R_addr;
  output [7:0] RD_DATA;
  input Wr_en, W_CLK, W_RST;
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
         \fifo_MEM[0][0] , n11, n13, n14, n15, n16, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n12, n17, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126;
  assign N10 = R_addr[0];
  assign N11 = R_addr[1];
  assign N12 = R_addr[2];

  DFFRQX1M \fifo_MEM_reg[5][0]  ( .D(n61), .CK(W_CLK), .RN(n100), .Q(
        \fifo_MEM[5][0] ) );
  DFFRQX1M \fifo_MEM_reg[4][0]  ( .D(n53), .CK(W_CLK), .RN(n101), .Q(
        \fifo_MEM[4][0] ) );
  DFFRQX1M \fifo_MEM_reg[3][0]  ( .D(n45), .CK(W_CLK), .RN(n102), .Q(
        \fifo_MEM[3][0] ) );
  DFFRQX1M \fifo_MEM_reg[2][0]  ( .D(n37), .CK(W_CLK), .RN(n102), .Q(
        \fifo_MEM[2][0] ) );
  DFFRQX1M \fifo_MEM_reg[1][0]  ( .D(n29), .CK(W_CLK), .RN(n103), .Q(
        \fifo_MEM[1][0] ) );
  DFFRQX1M \fifo_MEM_reg[0][0]  ( .D(n21), .CK(W_CLK), .RN(n103), .Q(
        \fifo_MEM[0][0] ) );
  DFFRQX1M \fifo_MEM_reg[7][0]  ( .D(n77), .CK(W_CLK), .RN(n99), .Q(
        \fifo_MEM[7][0] ) );
  DFFRQX1M \fifo_MEM_reg[6][0]  ( .D(n69), .CK(W_CLK), .RN(n100), .Q(
        \fifo_MEM[6][0] ) );
  DFFRQX2M \fifo_MEM_reg[7][1]  ( .D(n78), .CK(W_CLK), .RN(n99), .Q(
        \fifo_MEM[7][1] ) );
  DFFRQX2M \fifo_MEM_reg[0][1]  ( .D(n22), .CK(W_CLK), .RN(n103), .Q(
        \fifo_MEM[0][1] ) );
  DFFRQX2M \fifo_MEM_reg[5][7]  ( .D(n68), .CK(W_CLK), .RN(n100), .Q(
        \fifo_MEM[5][7] ) );
  DFFRQX2M \fifo_MEM_reg[5][6]  ( .D(n67), .CK(W_CLK), .RN(n100), .Q(
        \fifo_MEM[5][6] ) );
  DFFRQX2M \fifo_MEM_reg[5][5]  ( .D(n66), .CK(W_CLK), .RN(n100), .Q(
        \fifo_MEM[5][5] ) );
  DFFRQX2M \fifo_MEM_reg[5][4]  ( .D(n65), .CK(W_CLK), .RN(n100), .Q(
        \fifo_MEM[5][4] ) );
  DFFRQX2M \fifo_MEM_reg[5][3]  ( .D(n64), .CK(W_CLK), .RN(n100), .Q(
        \fifo_MEM[5][3] ) );
  DFFRQX2M \fifo_MEM_reg[5][2]  ( .D(n63), .CK(W_CLK), .RN(n100), .Q(
        \fifo_MEM[5][2] ) );
  DFFRQX2M \fifo_MEM_reg[1][7]  ( .D(n36), .CK(W_CLK), .RN(n102), .Q(
        \fifo_MEM[1][7] ) );
  DFFRQX2M \fifo_MEM_reg[1][6]  ( .D(n35), .CK(W_CLK), .RN(n102), .Q(
        \fifo_MEM[1][6] ) );
  DFFRQX2M \fifo_MEM_reg[1][5]  ( .D(n34), .CK(W_CLK), .RN(n102), .Q(
        \fifo_MEM[1][5] ) );
  DFFRQX2M \fifo_MEM_reg[1][4]  ( .D(n33), .CK(W_CLK), .RN(n102), .Q(
        \fifo_MEM[1][4] ) );
  DFFRQX2M \fifo_MEM_reg[1][3]  ( .D(n32), .CK(W_CLK), .RN(n103), .Q(
        \fifo_MEM[1][3] ) );
  DFFRQX2M \fifo_MEM_reg[1][2]  ( .D(n31), .CK(W_CLK), .RN(n103), .Q(
        \fifo_MEM[1][2] ) );
  DFFRQX2M \fifo_MEM_reg[7][7]  ( .D(n84), .CK(W_CLK), .RN(n99), .Q(
        \fifo_MEM[7][7] ) );
  DFFRQX2M \fifo_MEM_reg[7][6]  ( .D(n83), .CK(W_CLK), .RN(n99), .Q(
        \fifo_MEM[7][6] ) );
  DFFRQX2M \fifo_MEM_reg[7][5]  ( .D(n82), .CK(W_CLK), .RN(n99), .Q(
        \fifo_MEM[7][5] ) );
  DFFRQX2M \fifo_MEM_reg[7][4]  ( .D(n81), .CK(W_CLK), .RN(n99), .Q(
        \fifo_MEM[7][4] ) );
  DFFRQX2M \fifo_MEM_reg[7][3]  ( .D(n80), .CK(W_CLK), .RN(n99), .Q(
        \fifo_MEM[7][3] ) );
  DFFRQX2M \fifo_MEM_reg[7][2]  ( .D(n79), .CK(W_CLK), .RN(n99), .Q(
        \fifo_MEM[7][2] ) );
  DFFRQX2M \fifo_MEM_reg[3][7]  ( .D(n52), .CK(W_CLK), .RN(n101), .Q(
        \fifo_MEM[3][7] ) );
  DFFRQX2M \fifo_MEM_reg[3][6]  ( .D(n51), .CK(W_CLK), .RN(n101), .Q(
        \fifo_MEM[3][6] ) );
  DFFRQX2M \fifo_MEM_reg[3][5]  ( .D(n50), .CK(W_CLK), .RN(n101), .Q(
        \fifo_MEM[3][5] ) );
  DFFRQX2M \fifo_MEM_reg[3][4]  ( .D(n49), .CK(W_CLK), .RN(n101), .Q(
        \fifo_MEM[3][4] ) );
  DFFRQX2M \fifo_MEM_reg[3][3]  ( .D(n48), .CK(W_CLK), .RN(n101), .Q(
        \fifo_MEM[3][3] ) );
  DFFRQX2M \fifo_MEM_reg[3][2]  ( .D(n47), .CK(W_CLK), .RN(n101), .Q(
        \fifo_MEM[3][2] ) );
  DFFRQX2M \fifo_MEM_reg[6][7]  ( .D(n76), .CK(W_CLK), .RN(n99), .Q(
        \fifo_MEM[6][7] ) );
  DFFRQX2M \fifo_MEM_reg[6][6]  ( .D(n75), .CK(W_CLK), .RN(n99), .Q(
        \fifo_MEM[6][6] ) );
  DFFRQX2M \fifo_MEM_reg[6][5]  ( .D(n74), .CK(W_CLK), .RN(n99), .Q(
        \fifo_MEM[6][5] ) );
  DFFRQX2M \fifo_MEM_reg[6][4]  ( .D(n73), .CK(W_CLK), .RN(n99), .Q(
        \fifo_MEM[6][4] ) );
  DFFRQX2M \fifo_MEM_reg[6][3]  ( .D(n72), .CK(W_CLK), .RN(n99), .Q(
        \fifo_MEM[6][3] ) );
  DFFRQX2M \fifo_MEM_reg[6][2]  ( .D(n71), .CK(W_CLK), .RN(n100), .Q(
        \fifo_MEM[6][2] ) );
  DFFRQX2M \fifo_MEM_reg[2][7]  ( .D(n44), .CK(W_CLK), .RN(n102), .Q(
        \fifo_MEM[2][7] ) );
  DFFRQX2M \fifo_MEM_reg[2][6]  ( .D(n43), .CK(W_CLK), .RN(n102), .Q(
        \fifo_MEM[2][6] ) );
  DFFRQX2M \fifo_MEM_reg[2][5]  ( .D(n42), .CK(W_CLK), .RN(n102), .Q(
        \fifo_MEM[2][5] ) );
  DFFRQX2M \fifo_MEM_reg[2][4]  ( .D(n41), .CK(W_CLK), .RN(n102), .Q(
        \fifo_MEM[2][4] ) );
  DFFRQX2M \fifo_MEM_reg[2][3]  ( .D(n40), .CK(W_CLK), .RN(n102), .Q(
        \fifo_MEM[2][3] ) );
  DFFRQX2M \fifo_MEM_reg[2][2]  ( .D(n39), .CK(W_CLK), .RN(n102), .Q(
        \fifo_MEM[2][2] ) );
  DFFRQX2M \fifo_MEM_reg[4][7]  ( .D(n60), .CK(W_CLK), .RN(n100), .Q(
        \fifo_MEM[4][7] ) );
  DFFRQX2M \fifo_MEM_reg[4][6]  ( .D(n59), .CK(W_CLK), .RN(n100), .Q(
        \fifo_MEM[4][6] ) );
  DFFRQX2M \fifo_MEM_reg[4][5]  ( .D(n58), .CK(W_CLK), .RN(n101), .Q(
        \fifo_MEM[4][5] ) );
  DFFRQX2M \fifo_MEM_reg[4][4]  ( .D(n57), .CK(W_CLK), .RN(n101), .Q(
        \fifo_MEM[4][4] ) );
  DFFRQX2M \fifo_MEM_reg[4][3]  ( .D(n56), .CK(W_CLK), .RN(n101), .Q(
        \fifo_MEM[4][3] ) );
  DFFRQX2M \fifo_MEM_reg[4][2]  ( .D(n55), .CK(W_CLK), .RN(n101), .Q(
        \fifo_MEM[4][2] ) );
  DFFRQX2M \fifo_MEM_reg[0][7]  ( .D(n28), .CK(W_CLK), .RN(n103), .Q(
        \fifo_MEM[0][7] ) );
  DFFRQX2M \fifo_MEM_reg[0][6]  ( .D(n27), .CK(W_CLK), .RN(n103), .Q(
        \fifo_MEM[0][6] ) );
  DFFRQX2M \fifo_MEM_reg[0][5]  ( .D(n26), .CK(W_CLK), .RN(n103), .Q(
        \fifo_MEM[0][5] ) );
  DFFRQX2M \fifo_MEM_reg[0][4]  ( .D(n25), .CK(W_CLK), .RN(n103), .Q(
        \fifo_MEM[0][4] ) );
  DFFRQX2M \fifo_MEM_reg[0][3]  ( .D(n24), .CK(W_CLK), .RN(n103), .Q(
        \fifo_MEM[0][3] ) );
  DFFRQX2M \fifo_MEM_reg[0][2]  ( .D(n23), .CK(W_CLK), .RN(n103), .Q(
        \fifo_MEM[0][2] ) );
  DFFRQX1M \fifo_MEM_reg[6][1]  ( .D(n70), .CK(W_CLK), .RN(n100), .Q(
        \fifo_MEM[6][1] ) );
  DFFRQX1M \fifo_MEM_reg[2][1]  ( .D(n38), .CK(W_CLK), .RN(n102), .Q(
        \fifo_MEM[2][1] ) );
  DFFRQX1M \fifo_MEM_reg[5][1]  ( .D(n62), .CK(W_CLK), .RN(n100), .Q(
        \fifo_MEM[5][1] ) );
  DFFRQX1M \fifo_MEM_reg[1][1]  ( .D(n30), .CK(W_CLK), .RN(n103), .Q(
        \fifo_MEM[1][1] ) );
  DFFRQX1M \fifo_MEM_reg[3][1]  ( .D(n46), .CK(W_CLK), .RN(n101), .Q(
        \fifo_MEM[3][1] ) );
  DFFRQX1M \fifo_MEM_reg[4][1]  ( .D(n54), .CK(W_CLK), .RN(n101), .Q(
        \fifo_MEM[4][1] ) );
  MX2X1M U2 ( .A(\fifo_MEM[6][0] ), .B(WR_DATA[0]), .S0(n117), .Y(n69) );
  MX2X1M U3 ( .A(\fifo_MEM[0][1] ), .B(WR_DATA[1]), .S0(n104), .Y(n22) );
  MX2X1M U4 ( .A(\fifo_MEM[7][1] ), .B(WR_DATA[1]), .S0(n120), .Y(n78) );
  MX2X1M U5 ( .A(\fifo_MEM[1][1] ), .B(WR_DATA[1]), .S0(n105), .Y(n30) );
  MX2X1M U6 ( .A(\fifo_MEM[2][1] ), .B(WR_DATA[1]), .S0(n107), .Y(n38) );
  MX2X1M U7 ( .A(\fifo_MEM[3][1] ), .B(WR_DATA[1]), .S0(n109), .Y(n46) );
  MX2X1M U8 ( .A(\fifo_MEM[4][1] ), .B(WR_DATA[1]), .S0(n112), .Y(n54) );
  MX2X1M U9 ( .A(\fifo_MEM[5][1] ), .B(WR_DATA[1]), .S0(n113), .Y(n62) );
  MX2X1M U10 ( .A(\fifo_MEM[6][1] ), .B(WR_DATA[1]), .S0(n117), .Y(n70) );
  INVX2M U11 ( .A(n15), .Y(n109) );
  INVX2M U12 ( .A(n20), .Y(n120) );
  BUFX2M U13 ( .A(n98), .Y(n102) );
  BUFX2M U14 ( .A(n97), .Y(n101) );
  BUFX2M U15 ( .A(n97), .Y(n100) );
  BUFX2M U16 ( .A(n97), .Y(n99) );
  BUFX2M U17 ( .A(n98), .Y(n103) );
  OR2X2M U18 ( .A(n118), .B(n108), .Y(n15) );
  OR2X2M U19 ( .A(n119), .B(n118), .Y(n20) );
  INVX2M U20 ( .A(n108), .Y(n106) );
  INVX2M U21 ( .A(n119), .Y(n115) );
  INVX2M U22 ( .A(n96), .Y(n117) );
  INVX2M U23 ( .A(n92), .Y(n105) );
  INVX2M U24 ( .A(n93), .Y(n107) );
  INVX2M U25 ( .A(n94), .Y(n112) );
  INVX2M U26 ( .A(n95), .Y(n113) );
  INVX2M U27 ( .A(n91), .Y(n104) );
  BUFX2M U28 ( .A(W_RST), .Y(n97) );
  BUFX2M U29 ( .A(W_RST), .Y(n98) );
  INVX2M U30 ( .A(WR_DATA[2]), .Y(n126) );
  INVX2M U31 ( .A(WR_DATA[7]), .Y(n121) );
  INVX2M U32 ( .A(WR_DATA[3]), .Y(n125) );
  INVX2M U33 ( .A(WR_DATA[4]), .Y(n124) );
  INVX2M U34 ( .A(WR_DATA[5]), .Y(n123) );
  INVX2M U35 ( .A(WR_DATA[6]), .Y(n122) );
  BUFX2M U36 ( .A(n14), .Y(n93) );
  NAND3BX2M U37 ( .AN(n116), .B(n106), .C(n114), .Y(n14) );
  BUFX2M U38 ( .A(n19), .Y(n96) );
  NAND3BX2M U39 ( .AN(n116), .B(n115), .C(n114), .Y(n19) );
  BUFX2M U40 ( .A(n11), .Y(n91) );
  NAND3BX2M U41 ( .AN(W_adrr[0]), .B(n106), .C(n116), .Y(n11) );
  BUFX2M U42 ( .A(n13), .Y(n92) );
  NAND3BX2M U43 ( .AN(n114), .B(n106), .C(n116), .Y(n13) );
  BUFX2M U44 ( .A(n16), .Y(n94) );
  NAND3BX2M U45 ( .AN(W_adrr[0]), .B(n115), .C(n116), .Y(n16) );
  BUFX2M U46 ( .A(n18), .Y(n95) );
  NAND3BX2M U47 ( .AN(n114), .B(n115), .C(n116), .Y(n18) );
  OR2X2M U48 ( .A(W_adrr[2]), .B(n110), .Y(n108) );
  OR2X2M U49 ( .A(n111), .B(n110), .Y(n119) );
  INVX2M U50 ( .A(W_adrr[2]), .Y(n111) );
  INVX2M U51 ( .A(Wr_en), .Y(n110) );
  OR2X2M U52 ( .A(n114), .B(n116), .Y(n118) );
  INVX2M U53 ( .A(W_adrr[0]), .Y(n114) );
  BUFX2M U54 ( .A(N10), .Y(n90) );
  BUFX2M U55 ( .A(N10), .Y(n89) );
  OAI2BB2X1M U56 ( .B0(n126), .B1(n92), .A0N(\fifo_MEM[1][2] ), .A1N(n92), .Y(
        n31) );
  OAI2BB2X1M U57 ( .B0(n121), .B1(n92), .A0N(\fifo_MEM[1][7] ), .A1N(n92), .Y(
        n36) );
  OAI2BB2X1M U58 ( .B0(n126), .B1(n93), .A0N(\fifo_MEM[2][2] ), .A1N(n93), .Y(
        n39) );
  OAI2BB2X1M U59 ( .B0(n121), .B1(n93), .A0N(\fifo_MEM[2][7] ), .A1N(n93), .Y(
        n44) );
  OAI2BB2X1M U60 ( .B0(n126), .B1(n94), .A0N(\fifo_MEM[4][2] ), .A1N(n94), .Y(
        n55) );
  OAI2BB2X1M U61 ( .B0(n121), .B1(n94), .A0N(\fifo_MEM[4][7] ), .A1N(n94), .Y(
        n60) );
  OAI2BB2X1M U62 ( .B0(n126), .B1(n95), .A0N(\fifo_MEM[5][2] ), .A1N(n95), .Y(
        n63) );
  OAI2BB2X1M U63 ( .B0(n121), .B1(n95), .A0N(\fifo_MEM[5][7] ), .A1N(n95), .Y(
        n68) );
  OAI2BB2X1M U64 ( .B0(n126), .B1(n96), .A0N(\fifo_MEM[6][2] ), .A1N(n96), .Y(
        n71) );
  OAI2BB2X1M U65 ( .B0(n121), .B1(n96), .A0N(\fifo_MEM[6][7] ), .A1N(n96), .Y(
        n76) );
  OAI2BB2X1M U66 ( .B0(n91), .B1(n126), .A0N(\fifo_MEM[0][2] ), .A1N(n91), .Y(
        n23) );
  OAI2BB2X1M U67 ( .B0(n91), .B1(n121), .A0N(\fifo_MEM[0][7] ), .A1N(n91), .Y(
        n28) );
  OAI2BB2X1M U68 ( .B0(n126), .B1(n15), .A0N(\fifo_MEM[3][2] ), .A1N(n15), .Y(
        n47) );
  OAI2BB2X1M U69 ( .B0(n121), .B1(n15), .A0N(\fifo_MEM[3][7] ), .A1N(n15), .Y(
        n52) );
  OAI2BB2X1M U70 ( .B0(n126), .B1(n20), .A0N(\fifo_MEM[7][2] ), .A1N(n20), .Y(
        n79) );
  OAI2BB2X1M U71 ( .B0(n121), .B1(n20), .A0N(\fifo_MEM[7][7] ), .A1N(n20), .Y(
        n84) );
  OAI2BB2X1M U72 ( .B0(n125), .B1(n92), .A0N(\fifo_MEM[1][3] ), .A1N(n92), .Y(
        n32) );
  OAI2BB2X1M U73 ( .B0(n124), .B1(n92), .A0N(\fifo_MEM[1][4] ), .A1N(n92), .Y(
        n33) );
  OAI2BB2X1M U74 ( .B0(n123), .B1(n92), .A0N(\fifo_MEM[1][5] ), .A1N(n92), .Y(
        n34) );
  OAI2BB2X1M U75 ( .B0(n122), .B1(n92), .A0N(\fifo_MEM[1][6] ), .A1N(n92), .Y(
        n35) );
  OAI2BB2X1M U76 ( .B0(n125), .B1(n93), .A0N(\fifo_MEM[2][3] ), .A1N(n93), .Y(
        n40) );
  OAI2BB2X1M U77 ( .B0(n124), .B1(n93), .A0N(\fifo_MEM[2][4] ), .A1N(n93), .Y(
        n41) );
  OAI2BB2X1M U78 ( .B0(n123), .B1(n93), .A0N(\fifo_MEM[2][5] ), .A1N(n93), .Y(
        n42) );
  OAI2BB2X1M U79 ( .B0(n122), .B1(n93), .A0N(\fifo_MEM[2][6] ), .A1N(n93), .Y(
        n43) );
  OAI2BB2X1M U80 ( .B0(n125), .B1(n94), .A0N(\fifo_MEM[4][3] ), .A1N(n94), .Y(
        n56) );
  OAI2BB2X1M U81 ( .B0(n124), .B1(n94), .A0N(\fifo_MEM[4][4] ), .A1N(n94), .Y(
        n57) );
  OAI2BB2X1M U82 ( .B0(n123), .B1(n94), .A0N(\fifo_MEM[4][5] ), .A1N(n94), .Y(
        n58) );
  OAI2BB2X1M U83 ( .B0(n122), .B1(n94), .A0N(\fifo_MEM[4][6] ), .A1N(n94), .Y(
        n59) );
  OAI2BB2X1M U84 ( .B0(n125), .B1(n95), .A0N(\fifo_MEM[5][3] ), .A1N(n95), .Y(
        n64) );
  OAI2BB2X1M U85 ( .B0(n124), .B1(n95), .A0N(\fifo_MEM[5][4] ), .A1N(n95), .Y(
        n65) );
  OAI2BB2X1M U86 ( .B0(n123), .B1(n95), .A0N(\fifo_MEM[5][5] ), .A1N(n95), .Y(
        n66) );
  OAI2BB2X1M U87 ( .B0(n122), .B1(n95), .A0N(\fifo_MEM[5][6] ), .A1N(n95), .Y(
        n67) );
  OAI2BB2X1M U88 ( .B0(n125), .B1(n96), .A0N(\fifo_MEM[6][3] ), .A1N(n96), .Y(
        n72) );
  OAI2BB2X1M U89 ( .B0(n124), .B1(n96), .A0N(\fifo_MEM[6][4] ), .A1N(n96), .Y(
        n73) );
  OAI2BB2X1M U90 ( .B0(n123), .B1(n96), .A0N(\fifo_MEM[6][5] ), .A1N(n96), .Y(
        n74) );
  OAI2BB2X1M U91 ( .B0(n122), .B1(n96), .A0N(\fifo_MEM[6][6] ), .A1N(n96), .Y(
        n75) );
  OAI2BB2X1M U92 ( .B0(n91), .B1(n125), .A0N(\fifo_MEM[0][3] ), .A1N(n91), .Y(
        n24) );
  OAI2BB2X1M U93 ( .B0(n91), .B1(n124), .A0N(\fifo_MEM[0][4] ), .A1N(n91), .Y(
        n25) );
  OAI2BB2X1M U94 ( .B0(n91), .B1(n123), .A0N(\fifo_MEM[0][5] ), .A1N(n91), .Y(
        n26) );
  OAI2BB2X1M U95 ( .B0(n91), .B1(n122), .A0N(\fifo_MEM[0][6] ), .A1N(n91), .Y(
        n27) );
  OAI2BB2X1M U96 ( .B0(n125), .B1(n15), .A0N(\fifo_MEM[3][3] ), .A1N(n15), .Y(
        n48) );
  OAI2BB2X1M U97 ( .B0(n124), .B1(n15), .A0N(\fifo_MEM[3][4] ), .A1N(n15), .Y(
        n49) );
  OAI2BB2X1M U98 ( .B0(n123), .B1(n15), .A0N(\fifo_MEM[3][5] ), .A1N(n15), .Y(
        n50) );
  OAI2BB2X1M U99 ( .B0(n122), .B1(n15), .A0N(\fifo_MEM[3][6] ), .A1N(n15), .Y(
        n51) );
  OAI2BB2X1M U100 ( .B0(n125), .B1(n20), .A0N(\fifo_MEM[7][3] ), .A1N(n20), 
        .Y(n80) );
  OAI2BB2X1M U101 ( .B0(n124), .B1(n20), .A0N(\fifo_MEM[7][4] ), .A1N(n20), 
        .Y(n81) );
  OAI2BB2X1M U102 ( .B0(n123), .B1(n20), .A0N(\fifo_MEM[7][5] ), .A1N(n20), 
        .Y(n82) );
  OAI2BB2X1M U103 ( .B0(n122), .B1(n20), .A0N(\fifo_MEM[7][6] ), .A1N(n20), 
        .Y(n83) );
  INVX2M U104 ( .A(W_adrr[1]), .Y(n116) );
  MX2X2M U105 ( .A(n88), .B(n87), .S0(N12), .Y(RD_DATA[7]) );
  MX4X1M U106 ( .A(\fifo_MEM[4][7] ), .B(\fifo_MEM[5][7] ), .C(
        \fifo_MEM[6][7] ), .D(\fifo_MEM[7][7] ), .S0(n89), .S1(N11), .Y(n87)
         );
  MX4X1M U107 ( .A(\fifo_MEM[0][7] ), .B(\fifo_MEM[1][7] ), .C(
        \fifo_MEM[2][7] ), .D(\fifo_MEM[3][7] ), .S0(n90), .S1(N11), .Y(n88)
         );
  MX2X2M U108 ( .A(n86), .B(n85), .S0(N12), .Y(RD_DATA[6]) );
  MX4X1M U109 ( .A(\fifo_MEM[4][6] ), .B(\fifo_MEM[5][6] ), .C(
        \fifo_MEM[6][6] ), .D(\fifo_MEM[7][6] ), .S0(n89), .S1(N11), .Y(n85)
         );
  MX4X1M U110 ( .A(\fifo_MEM[0][6] ), .B(\fifo_MEM[1][6] ), .C(
        \fifo_MEM[2][6] ), .D(\fifo_MEM[3][6] ), .S0(n90), .S1(N11), .Y(n86)
         );
  MX2X2M U111 ( .A(n17), .B(n12), .S0(N12), .Y(RD_DATA[5]) );
  MX4X1M U112 ( .A(\fifo_MEM[4][5] ), .B(\fifo_MEM[5][5] ), .C(
        \fifo_MEM[6][5] ), .D(\fifo_MEM[7][5] ), .S0(n89), .S1(N11), .Y(n12)
         );
  MX4X1M U113 ( .A(\fifo_MEM[0][5] ), .B(\fifo_MEM[1][5] ), .C(
        \fifo_MEM[2][5] ), .D(\fifo_MEM[3][5] ), .S0(n90), .S1(N11), .Y(n17)
         );
  MX2X2M U114 ( .A(n10), .B(n9), .S0(N12), .Y(RD_DATA[4]) );
  MX4X1M U115 ( .A(\fifo_MEM[4][4] ), .B(\fifo_MEM[5][4] ), .C(
        \fifo_MEM[6][4] ), .D(\fifo_MEM[7][4] ), .S0(n89), .S1(N11), .Y(n9) );
  MX4X1M U116 ( .A(\fifo_MEM[0][4] ), .B(\fifo_MEM[1][4] ), .C(
        \fifo_MEM[2][4] ), .D(\fifo_MEM[3][4] ), .S0(n90), .S1(N11), .Y(n10)
         );
  MX2X2M U117 ( .A(n8), .B(n7), .S0(N12), .Y(RD_DATA[3]) );
  MX4X1M U118 ( .A(\fifo_MEM[4][3] ), .B(\fifo_MEM[5][3] ), .C(
        \fifo_MEM[6][3] ), .D(\fifo_MEM[7][3] ), .S0(n89), .S1(N11), .Y(n7) );
  MX4X1M U119 ( .A(\fifo_MEM[0][3] ), .B(\fifo_MEM[1][3] ), .C(
        \fifo_MEM[2][3] ), .D(\fifo_MEM[3][3] ), .S0(n90), .S1(N11), .Y(n8) );
  MX2X2M U120 ( .A(n6), .B(n5), .S0(N12), .Y(RD_DATA[2]) );
  MX4X1M U121 ( .A(\fifo_MEM[4][2] ), .B(\fifo_MEM[5][2] ), .C(
        \fifo_MEM[6][2] ), .D(\fifo_MEM[7][2] ), .S0(n89), .S1(N11), .Y(n5) );
  MX4X1M U122 ( .A(\fifo_MEM[0][2] ), .B(\fifo_MEM[1][2] ), .C(
        \fifo_MEM[2][2] ), .D(\fifo_MEM[3][2] ), .S0(n90), .S1(N11), .Y(n6) );
  MX2X2M U123 ( .A(n4), .B(n3), .S0(N12), .Y(RD_DATA[1]) );
  MX4X1M U124 ( .A(\fifo_MEM[4][1] ), .B(\fifo_MEM[5][1] ), .C(
        \fifo_MEM[6][1] ), .D(\fifo_MEM[7][1] ), .S0(n89), .S1(N11), .Y(n3) );
  MX4X1M U125 ( .A(\fifo_MEM[0][1] ), .B(\fifo_MEM[1][1] ), .C(
        \fifo_MEM[2][1] ), .D(\fifo_MEM[3][1] ), .S0(n90), .S1(N11), .Y(n4) );
  MX2X2M U126 ( .A(n2), .B(n1), .S0(N12), .Y(RD_DATA[0]) );
  MX4X1M U127 ( .A(\fifo_MEM[0][0] ), .B(\fifo_MEM[1][0] ), .C(
        \fifo_MEM[2][0] ), .D(\fifo_MEM[3][0] ), .S0(n90), .S1(N11), .Y(n2) );
  MX2X1M U128 ( .A(\fifo_MEM[7][0] ), .B(WR_DATA[0]), .S0(n120), .Y(n77) );
  MX4X1M U129 ( .A(\fifo_MEM[4][0] ), .B(\fifo_MEM[5][0] ), .C(
        \fifo_MEM[6][0] ), .D(\fifo_MEM[7][0] ), .S0(n89), .S1(N11), .Y(n1) );
  MX2X1M U130 ( .A(\fifo_MEM[0][0] ), .B(WR_DATA[0]), .S0(n104), .Y(n21) );
  MX2X1M U131 ( .A(\fifo_MEM[1][0] ), .B(WR_DATA[0]), .S0(n105), .Y(n29) );
  MX2X1M U132 ( .A(\fifo_MEM[2][0] ), .B(WR_DATA[0]), .S0(n107), .Y(n37) );
  MX2X1M U133 ( .A(\fifo_MEM[3][0] ), .B(WR_DATA[0]), .S0(n109), .Y(n45) );
  MX2X1M U134 ( .A(\fifo_MEM[4][0] ), .B(WR_DATA[0]), .S0(n112), .Y(n53) );
  MX2X1M U135 ( .A(\fifo_MEM[5][0] ), .B(WR_DATA[0]), .S0(n113), .Y(n61) );
endmodule


module Wd_ptr ( winc, wfull, wclk, wrst_n, waddr, wptr );
  output [2:0] waddr;
  output [3:0] wptr;
  input winc, wfull, wclk, wrst_n;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  DFFRQX2M \wptr_reg[0]  ( .D(n8), .CK(wclk), .RN(wrst_n), .Q(wptr[0]) );
  DFFRQX2M \wptr_reg[1]  ( .D(n7), .CK(wclk), .RN(wrst_n), .Q(wptr[1]) );
  DFFRQX2M \wptr_reg[2]  ( .D(n6), .CK(wclk), .RN(wrst_n), .Q(wptr[2]) );
  DFFRQX2M \wptr_reg[3]  ( .D(n5), .CK(wclk), .RN(wrst_n), .Q(wptr[3]) );
  NAND2BX2M U3 ( .AN(wfull), .B(winc), .Y(n4) );
  NOR2BX2M U4 ( .AN(wptr[0]), .B(n4), .Y(n3) );
  NAND2X2M U5 ( .A(wptr[1]), .B(n3), .Y(n2) );
  XNOR2X2M U6 ( .A(wptr[2]), .B(n2), .Y(n6) );
  CLKXOR2X2M U7 ( .A(wptr[1]), .B(n3), .Y(n7) );
  CLKXOR2X2M U8 ( .A(wptr[3]), .B(n1), .Y(n5) );
  NOR2BX2M U9 ( .AN(wptr[2]), .B(n2), .Y(n1) );
  XNOR2X2M U10 ( .A(wptr[0]), .B(n4), .Y(n8) );
  BUFX2M U11 ( .A(wptr[2]), .Y(waddr[2]) );
  BUFX2M U12 ( .A(wptr[1]), .Y(waddr[1]) );
  BUFX2M U13 ( .A(wptr[0]), .Y(waddr[0]) );
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


module Wd_ptr_GREY ( winc, wclk, wrst_n, wq2_rptr, wfull, waddr, gray_wptr );
  input [3:0] wq2_rptr;
  output [2:0] waddr;
  output [3:0] gray_wptr;
  input winc, wclk, wrst_n;
  output wfull;
  wire   n1, n2, n3, n4;
  wire   [3:0] wptr;

  Wd_ptr Wd_ptr_u0 ( .winc(winc), .wfull(wfull), .wclk(wclk), .wrst_n(wrst_n), 
        .waddr(waddr), .wptr(wptr) );
  BINARY_TO_GRAY_0 w_ptr_gray ( .bin_pointer(wptr), .gray_pointer(gray_wptr)
         );
  NOR4X1M U1 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(wfull) );
  XNOR2X2M U2 ( .A(wq2_rptr[3]), .B(gray_wptr[3]), .Y(n2) );
  XNOR2X2M U3 ( .A(wq2_rptr[2]), .B(gray_wptr[2]), .Y(n1) );
  CLKXOR2X2M U4 ( .A(wq2_rptr[0]), .B(gray_wptr[0]), .Y(n3) );
  CLKXOR2X2M U5 ( .A(wq2_rptr[1]), .B(gray_wptr[1]), .Y(n4) );
endmodule


module Rd_ptr ( rinc, rclk, rrst_n, rempty, raddr, rptr );
  output [2:0] raddr;
  output [3:0] rptr;
  input rinc, rclk, rrst_n, rempty;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  DFFRQX2M \rptr_reg[0]  ( .D(n8), .CK(rclk), .RN(rrst_n), .Q(rptr[0]) );
  DFFRQX2M \rptr_reg[1]  ( .D(n7), .CK(rclk), .RN(rrst_n), .Q(rptr[1]) );
  DFFRQX2M \rptr_reg[2]  ( .D(n6), .CK(rclk), .RN(rrst_n), .Q(rptr[2]) );
  DFFRQX2M \rptr_reg[3]  ( .D(n5), .CK(rclk), .RN(rrst_n), .Q(rptr[3]) );
  NOR2BX2M U3 ( .AN(rptr[0]), .B(n4), .Y(n3) );
  NAND2X2M U4 ( .A(rptr[1]), .B(n3), .Y(n2) );
  XNOR2X2M U5 ( .A(rptr[2]), .B(n2), .Y(n6) );
  NAND2BX2M U6 ( .AN(rempty), .B(rinc), .Y(n4) );
  CLKXOR2X2M U7 ( .A(rptr[3]), .B(n1), .Y(n5) );
  NOR2BX2M U8 ( .AN(rptr[2]), .B(n2), .Y(n1) );
  XNOR2X2M U9 ( .A(rptr[0]), .B(n4), .Y(n8) );
  CLKXOR2X2M U10 ( .A(rptr[1]), .B(n3), .Y(n7) );
  BUFX2M U11 ( .A(rptr[2]), .Y(raddr[2]) );
  BUFX2M U12 ( .A(rptr[1]), .Y(raddr[1]) );
  BUFX2M U13 ( .A(rptr[0]), .Y(raddr[0]) );
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


module Rd_ptr_GREY ( rinc, rclk, rrst_n, rq2_wptr, rempty, raddr, gray_rptr );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] gray_rptr;
  input rinc, rclk, rrst_n;
  output rempty;
  wire   n1, n2, n3, n4;
  wire   [3:0] rptr;

  Rd_ptr Rd_ptr_u0 ( .rinc(rinc), .rclk(rclk), .rrst_n(rrst_n), .rempty(rempty), .raddr(raddr), .rptr(rptr) );
  BINARY_TO_GRAY_1 rd_ptr_gray ( .bin_pointer(rptr), .gray_pointer(gray_rptr)
         );
  NOR4X1M U1 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(rempty) );
  CLKXOR2X2M U2 ( .A(rq2_wptr[3]), .B(gray_rptr[3]), .Y(n2) );
  CLKXOR2X2M U3 ( .A(rq2_wptr[2]), .B(gray_rptr[2]), .Y(n1) );
  CLKXOR2X2M U4 ( .A(rq2_wptr[1]), .B(gray_rptr[1]), .Y(n4) );
  CLKXOR2X2M U5 ( .A(rq2_wptr[0]), .B(gray_rptr[0]), .Y(n3) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_0 ( ASYNC, CLK, RST, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \SYN_FLOPS[3][1] , \SYN_FLOPS[3][0] , \SYN_FLOPS[2][1] ,
         \SYN_FLOPS[2][0] , \SYN_FLOPS[1][1] , \SYN_FLOPS[1][0] ,
         \SYN_FLOPS[0][1] , \SYN_FLOPS[0][0] ;

  DFFRQX2M \SYNC_reg[3]  ( .D(\SYN_FLOPS[3][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC[3]) );
  DFFRQX2M \SYNC_reg[2]  ( .D(\SYN_FLOPS[2][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC[2]) );
  DFFRQX2M \SYNC_reg[1]  ( .D(\SYN_FLOPS[1][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC[1]) );
  DFFRQX2M \SYNC_reg[0]  ( .D(\SYN_FLOPS[0][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC[0]) );
  DFFRQX2M \SYN_FLOPS_reg[3][1]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST), .Q(
        \SYN_FLOPS[3][1] ) );
  DFFRQX2M \SYN_FLOPS_reg[3][0]  ( .D(\SYN_FLOPS[3][1] ), .CK(CLK), .RN(RST), 
        .Q(\SYN_FLOPS[3][0] ) );
  DFFRQX2M \SYN_FLOPS_reg[2][1]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST), .Q(
        \SYN_FLOPS[2][1] ) );
  DFFRQX2M \SYN_FLOPS_reg[2][0]  ( .D(\SYN_FLOPS[2][1] ), .CK(CLK), .RN(RST), 
        .Q(\SYN_FLOPS[2][0] ) );
  DFFRQX2M \SYN_FLOPS_reg[1][1]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST), .Q(
        \SYN_FLOPS[1][1] ) );
  DFFRQX2M \SYN_FLOPS_reg[1][0]  ( .D(\SYN_FLOPS[1][1] ), .CK(CLK), .RN(RST), 
        .Q(\SYN_FLOPS[1][0] ) );
  DFFRQX2M \SYN_FLOPS_reg[0][1]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        \SYN_FLOPS[0][1] ) );
  DFFRQX2M \SYN_FLOPS_reg[0][0]  ( .D(\SYN_FLOPS[0][1] ), .CK(CLK), .RN(RST), 
        .Q(\SYN_FLOPS[0][0] ) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_1 ( ASYNC, CLK, RST, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \SYN_FLOPS[3][1] , \SYN_FLOPS[3][0] , \SYN_FLOPS[2][1] ,
         \SYN_FLOPS[2][0] , \SYN_FLOPS[1][1] , \SYN_FLOPS[1][0] ,
         \SYN_FLOPS[0][1] , \SYN_FLOPS[0][0] ;

  DFFRQX2M \SYNC_reg[2]  ( .D(\SYN_FLOPS[2][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC[2]) );
  DFFRQX2M \SYNC_reg[3]  ( .D(\SYN_FLOPS[3][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC[3]) );
  DFFRQX2M \SYNC_reg[1]  ( .D(\SYN_FLOPS[1][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC[1]) );
  DFFRQX2M \SYNC_reg[0]  ( .D(\SYN_FLOPS[0][0] ), .CK(CLK), .RN(RST), .Q(
        SYNC[0]) );
  DFFRQX2M \SYN_FLOPS_reg[3][1]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST), .Q(
        \SYN_FLOPS[3][1] ) );
  DFFRQX2M \SYN_FLOPS_reg[2][1]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST), .Q(
        \SYN_FLOPS[2][1] ) );
  DFFRQX2M \SYN_FLOPS_reg[1][1]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST), .Q(
        \SYN_FLOPS[1][1] ) );
  DFFRQX2M \SYN_FLOPS_reg[0][1]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        \SYN_FLOPS[0][1] ) );
  DFFRQX2M \SYN_FLOPS_reg[3][0]  ( .D(\SYN_FLOPS[3][1] ), .CK(CLK), .RN(RST), 
        .Q(\SYN_FLOPS[3][0] ) );
  DFFRQX2M \SYN_FLOPS_reg[2][0]  ( .D(\SYN_FLOPS[2][1] ), .CK(CLK), .RN(RST), 
        .Q(\SYN_FLOPS[2][0] ) );
  DFFRQX2M \SYN_FLOPS_reg[1][0]  ( .D(\SYN_FLOPS[1][1] ), .CK(CLK), .RN(RST), 
        .Q(\SYN_FLOPS[1][0] ) );
  DFFRQX2M \SYN_FLOPS_reg[0][0]  ( .D(\SYN_FLOPS[0][1] ), .CK(CLK), .RN(RST), 
        .Q(\SYN_FLOPS[0][0] ) );
endmodule


module FIFO_TOP_DATA_WIDTH8_pointer_width4 ( W_CLK, W_RST, W_INC, R_CLK, R_RST, 
        R_INC, WR_DATA, FULL, RD_DATA, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, W_RST, W_INC, R_CLK, R_RST, R_INC;
  output FULL, EMPTY;
  wire   Wr_en, n1, n2;
  wire   [2:0] W_adrr;
  wire   [2:0] R_addr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] gray_wptr;
  wire   [3:0] rq2_wptr;
  wire   [3:0] gray_rptr;

  FIFO_MEMORY u0_FIFO_MEM ( .WR_DATA(WR_DATA), .Wr_en(Wr_en), .W_CLK(W_CLK), 
        .W_RST(n1), .W_adrr(W_adrr), .R_addr(R_addr), .RD_DATA(RD_DATA) );
  Wd_ptr_GREY u1_Wd_PTR ( .winc(W_INC), .wclk(W_CLK), .wrst_n(n1), .wq2_rptr(
        wq2_rptr), .wfull(FULL), .waddr(W_adrr), .gray_wptr(gray_wptr) );
  Rd_ptr_GREY u2_Rd_PTR ( .rinc(R_INC), .rclk(R_CLK), .rrst_n(R_RST), 
        .rq2_wptr(rq2_wptr), .rempty(EMPTY), .raddr(R_addr), .gray_rptr(
        gray_rptr) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_0 sync_w2r ( .ASYNC(gray_wptr), .CLK(R_CLK), 
        .RST(R_RST), .SYNC(rq2_wptr) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_1 sync_r2w ( .ASYNC(gray_rptr), .CLK(W_CLK), 
        .RST(n1), .SYNC(wq2_rptr) );
  NOR2BX2M U1 ( .AN(W_INC), .B(FULL), .Y(Wr_en) );
  INVX2M U2 ( .A(n2), .Y(n1) );
  INVX2M U3 ( .A(W_RST), .Y(n2) );
endmodule


module PULSE_GEN ( LVL_SIG, CLK, RST, PULSE_SIG );
  input LVL_SIG, CLK, RST;
  output PULSE_SIG;
  wire   PG_FF;

  DFFRQX2M PG_FF_reg ( .D(LVL_SIG), .CK(CLK), .RN(RST), .Q(PG_FF) );
  NOR2BX2M U3 ( .AN(LVL_SIG), .B(PG_FF), .Y(PULSE_SIG) );
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


module CLK_Divider_0 ( I_ref_clk, I_rst_n, I_clk_en, I_div_ratio, O_div_clk );
  input [7:0] I_div_ratio;
  input I_ref_clk, I_rst_n, I_clk_en;
  output O_div_clk;
  wire   div_CLK_FF, N8, N22, N23, N24, N25, N26, N27, N28, N29, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47;
  wire   [7:0] edge_count;

  CLK_Divider_0_DW01_inc_0 r75 ( .A(edge_count), .SUM({N29, N28, N27, N26, N25, 
        N24, N23, N22}) );
  DFFRQX2M div_CLK_FF_reg ( .D(n27), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        div_CLK_FF) );
  DFFRQX2M \edge_count_reg[7]  ( .D(n19), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[7]) );
  DFFRQX2M \edge_count_reg[0]  ( .D(n26), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[0]) );
  DFFRQX2M \edge_count_reg[4]  ( .D(n22), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[4]) );
  DFFRQX2M \edge_count_reg[6]  ( .D(n20), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[6]) );
  DFFRQX2M \edge_count_reg[2]  ( .D(n24), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[2]) );
  DFFRQX2M \edge_count_reg[1]  ( .D(n25), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[1]) );
  DFFRQX2M \edge_count_reg[5]  ( .D(n21), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[5]) );
  DFFRQX2M \edge_count_reg[3]  ( .D(n23), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[3]) );
  MX2X2M U3 ( .A(I_ref_clk), .B(div_CLK_FF), .S0(N8), .Y(O_div_clk) );
  NOR2BX2M U4 ( .AN(I_clk_en), .B(n46), .Y(N8) );
  CLKXOR2X2M U5 ( .A(div_CLK_FF), .B(n1), .Y(n27) );
  NOR2BX1M U6 ( .AN(N8), .B(n2), .Y(n1) );
  AOI221XLM U7 ( .A0(n3), .A1(n4), .B0(n5), .B1(n6), .C0(n7), .Y(n2) );
  CLKINVX1M U8 ( .A(n8), .Y(n7) );
  NOR4X1M U9 ( .A(edge_count[7]), .B(edge_count[6]), .C(edge_count[5]), .D(
        edge_count[4]), .Y(n6) );
  NOR4X1M U10 ( .A(edge_count[3]), .B(edge_count[2]), .C(edge_count[1]), .D(
        edge_count[0]), .Y(n5) );
  CLKINVX1M U11 ( .A(n9), .Y(n4) );
  CLKINVX1M U12 ( .A(n10), .Y(n3) );
  MXI2X1M U13 ( .A(n11), .B(n12), .S0(N8), .Y(n26) );
  NOR2X1M U14 ( .A(N22), .B(n13), .Y(n12) );
  OAI2BB2X1M U15 ( .B0(N8), .B1(n14), .A0N(N23), .A1N(n15), .Y(n25) );
  AO2B2X1M U16 ( .B0(N24), .B1(n15), .A0(edge_count[2]), .A1N(N8), .Y(n24) );
  AO2B2X1M U17 ( .B0(N25), .B1(n15), .A0(edge_count[3]), .A1N(N8), .Y(n23) );
  OAI2BB2X1M U18 ( .B0(N8), .B1(n16), .A0N(N26), .A1N(n15), .Y(n22) );
  OAI2BB2X1M U19 ( .B0(N8), .B1(n17), .A0N(N27), .A1N(n15), .Y(n21) );
  OAI2BB2X1M U20 ( .B0(N8), .B1(n18), .A0N(N28), .A1N(n15), .Y(n20) );
  OAI2BB2X1M U21 ( .B0(N8), .B1(n28), .A0N(N29), .A1N(n15), .Y(n19) );
  NOR2BX1M U22 ( .AN(N8), .B(n13), .Y(n15) );
  MXI2X1M U23 ( .A(n8), .B(I_div_ratio[0]), .S0(n29), .Y(n13) );
  NOR2X1M U24 ( .A(n9), .B(n10), .Y(n29) );
  NAND4X1M U25 ( .A(n30), .B(n31), .C(n32), .D(n28), .Y(n10) );
  CLKXOR2X2M U26 ( .A(I_div_ratio[1]), .B(n11), .Y(n32) );
  CLKXOR2X2M U27 ( .A(I_div_ratio[2]), .B(n14), .Y(n31) );
  CLKINVX1M U28 ( .A(edge_count[1]), .Y(n14) );
  XNOR2X1M U29 ( .A(I_div_ratio[3]), .B(edge_count[2]), .Y(n30) );
  NAND4X1M U30 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n9) );
  XNOR2X1M U31 ( .A(I_div_ratio[4]), .B(edge_count[3]), .Y(n36) );
  CLKXOR2X2M U32 ( .A(I_div_ratio[5]), .B(n16), .Y(n35) );
  CLKINVX1M U33 ( .A(edge_count[4]), .Y(n16) );
  CLKXOR2X2M U34 ( .A(I_div_ratio[6]), .B(n17), .Y(n34) );
  CLKINVX1M U35 ( .A(edge_count[5]), .Y(n17) );
  CLKXOR2X2M U36 ( .A(I_div_ratio[7]), .B(n18), .Y(n33) );
  CLKINVX1M U37 ( .A(edge_count[6]), .Y(n18) );
  NAND4X1M U38 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n8) );
  NOR4X1M U39 ( .A(n41), .B(n42), .C(n43), .D(n44), .Y(n40) );
  CLKXOR2X2M U40 ( .A(edge_count[7]), .B(I_div_ratio[7]), .Y(n44) );
  CLKXOR2X2M U41 ( .A(edge_count[6]), .B(I_div_ratio[6]), .Y(n43) );
  CLKXOR2X2M U42 ( .A(edge_count[5]), .B(I_div_ratio[5]), .Y(n42) );
  CLKXOR2X2M U43 ( .A(edge_count[4]), .B(I_div_ratio[4]), .Y(n41) );
  NOR3BX1M U44 ( .AN(I_div_ratio[0]), .B(n45), .C(n11), .Y(n39) );
  CLKINVX1M U45 ( .A(edge_count[0]), .Y(n11) );
  CLKXOR2X2M U46 ( .A(edge_count[1]), .B(I_div_ratio[1]), .Y(n45) );
  XNOR2X1M U47 ( .A(I_div_ratio[2]), .B(edge_count[2]), .Y(n38) );
  XNOR2X1M U48 ( .A(I_div_ratio[3]), .B(edge_count[3]), .Y(n37) );
  CLKINVX1M U49 ( .A(edge_count[7]), .Y(n28) );
  NOR4BX1M U50 ( .AN(n47), .B(I_div_ratio[2]), .C(I_div_ratio[3]), .D(
        I_div_ratio[1]), .Y(n46) );
  NOR4X1M U51 ( .A(I_div_ratio[7]), .B(I_div_ratio[6]), .C(I_div_ratio[5]), 
        .D(I_div_ratio[4]), .Y(n47) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
  NAND4BX1M U11 ( .AN(IN[4]), .B(IN[3]), .C(n16), .D(n17), .Y(n6) );
  NAND4BX1M U12 ( .AN(IN[3]), .B(IN[4]), .C(n16), .D(n17), .Y(n7) );
  NOR3X2M U13 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NOR3X2M U14 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR4X1M U15 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U16 ( .A(n14), .B(n15), .C(IN[2]), .Y(n5) );
  OAI211X2M U17 ( .A0(n8), .A1(n9), .B0(n14), .C0(n15), .Y(OUT[0]) );
  NAND2X2M U18 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U19 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n16), .Y(n8) );
  INVX2M U20 ( .A(IN[2]), .Y(n16) );
  INVX2M U21 ( .A(IN[1]), .Y(n15) );
  INVX2M U22 ( .A(IN[0]), .Y(n14) );
  INVX2M U23 ( .A(IN[5]), .Y(n17) );
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


module CLK_Divider_1 ( I_ref_clk, I_rst_n, I_clk_en, I_div_ratio, O_div_clk );
  input [7:0] I_div_ratio;
  input I_ref_clk, I_rst_n, I_clk_en;
  output O_div_clk;
  wire   div_CLK_FF, N8, N22, N23, N24, N25, N26, N27, N28, N29, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56;
  wire   [7:0] edge_count;

  CLK_Divider_1_DW01_inc_0 r75 ( .A(edge_count), .SUM({N29, N28, N27, N26, N25, 
        N24, N23, N22}) );
  DFFRX1M \edge_count_reg[0]  ( .D(n49), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[0]), .QN(n11) );
  DFFRX1M \edge_count_reg[6]  ( .D(n55), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[6]), .QN(n18) );
  DFFRX1M \edge_count_reg[5]  ( .D(n54), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[5]), .QN(n17) );
  DFFRX1M \edge_count_reg[4]  ( .D(n53), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[4]), .QN(n16) );
  DFFRX1M \edge_count_reg[1]  ( .D(n50), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[1]), .QN(n14) );
  DFFRX1M \edge_count_reg[3]  ( .D(n52), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[3]) );
  DFFRX1M \edge_count_reg[2]  ( .D(n51), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[2]) );
  DFFRX1M div_CLK_FF_reg ( .D(n48), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        div_CLK_FF) );
  DFFRX1M \edge_count_reg[7]  ( .D(n56), .CK(I_ref_clk), .RN(I_rst_n), .Q(
        edge_count[7]), .QN(n28) );
  MX2X2M U3 ( .A(I_ref_clk), .B(div_CLK_FF), .S0(N8), .Y(O_div_clk) );
  NOR2BX2M U4 ( .AN(I_clk_en), .B(n46), .Y(N8) );
  CLKXOR2X2M U5 ( .A(div_CLK_FF), .B(n1), .Y(n48) );
  NOR2BX1M U6 ( .AN(N8), .B(n2), .Y(n1) );
  AOI221XLM U7 ( .A0(n3), .A1(n4), .B0(n5), .B1(n6), .C0(n7), .Y(n2) );
  CLKINVX1M U8 ( .A(n8), .Y(n7) );
  NOR4X1M U9 ( .A(edge_count[7]), .B(edge_count[6]), .C(edge_count[5]), .D(
        edge_count[4]), .Y(n6) );
  NOR4X1M U10 ( .A(edge_count[3]), .B(edge_count[2]), .C(edge_count[1]), .D(
        edge_count[0]), .Y(n5) );
  CLKINVX1M U11 ( .A(n9), .Y(n4) );
  CLKINVX1M U12 ( .A(n10), .Y(n3) );
  MXI2X1M U13 ( .A(n11), .B(n12), .S0(N8), .Y(n49) );
  NOR2X1M U14 ( .A(N22), .B(n13), .Y(n12) );
  OAI2BB2X1M U15 ( .B0(N8), .B1(n14), .A0N(N23), .A1N(n15), .Y(n50) );
  AO2B2X1M U16 ( .B0(N24), .B1(n15), .A0(edge_count[2]), .A1N(N8), .Y(n51) );
  AO2B2X1M U17 ( .B0(N25), .B1(n15), .A0(edge_count[3]), .A1N(N8), .Y(n52) );
  OAI2BB2X1M U18 ( .B0(N8), .B1(n16), .A0N(N26), .A1N(n15), .Y(n53) );
  OAI2BB2X1M U19 ( .B0(N8), .B1(n17), .A0N(N27), .A1N(n15), .Y(n54) );
  OAI2BB2X1M U20 ( .B0(N8), .B1(n18), .A0N(N28), .A1N(n15), .Y(n55) );
  OAI2BB2X1M U21 ( .B0(N8), .B1(n28), .A0N(N29), .A1N(n15), .Y(n56) );
  NOR2BX1M U22 ( .AN(N8), .B(n13), .Y(n15) );
  MXI2X1M U23 ( .A(n8), .B(I_div_ratio[0]), .S0(n29), .Y(n13) );
  NOR2X1M U24 ( .A(n9), .B(n10), .Y(n29) );
  NAND4X1M U25 ( .A(n30), .B(n31), .C(n32), .D(n28), .Y(n10) );
  CLKXOR2X2M U26 ( .A(I_div_ratio[1]), .B(n11), .Y(n32) );
  CLKXOR2X2M U27 ( .A(I_div_ratio[2]), .B(n14), .Y(n31) );
  XNOR2X1M U28 ( .A(I_div_ratio[3]), .B(edge_count[2]), .Y(n30) );
  NAND4X1M U29 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n9) );
  XNOR2X1M U30 ( .A(I_div_ratio[4]), .B(edge_count[3]), .Y(n36) );
  CLKXOR2X2M U31 ( .A(I_div_ratio[5]), .B(n16), .Y(n35) );
  CLKXOR2X2M U32 ( .A(I_div_ratio[6]), .B(n17), .Y(n34) );
  CLKXOR2X2M U33 ( .A(I_div_ratio[7]), .B(n18), .Y(n33) );
  NAND4X1M U34 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n8) );
  NOR4X1M U35 ( .A(n41), .B(n42), .C(n43), .D(n44), .Y(n40) );
  CLKXOR2X2M U36 ( .A(edge_count[7]), .B(I_div_ratio[7]), .Y(n44) );
  CLKXOR2X2M U37 ( .A(edge_count[6]), .B(I_div_ratio[6]), .Y(n43) );
  CLKXOR2X2M U38 ( .A(edge_count[5]), .B(I_div_ratio[5]), .Y(n42) );
  CLKXOR2X2M U39 ( .A(edge_count[4]), .B(I_div_ratio[4]), .Y(n41) );
  NOR3BX1M U40 ( .AN(I_div_ratio[0]), .B(n45), .C(n11), .Y(n39) );
  CLKXOR2X2M U41 ( .A(edge_count[1]), .B(I_div_ratio[1]), .Y(n45) );
  XNOR2X1M U42 ( .A(I_div_ratio[2]), .B(edge_count[2]), .Y(n38) );
  XNOR2X1M U43 ( .A(I_div_ratio[3]), .B(edge_count[3]), .Y(n37) );
  NOR4BX1M U44 ( .AN(n47), .B(I_div_ratio[2]), .C(I_div_ratio[3]), .D(
        I_div_ratio[1]), .Y(n46) );
  NOR4X1M U45 ( .A(I_div_ratio[7]), .B(I_div_ratio[6]), .C(I_div_ratio[5]), 
        .D(I_div_ratio[4]), .Y(n47) );
endmodule


module FSM_UART_TX ( Data_valid, PAR_EN, SER_DONE, CLK, RST, mux_sel, busy_FF, 
        SER_ENABLE, par_block_EN );
  output [1:0] mux_sel;
  input Data_valid, PAR_EN, SER_DONE, CLK, RST;
  output busy_FF, SER_ENABLE, par_block_EN;
  wire   busy, n7, n8, n9, n1, n2, n3, n4, n5, n6;
  wire   [2:0] CU_STATE;
  wire   [2:0] NXT_STATE;

  DFFRQX2M \CU_STATE_reg[2]  ( .D(NXT_STATE[2]), .CK(CLK), .RN(RST), .Q(
        CU_STATE[2]) );
  DFFRQX2M busy_FF_reg ( .D(busy), .CK(CLK), .RN(RST), .Q(busy_FF) );
  DFFRQX2M \CU_STATE_reg[0]  ( .D(NXT_STATE[0]), .CK(CLK), .RN(RST), .Q(
        CU_STATE[0]) );
  DFFRQX2M \CU_STATE_reg[1]  ( .D(NXT_STATE[1]), .CK(CLK), .RN(RST), .Q(
        CU_STATE[1]) );
  OAI31X1M U3 ( .A0(n1), .A1(n6), .A2(n7), .B0(n9), .Y(NXT_STATE[0]) );
  NAND3X2M U4 ( .A(n3), .B(n4), .C(Data_valid), .Y(n9) );
  OAI21X2M U5 ( .A0(n2), .A1(n6), .B0(n7), .Y(mux_sel[1]) );
  OAI21BX1M U6 ( .A0(n6), .A1(n7), .B0N(busy), .Y(NXT_STATE[1]) );
  INVX2M U7 ( .A(SER_DONE), .Y(n1) );
  INVX2M U8 ( .A(par_block_EN), .Y(n2) );
  AND2X2M U9 ( .A(n8), .B(n5), .Y(SER_ENABLE) );
  NAND2X2M U10 ( .A(n8), .B(n5), .Y(mux_sel[0]) );
  OAI32X1M U11 ( .A0(n3), .A1(CU_STATE[2]), .A2(CU_STATE[1]), .B0(SER_DONE), 
        .B1(n7), .Y(busy) );
  NOR3X2M U12 ( .A(n3), .B(CU_STATE[2]), .C(n4), .Y(par_block_EN) );
  XNOR2X2M U13 ( .A(CU_STATE[0]), .B(n4), .Y(n8) );
  OAI31X1M U14 ( .A0(n1), .A1(PAR_EN), .A2(n7), .B0(n2), .Y(NXT_STATE[2]) );
  INVX2M U15 ( .A(CU_STATE[0]), .Y(n3) );
  INVX2M U16 ( .A(CU_STATE[1]), .Y(n4) );
  NAND3X2M U17 ( .A(n3), .B(n5), .C(CU_STATE[1]), .Y(n7) );
  INVX2M U18 ( .A(CU_STATE[2]), .Y(n5) );
  INVX2M U19 ( .A(PAR_EN), .Y(n6) );
endmodule


module MUX ( ser_data, par_bit, RST, CLK, mux_sel, TX_OUT_FF );
  input [1:0] mux_sel;
  input ser_data, par_bit, RST, CLK;
  output TX_OUT_FF;
  wire   n6, TX_OUT, n2, n3, n1, n5;

  DFFSQX2M TX_OUT_FF_reg ( .D(TX_OUT), .CK(CLK), .SN(RST), .Q(n6) );
  INVXLM U3 ( .A(n6), .Y(n1) );
  INVX8M U4 ( .A(n1), .Y(TX_OUT_FF) );
  OAI21X2M U5 ( .A0(n2), .A1(n5), .B0(n3), .Y(TX_OUT) );
  NAND3X2M U6 ( .A(mux_sel[1]), .B(n5), .C(ser_data), .Y(n3) );
  NOR2BX2M U7 ( .AN(mux_sel[1]), .B(par_bit), .Y(n2) );
  INVX2M U8 ( .A(mux_sel[0]), .Y(n5) );
endmodule


module PARITY_CALC ( PAR_TYP, Data_Valid, par_EN, CLK, RST, P_DATA, PARITY_BIT
 );
  input [7:0] P_DATA;
  input PAR_TYP, Data_Valid, par_EN, CLK, RST;
  output PARITY_BIT;
  wire   n1, n2, n3, n4, n5;

  XNOR2X2M U2 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n5) );
  XNOR2X2M U3 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n4) );
  AND2X2M U4 ( .A(par_EN), .B(n1), .Y(PARITY_BIT) );
  XOR3XLM U5 ( .A(PAR_TYP), .B(n2), .C(n3), .Y(n1) );
  XOR3XLM U6 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n4), .Y(n3) );
  XOR3XLM U7 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n5), .Y(n2) );
endmodule


module SERILIZER ( P_DATA, CLK, RST, ser_en, Data_Valid, ser_data, ser_done );
  input [7:0] P_DATA;
  input CLK, RST, ser_en, Data_Valid;
  output ser_data, ser_done;
  wire   N2, N3, N4, \bit_counter[3] , N8, N13, N14, N15, N16, N21, n2, n3, n4,
         n5, n6, n8, n9, n10, n1, n7, n11, n12;
  assign ser_done = N21;

  DFFRQX2M \bit_counter_reg[3]  ( .D(N16), .CK(CLK), .RN(RST), .Q(
        \bit_counter[3] ) );
  DFFRQX2M ser_data_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(ser_data) );
  DFFRQX2M \bit_counter_reg[2]  ( .D(N15), .CK(CLK), .RN(RST), .Q(N4) );
  DFFRQX2M \bit_counter_reg[1]  ( .D(N14), .CK(CLK), .RN(RST), .Q(N3) );
  DFFRQX2M \bit_counter_reg[0]  ( .D(N13), .CK(CLK), .RN(RST), .Q(N2) );
  INVX2M U3 ( .A(ser_en), .Y(n12) );
  OAI21X2M U4 ( .A0(n6), .A1(n11), .B0(n8), .Y(n2) );
  CLKXOR2X2M U5 ( .A(n6), .B(n11), .Y(n3) );
  NOR2X2M U6 ( .A(n12), .B(n6), .Y(N14) );
  NOR3BX2M U7 ( .AN(\bit_counter[3] ), .B(n2), .C(n3), .Y(N21) );
  OAI21X2M U8 ( .A0(N3), .A1(N2), .B0(n8), .Y(n6) );
  OAI2BB2X1M U9 ( .B0(n9), .B1(n12), .A0N(N4), .A1N(N13), .Y(N15) );
  OA22X2M U10 ( .A0(n8), .A1(N4), .B0(n11), .B1(N3), .Y(n9) );
  NAND2X2M U11 ( .A(N3), .B(N2), .Y(n8) );
  NOR2X2M U12 ( .A(n12), .B(N2), .Y(N13) );
  NOR2X2M U13 ( .A(n4), .B(n12), .Y(N16) );
  CLKXOR2X2M U14 ( .A(n5), .B(\bit_counter[3] ), .Y(n4) );
  NAND2X2M U15 ( .A(n3), .B(n2), .Y(n5) );
  INVX2M U16 ( .A(N4), .Y(n11) );
  AO22X1M U17 ( .A0(ser_data), .A1(n12), .B0(ser_en), .B1(N8), .Y(n10) );
  MX2X2M U18 ( .A(n7), .B(n1), .S0(N4), .Y(N8) );
  MX4X1M U19 ( .A(P_DATA[4]), .B(P_DATA[5]), .C(P_DATA[6]), .D(P_DATA[7]), 
        .S0(N2), .S1(N3), .Y(n1) );
  MX4X1M U20 ( .A(P_DATA[0]), .B(P_DATA[1]), .C(P_DATA[2]), .D(P_DATA[3]), 
        .S0(N2), .S1(N3), .Y(n7) );
endmodule


module TOP_TX_UART ( P_DATA, DATA_Valid, PAR_EN, PAR_TYP, RST, CLK, TX_OUT, 
        BUSY );
  input [7:0] P_DATA;
  input DATA_Valid, PAR_EN, PAR_TYP, RST, CLK;
  output TX_OUT, BUSY;
  wire   ser_done, PAR_block_EN, ser_en, ser_data, par_bit, n1, n3, n4, n5, n6,
         n7, n8, n9, n10, n2, n11, n12;
  wire   [7:0] P_DATA_ff;
  wire   [1:0] mux_sel;

  FSM_UART_TX FSM_B0 ( .Data_valid(DATA_Valid), .PAR_EN(PAR_EN), .SER_DONE(
        ser_done), .CLK(CLK), .RST(n2), .mux_sel(mux_sel), .busy_FF(BUSY), 
        .SER_ENABLE(ser_en), .par_block_EN(PAR_block_EN) );
  MUX MUX_B1 ( .ser_data(ser_data), .par_bit(par_bit), .RST(n2), .CLK(CLK), 
        .mux_sel(mux_sel), .TX_OUT_FF(TX_OUT) );
  PARITY_CALC PARITY_CALC_B2 ( .PAR_TYP(PAR_TYP), .Data_Valid(DATA_Valid), 
        .par_EN(PAR_block_EN), .CLK(CLK), .RST(n2), .P_DATA(P_DATA_ff), 
        .PARITY_BIT(par_bit) );
  SERILIZER SERILIZER_B3 ( .P_DATA(P_DATA_ff), .CLK(CLK), .RST(n2), .ser_en(
        ser_en), .Data_Valid(DATA_Valid), .ser_data(ser_data), .ser_done(
        ser_done) );
  DFFRQX2M \P_DATA_ff_reg[1]  ( .D(n9), .CK(CLK), .RN(n2), .Q(P_DATA_ff[1]) );
  DFFRQX2M \P_DATA_ff_reg[5]  ( .D(n5), .CK(CLK), .RN(n2), .Q(P_DATA_ff[5]) );
  DFFRQX2M \P_DATA_ff_reg[0]  ( .D(n10), .CK(CLK), .RN(n2), .Q(P_DATA_ff[0])
         );
  DFFRQX2M \P_DATA_ff_reg[4]  ( .D(n6), .CK(CLK), .RN(n2), .Q(P_DATA_ff[4]) );
  DFFRQX2M \P_DATA_ff_reg[3]  ( .D(n7), .CK(CLK), .RN(n2), .Q(P_DATA_ff[3]) );
  DFFRQX2M \P_DATA_ff_reg[7]  ( .D(n3), .CK(CLK), .RN(n2), .Q(P_DATA_ff[7]) );
  DFFRQX2M \P_DATA_ff_reg[2]  ( .D(n8), .CK(CLK), .RN(n2), .Q(P_DATA_ff[2]) );
  DFFRQX2M \P_DATA_ff_reg[6]  ( .D(n4), .CK(CLK), .RN(n2), .Q(P_DATA_ff[6]) );
  INVX2M U2 ( .A(n11), .Y(n2) );
  INVX2M U3 ( .A(RST), .Y(n11) );
  INVX2M U4 ( .A(n1), .Y(n12) );
  NAND2BX2M U5 ( .AN(BUSY), .B(DATA_Valid), .Y(n1) );
  AO22X1M U6 ( .A0(P_DATA_ff[7]), .A1(n1), .B0(P_DATA[7]), .B1(n12), .Y(n3) );
  AO22X1M U7 ( .A0(P_DATA_ff[6]), .A1(n1), .B0(P_DATA[6]), .B1(n12), .Y(n4) );
  AO22X1M U8 ( .A0(P_DATA_ff[5]), .A1(n1), .B0(P_DATA[5]), .B1(n12), .Y(n5) );
  AO22X1M U9 ( .A0(P_DATA_ff[4]), .A1(n1), .B0(P_DATA[4]), .B1(n12), .Y(n6) );
  AO22X1M U10 ( .A0(P_DATA_ff[3]), .A1(n1), .B0(P_DATA[3]), .B1(n12), .Y(n7)
         );
  AO22X1M U11 ( .A0(P_DATA_ff[2]), .A1(n1), .B0(P_DATA[2]), .B1(n12), .Y(n8)
         );
  AO22X1M U12 ( .A0(P_DATA_ff[1]), .A1(n1), .B0(P_DATA[1]), .B1(n12), .Y(n9)
         );
  AO22X1M U13 ( .A0(P_DATA_ff[0]), .A1(n1), .B0(P_DATA[0]), .B1(n12), .Y(n10)
         );
endmodule


module FSM_RX_UART ( RX_IN, PAR_En, CLK, RST, par_err, strt_glitch, stp_err, 
        bit_count, edge_count, prescale, dat_samp_en, EDGE_CNT_en, deser_en, 
        data_valid, stp_chk_en, strt_chk_en, par_chk_en );
  input [3:0] bit_count;
  input [5:0] edge_count;
  input [5:0] prescale;
  input RX_IN, PAR_En, CLK, RST, par_err, strt_glitch, stp_err;
  output dat_samp_en, EDGE_CNT_en, deser_en, data_valid, stp_chk_en,
         strt_chk_en, par_chk_en;
  wire   N13, N14, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n33, n34;
  wire   [2:0] CU_STATE;
  wire   [2:0] NXT_STATE;

  DFFRQX2M \CU_STATE_reg[1]  ( .D(NXT_STATE[1]), .CK(CLK), .RN(RST), .Q(
        CU_STATE[1]) );
  DFFRQX2M \CU_STATE_reg[0]  ( .D(NXT_STATE[0]), .CK(CLK), .RN(RST), .Q(
        CU_STATE[0]) );
  DFFRQX2M \CU_STATE_reg[2]  ( .D(NXT_STATE[2]), .CK(CLK), .RN(RST), .Q(
        CU_STATE[2]) );
  DFFRQX2M data_valid_reg ( .D(N14), .CK(CLK), .RN(RST), .Q(data_valid) );
  NOR3X2M U3 ( .A(CU_STATE[0]), .B(CU_STATE[2]), .C(n33), .Y(n23) );
  NOR3X2M U4 ( .A(CU_STATE[1]), .B(CU_STATE[2]), .C(n15), .Y(strt_chk_en) );
  OAI21X2M U5 ( .A0(n31), .A1(n18), .B0(n19), .Y(EDGE_CNT_en) );
  NOR3X2M U6 ( .A(n20), .B(stp_err), .C(RX_IN), .Y(n31) );
  NAND3BX2M U7 ( .AN(n17), .B(n18), .C(n19), .Y(dat_samp_en) );
  INVX2M U8 ( .A(RX_IN), .Y(n34) );
  INVX2M U9 ( .A(n22), .Y(n13) );
  INVX2M U10 ( .A(n27), .Y(n11) );
  NOR3X2M U11 ( .A(par_chk_en), .B(strt_chk_en), .C(n23), .Y(n19) );
  NOR2BX2M U12 ( .AN(N13), .B(n16), .Y(deser_en) );
  NOR3X2M U13 ( .A(n20), .B(stp_err), .C(n18), .Y(N14) );
  INVX2M U14 ( .A(par_chk_en), .Y(n14) );
  INVX2M U15 ( .A(n23), .Y(n16) );
  NOR3X2M U16 ( .A(n15), .B(CU_STATE[2]), .C(n33), .Y(par_chk_en) );
  NOR4X1M U17 ( .A(CU_STATE[0]), .B(CU_STATE[1]), .C(CU_STATE[2]), .D(RX_IN), 
        .Y(n17) );
  NAND3X2M U18 ( .A(n15), .B(n33), .C(CU_STATE[2]), .Y(n18) );
  INVX2M U19 ( .A(n18), .Y(stp_chk_en) );
  INVX2M U20 ( .A(CU_STATE[1]), .Y(n33) );
  INVX2M U21 ( .A(CU_STATE[0]), .Y(n15) );
  OAI211X2M U22 ( .A0(n13), .A1(n14), .B0(n28), .C0(n29), .Y(NXT_STATE[0]) );
  AOI31X2M U23 ( .A0(n27), .A1(n23), .A2(PAR_En), .B0(n17), .Y(n28) );
  AOI22X1M U24 ( .A0(strt_chk_en), .A1(n12), .B0(N14), .B1(n34), .Y(n29) );
  INVX2M U25 ( .A(n26), .Y(n12) );
  AOI31X2M U26 ( .A0(n10), .A1(bit_count[1]), .A2(bit_count[3]), .B0(n13), .Y(
        n20) );
  INVX2M U27 ( .A(n30), .Y(n10) );
  NAND3BX2M U28 ( .AN(bit_count[2]), .B(N13), .C(bit_count[0]), .Y(n30) );
  NAND4X2M U29 ( .A(bit_count[3]), .B(bit_count[1]), .C(n32), .D(N13), .Y(n22)
         );
  NOR2X2M U30 ( .A(bit_count[2]), .B(bit_count[0]), .Y(n32) );
  NOR3BX2M U31 ( .AN(bit_count[3]), .B(bit_count[1]), .C(n30), .Y(n27) );
  OAI211X2M U32 ( .A0(n13), .A1(n14), .B0(n24), .C0(n25), .Y(NXT_STATE[1]) );
  NAND3BX2M U33 ( .AN(strt_glitch), .B(strt_chk_en), .C(n26), .Y(n25) );
  OAI21X2M U34 ( .A0(PAR_En), .A1(n11), .B0(n23), .Y(n24) );
  AO21XLM U35 ( .A0(n20), .A1(stp_chk_en), .B0(n21), .Y(NXT_STATE[2]) );
  OAI33X2M U36 ( .A0(n11), .A1(PAR_En), .A2(n16), .B0(n14), .B1(par_err), .B2(
        n22), .Y(n21) );
  NOR3X2M U37 ( .A(bit_count[1]), .B(bit_count[3]), .C(n30), .Y(n26) );
  NOR2BX1M U38 ( .AN(edge_count[0]), .B(prescale[0]), .Y(n1) );
  OAI2B2X1M U39 ( .A1N(prescale[1]), .A0(n1), .B0(edge_count[1]), .B1(n1), .Y(
        n5) );
  NOR2BX1M U40 ( .AN(prescale[0]), .B(edge_count[0]), .Y(n2) );
  OAI2B2X1M U41 ( .A1N(edge_count[1]), .A0(n2), .B0(prescale[1]), .B1(n2), .Y(
        n4) );
  XNOR2X1M U42 ( .A(prescale[5]), .B(edge_count[5]), .Y(n3) );
  NAND3X1M U43 ( .A(n5), .B(n4), .C(n3), .Y(n9) );
  CLKXOR2X2M U44 ( .A(prescale[4]), .B(edge_count[4]), .Y(n8) );
  CLKXOR2X2M U45 ( .A(prescale[2]), .B(edge_count[2]), .Y(n7) );
  CLKXOR2X2M U46 ( .A(prescale[3]), .B(edge_count[3]), .Y(n6) );
  NOR4X1M U47 ( .A(n9), .B(n8), .C(n7), .D(n6), .Y(N13) );
endmodule


module EDGE_BIT_COUNTER ( enable, CLK, RST, prescale, edge_count, bit_count );
  input [5:0] prescale;
  output [5:0] edge_count;
  output [3:0] bit_count;
  input enable, CLK, RST;
  wire   N6, N12, N13, N14, N16, N17, N18, N19, N20, n6, n7, n8, n9, n10, N27,
         N21, \mult_add_32_aco/PROD_not[0] , \add_37_aco/carry[5] ,
         \add_37_aco/carry[4] , \add_37_aco/carry[3] , \add_37_aco/carry[2] ,
         \mult_add_37_aco/PROD_not[0] , n1, n2, n3, n4, n5, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;

  DFFSQX2M \bit_count_reg[0]  ( .D(n10), .CK(CLK), .SN(RST), .Q(bit_count[0])
         );
  DFFRQX2M \bit_count_reg[2]  ( .D(n8), .CK(CLK), .RN(RST), .Q(bit_count[2])
         );
  DFFRQX2M \bit_count_reg[3]  ( .D(n7), .CK(CLK), .RN(RST), .Q(bit_count[3])
         );
  DFFRQX2M \bit_count_reg[1]  ( .D(n9), .CK(CLK), .RN(RST), .Q(bit_count[1])
         );
  DFFRQX2M \edge_count_reg[2]  ( .D(N17), .CK(CLK), .RN(RST), .Q(edge_count[2]) );
  DFFRQX2M \edge_count_reg[5]  ( .D(N20), .CK(CLK), .RN(RST), .Q(edge_count[5]) );
  DFFRQX2M \edge_count_reg[3]  ( .D(N18), .CK(CLK), .RN(RST), .Q(edge_count[3]) );
  DFFRQX2M \edge_count_reg[4]  ( .D(N19), .CK(CLK), .RN(RST), .Q(edge_count[4]) );
  DFFRQX2M \edge_count_reg[1]  ( .D(N16), .CK(CLK), .RN(RST), .Q(edge_count[1]) );
  DFFSQX2M \edge_count_reg[0]  ( .D(\mult_add_37_aco/PROD_not[0] ), .CK(CLK), 
        .SN(RST), .Q(edge_count[0]) );
  AND2X2M U3 ( .A(bit_count[1]), .B(enable), .Y(n1) );
  AND2X2M U4 ( .A(edge_count[1]), .B(n23), .Y(n2) );
  AND2X2M U5 ( .A(edge_count[2]), .B(n23), .Y(n3) );
  AND2X2M U6 ( .A(bit_count[2]), .B(enable), .Y(n4) );
  AND2X2M U7 ( .A(enable), .B(bit_count[3]), .Y(n5) );
  AND2X2M U8 ( .A(edge_count[4]), .B(n23), .Y(n11) );
  AND2X2M U9 ( .A(edge_count[3]), .B(n23), .Y(n12) );
  AND2X2M U10 ( .A(n23), .B(edge_count[5]), .Y(n13) );
  NAND2X2M U11 ( .A(n1), .B(N21), .Y(n25) );
  INVX2M U12 ( .A(n6), .Y(n23) );
  NAND2BX2M U13 ( .AN(N6), .B(enable), .Y(n6) );
  AO22X1M U14 ( .A0(N14), .A1(n6), .B0(bit_count[3]), .B1(n23), .Y(n7) );
  CLKXOR2X2M U15 ( .A(n5), .B(n24), .Y(N14) );
  NOR2BX2M U16 ( .AN(n4), .B(n25), .Y(n24) );
  ADDHX1M U17 ( .A(n2), .B(N27), .CO(\add_37_aco/carry[2] ), .S(N16) );
  ADDHX1M U18 ( .A(n3), .B(\add_37_aco/carry[2] ), .CO(\add_37_aco/carry[3] ), 
        .S(N17) );
  ADDHX1M U19 ( .A(n12), .B(\add_37_aco/carry[3] ), .CO(\add_37_aco/carry[4] ), 
        .S(N18) );
  ADDHX1M U20 ( .A(n11), .B(\add_37_aco/carry[4] ), .CO(\add_37_aco/carry[5] ), 
        .S(N19) );
  AO22X1M U21 ( .A0(N12), .A1(n6), .B0(bit_count[1]), .B1(n23), .Y(n9) );
  XNOR2X2M U22 ( .A(n1), .B(\mult_add_32_aco/PROD_not[0] ), .Y(N12) );
  AO22X1M U23 ( .A0(N13), .A1(n6), .B0(bit_count[2]), .B1(n23), .Y(n8) );
  XNOR2X2M U24 ( .A(n4), .B(n25), .Y(N13) );
  AO22X1M U25 ( .A0(\mult_add_32_aco/PROD_not[0] ), .A1(n6), .B0(bit_count[0]), 
        .B1(n23), .Y(n10) );
  CLKNAND2X2M U26 ( .A(edge_count[0]), .B(n23), .Y(
        \mult_add_37_aco/PROD_not[0] ) );
  CLKINVX1M U27 ( .A(\mult_add_37_aco/PROD_not[0] ), .Y(N27) );
  CLKXOR2X2M U28 ( .A(\add_37_aco/carry[5] ), .B(n13), .Y(N20) );
  CLKNAND2X2M U29 ( .A(bit_count[0]), .B(enable), .Y(
        \mult_add_32_aco/PROD_not[0] ) );
  CLKINVX1M U30 ( .A(\mult_add_32_aco/PROD_not[0] ), .Y(N21) );
  NOR2BX1M U31 ( .AN(edge_count[0]), .B(prescale[0]), .Y(n14) );
  OAI2B2X1M U32 ( .A1N(prescale[1]), .A0(n14), .B0(edge_count[1]), .B1(n14), 
        .Y(n18) );
  NOR2BX1M U33 ( .AN(prescale[0]), .B(edge_count[0]), .Y(n15) );
  OAI2B2X1M U34 ( .A1N(edge_count[1]), .A0(n15), .B0(prescale[1]), .B1(n15), 
        .Y(n17) );
  XNOR2X1M U35 ( .A(prescale[5]), .B(edge_count[5]), .Y(n16) );
  NAND3X1M U36 ( .A(n18), .B(n17), .C(n16), .Y(n22) );
  CLKXOR2X2M U37 ( .A(prescale[4]), .B(edge_count[4]), .Y(n21) );
  CLKXOR2X2M U38 ( .A(prescale[2]), .B(edge_count[2]), .Y(n20) );
  CLKXOR2X2M U39 ( .A(prescale[3]), .B(edge_count[3]), .Y(n19) );
  NOR4X1M U40 ( .A(n22), .B(n21), .C(n20), .D(n19), .Y(N6) );
endmodule


module DATA_SAMPLING ( RX_IN, prescale, dat_samp_en, CLK, RST, edge_cnt, 
        sampled_bit );
  input [5:0] prescale;
  input [5:0] edge_cnt;
  input RX_IN, dat_samp_en, CLK, RST;
  output sampled_bit;
  wire   RX_IN_FF, N12, N13, N14, N15, N16, N17, N18, N21, N22, N23, N24, N25,
         N28, N29, N30, N31, N32, N33, N34, N35, n54, n55, n56, n57, n58,
         \add_42/carry[4] , \add_42/carry[3] , \add_42/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77;
  wire   [1:0] ZERO_Count;
  wire   [1:0] One_CONUT;

  DFFRQX2M \ZERO_Count_reg[1]  ( .D(n56), .CK(CLK), .RN(RST), .Q(ZERO_Count[1]) );
  DFFRQX2M RX_IN_FF_reg ( .D(RX_IN), .CK(CLK), .RN(RST), .Q(RX_IN_FF) );
  DFFRQX2M \One_CONUT_reg[1]  ( .D(n58), .CK(CLK), .RN(RST), .Q(One_CONUT[1])
         );
  DFFRQX2M \One_CONUT_reg[0]  ( .D(n57), .CK(CLK), .RN(RST), .Q(One_CONUT[0])
         );
  DFFRQX2M \ZERO_Count_reg[0]  ( .D(n55), .CK(CLK), .RN(RST), .Q(ZERO_Count[0]) );
  DFFRQX2M sampled_bit_reg ( .D(n54), .CK(CLK), .RN(RST), .Q(sampled_bit) );
  OR2X2M U3 ( .A(prescale[1]), .B(prescale[0]), .Y(n4) );
  OR2X2M U4 ( .A(prescale[2]), .B(prescale[1]), .Y(n1) );
  ADDHX1M U5 ( .A(prescale[4]), .B(\add_42/carry[3] ), .CO(\add_42/carry[4] ), 
        .S(N23) );
  ADDHX1M U6 ( .A(prescale[3]), .B(\add_42/carry[2] ), .CO(\add_42/carry[3] ), 
        .S(N22) );
  ADDHX1M U7 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_42/carry[2] ), .S(
        N21) );
  ADDHX1M U8 ( .A(prescale[5]), .B(\add_42/carry[4] ), .CO(N25), .S(N24) );
  CLKINVX1M U9 ( .A(prescale[1]), .Y(N12) );
  OAI2BB1X1M U10 ( .A0N(prescale[1]), .A1N(prescale[2]), .B0(n1), .Y(N13) );
  OR2X1M U11 ( .A(n1), .B(prescale[3]), .Y(n2) );
  OAI2BB1X1M U12 ( .A0N(n1), .A1N(prescale[3]), .B0(n2), .Y(N14) );
  XNOR2X1M U13 ( .A(prescale[4]), .B(n2), .Y(N15) );
  NOR3X1M U14 ( .A(prescale[4]), .B(prescale[5]), .C(n2), .Y(N17) );
  OAI21X1M U15 ( .A0(prescale[4]), .A1(n2), .B0(prescale[5]), .Y(n3) );
  NAND2BX1M U16 ( .AN(N17), .B(n3), .Y(N16) );
  CLKINVX1M U17 ( .A(prescale[0]), .Y(N28) );
  OAI2BB1X1M U18 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n4), .Y(N29) );
  OR2X1M U19 ( .A(n4), .B(prescale[2]), .Y(n5) );
  OAI2BB1X1M U20 ( .A0N(n4), .A1N(prescale[2]), .B0(n5), .Y(N30) );
  OR2X1M U21 ( .A(n5), .B(prescale[3]), .Y(n6) );
  OAI2BB1X1M U22 ( .A0N(n5), .A1N(prescale[3]), .B0(n6), .Y(N31) );
  OR2X1M U23 ( .A(n6), .B(prescale[4]), .Y(n7) );
  OAI2BB1X1M U24 ( .A0N(n6), .A1N(prescale[4]), .B0(n7), .Y(N32) );
  NOR2X1M U25 ( .A(n7), .B(prescale[5]), .Y(N34) );
  AO21XLM U26 ( .A0(n7), .A1(prescale[5]), .B0(N34), .Y(N33) );
  NOR2BX1M U27 ( .AN(edge_cnt[0]), .B(N12), .Y(n8) );
  OAI2B2X1M U28 ( .A1N(N13), .A0(n8), .B0(edge_cnt[1]), .B1(n8), .Y(n11) );
  NOR2BX1M U29 ( .AN(N12), .B(edge_cnt[0]), .Y(n9) );
  OAI2B2X1M U30 ( .A1N(edge_cnt[1]), .A0(n9), .B0(N13), .B1(n9), .Y(n10) );
  NAND4BBX1M U31 ( .AN(N17), .BN(edge_cnt[5]), .C(n11), .D(n10), .Y(n15) );
  CLKXOR2X2M U32 ( .A(N16), .B(edge_cnt[4]), .Y(n14) );
  CLKXOR2X2M U33 ( .A(N14), .B(edge_cnt[2]), .Y(n13) );
  CLKXOR2X2M U34 ( .A(N15), .B(edge_cnt[3]), .Y(n12) );
  NOR4X1M U35 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(N18) );
  NOR2BX1M U36 ( .AN(N28), .B(edge_cnt[0]), .Y(n16) );
  OAI2B2X1M U37 ( .A1N(edge_cnt[1]), .A0(n16), .B0(N29), .B1(n16), .Y(n20) );
  XNOR2X1M U38 ( .A(N33), .B(edge_cnt[5]), .Y(n19) );
  NOR2BX1M U39 ( .AN(edge_cnt[0]), .B(N28), .Y(n17) );
  OAI2B2X1M U40 ( .A1N(N29), .A0(n17), .B0(edge_cnt[1]), .B1(n17), .Y(n18) );
  NAND4BX1M U41 ( .AN(N34), .B(n20), .C(n19), .D(n18), .Y(n24) );
  CLKXOR2X2M U42 ( .A(N32), .B(edge_cnt[4]), .Y(n23) );
  CLKXOR2X2M U43 ( .A(N30), .B(edge_cnt[2]), .Y(n22) );
  CLKXOR2X2M U44 ( .A(N31), .B(edge_cnt[3]), .Y(n21) );
  NOR4X1M U45 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(N35) );
  MXI2X1M U46 ( .A(n25), .B(n26), .S0(One_CONUT[1]), .Y(n58) );
  AOI21BX1M U47 ( .A0(n27), .A1(n28), .B0N(n29), .Y(n26) );
  NAND3X1M U48 ( .A(n27), .B(n29), .C(One_CONUT[0]), .Y(n25) );
  MXI2X1M U49 ( .A(n30), .B(n29), .S0(One_CONUT[0]), .Y(n57) );
  CLKNAND2X2M U50 ( .A(n27), .B(n29), .Y(n30) );
  NAND3X1M U51 ( .A(n31), .B(n32), .C(dat_samp_en), .Y(n29) );
  NAND3X1M U52 ( .A(n33), .B(n34), .C(RX_IN_FF), .Y(n31) );
  MXI2X1M U53 ( .A(n35), .B(n36), .S0(ZERO_Count[1]), .Y(n56) );
  AOI2B1X1M U54 ( .A1N(ZERO_Count[0]), .A0(n27), .B0(n37), .Y(n36) );
  CLKINVX1M U55 ( .A(n38), .Y(n37) );
  NAND3X1M U56 ( .A(n27), .B(n38), .C(ZERO_Count[0]), .Y(n35) );
  MXI2X1M U57 ( .A(n39), .B(n38), .S0(ZERO_Count[0]), .Y(n55) );
  CLKNAND2X2M U58 ( .A(n27), .B(n38), .Y(n39) );
  OAI211X1M U59 ( .A0(n40), .A1(n41), .B0(n32), .C0(dat_samp_en), .Y(n38) );
  CLKNAND2X2M U60 ( .A(n34), .B(n42), .Y(n41) );
  CLKINVX1M U61 ( .A(n43), .Y(n34) );
  NOR2X1M U62 ( .A(n44), .B(n43), .Y(n27) );
  CLKMX2X2M U63 ( .A(sampled_bit), .B(n45), .S0(n46), .Y(n54) );
  AOI21X1M U64 ( .A0(n47), .A1(n32), .B0(n44), .Y(n46) );
  CLKINVX1M U65 ( .A(dat_samp_en), .Y(n44) );
  NAND3X1M U66 ( .A(n33), .B(n43), .C(N35), .Y(n32) );
  NOR3X1M U67 ( .A(N18), .B(n48), .C(n49), .Y(n43) );
  NOR4X1M U68 ( .A(n50), .B(n51), .C(n52), .D(n53), .Y(n49) );
  CLKXOR2X2M U69 ( .A(edge_cnt[3]), .B(N23), .Y(n53) );
  CLKXOR2X2M U70 ( .A(edge_cnt[5]), .B(N25), .Y(n52) );
  CLKXOR2X2M U71 ( .A(edge_cnt[4]), .B(N24), .Y(n51) );
  NAND3X1M U72 ( .A(n59), .B(n60), .C(n61), .Y(n50) );
  XNOR2X1M U73 ( .A(edge_cnt[1]), .B(N21), .Y(n61) );
  XNOR2X1M U74 ( .A(edge_cnt[2]), .B(N22), .Y(n60) );
  XNOR2X1M U75 ( .A(edge_cnt[0]), .B(N12), .Y(n59) );
  NOR4X1M U76 ( .A(n62), .B(n63), .C(edge_cnt[5]), .D(edge_cnt[0]), .Y(n48) );
  CLKXOR2X2M U77 ( .A(prescale[5]), .B(edge_cnt[4]), .Y(n63) );
  NAND3X1M U78 ( .A(n64), .B(n65), .C(n66), .Y(n62) );
  XNOR2X1M U79 ( .A(edge_cnt[2]), .B(prescale[3]), .Y(n66) );
  XNOR2X1M U80 ( .A(edge_cnt[3]), .B(prescale[4]), .Y(n65) );
  CLKXOR2X2M U81 ( .A(edge_cnt[1]), .B(n67), .Y(n64) );
  NAND4BBX1M U82 ( .AN(n68), .BN(edge_cnt[1]), .C(edge_cnt[0]), .D(n69), .Y(
        n47) );
  NOR4X1M U83 ( .A(edge_cnt[5]), .B(edge_cnt[4]), .C(edge_cnt[3]), .D(
        edge_cnt[2]), .Y(n69) );
  OAI22X1M U84 ( .A0(n70), .A1(n40), .B0(n42), .B1(n68), .Y(n45) );
  NAND4BX1M U85 ( .AN(prescale[0]), .B(n67), .C(prescale[1]), .D(n71), .Y(n68)
         );
  NOR3X1M U86 ( .A(prescale[3]), .B(prescale[5]), .C(prescale[4]), .Y(n71) );
  CLKINVX1M U87 ( .A(prescale[2]), .Y(n67) );
  CLKINVX1M U88 ( .A(RX_IN_FF), .Y(n42) );
  CLKINVX1M U89 ( .A(n33), .Y(n40) );
  NOR3BX1M U90 ( .AN(n72), .B(prescale[0]), .C(prescale[1]), .Y(n33) );
  MX3X1M U91 ( .A(n73), .B(n74), .C(n75), .S0(prescale[4]), .S1(prescale[5]), 
        .Y(n72) );
  NOR3X1M U92 ( .A(prescale[2]), .B(prescale[4]), .C(prescale[3]), .Y(n75) );
  NOR2X1M U93 ( .A(prescale[3]), .B(prescale[2]), .Y(n74) );
  CLKXOR2X2M U94 ( .A(prescale[3]), .B(prescale[2]), .Y(n73) );
  AOI21X1M U95 ( .A0(One_CONUT[1]), .A1(n76), .B0(n77), .Y(n70) );
  AOI2BB1X1M U96 ( .A0N(n76), .A1N(One_CONUT[1]), .B0(ZERO_Count[1]), .Y(n77)
         );
  CLKNAND2X2M U97 ( .A(ZERO_Count[0]), .B(n28), .Y(n76) );
  CLKINVX1M U98 ( .A(One_CONUT[0]), .Y(n28) );
endmodule


module parity_check ( par_chck_en, par_type, sampled_bit, P_DATA, par_err );
  input [7:0] P_DATA;
  input par_chck_en, par_type, sampled_bit;
  output par_err;
  wire   n1, n2, n3, n4, n5, n6;

  XNOR2X2M U2 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  XNOR2X2M U3 ( .A(sampled_bit), .B(n1), .Y(par_err) );
  NAND2X2M U4 ( .A(par_chck_en), .B(n2), .Y(n1) );
  XOR3XLM U5 ( .A(par_type), .B(n3), .C(n4), .Y(n2) );
  XOR3XLM U6 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
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


module DESERILIZER ( CLK, RST, deser_en, sampled_bit, P_DATA );
  output [7:0] P_DATA;
  input CLK, RST, deser_en, sampled_bit;
  wire   n1, n2, n5, n7, n8, n9, n10, n11, n12, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n3, n4,
         n6, n13;
  wire   [3:0] deser_count;

  DFFRQX2M \deser_count_reg[2]  ( .D(n21), .CK(CLK), .RN(RST), .Q(
        deser_count[2]) );
  DFFRQX2M \deser_count_reg[1]  ( .D(n22), .CK(CLK), .RN(RST), .Q(
        deser_count[1]) );
  DFFRQX2M \P_DATA_reg[5]  ( .D(n29), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n25), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n28), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[0]  ( .D(n24), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n31), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n27), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n30), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n26), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  DFFRX1M \deser_count_reg[0]  ( .D(n23), .CK(CLK), .RN(RST), .Q(
        deser_count[0]), .QN(n3) );
  OAI221X1M U3 ( .A0(n1), .A1(n2), .B0(n4), .B1(n13), .C0(n5), .Y(n21) );
  NAND2X2M U4 ( .A(deser_en), .B(n3), .Y(n7) );
  OAI21X2M U5 ( .A0(deser_en), .A1(n3), .B0(n7), .Y(n23) );
  INVX2M U6 ( .A(n2), .Y(n4) );
  NAND2X2M U7 ( .A(n13), .B(n6), .Y(n8) );
  NAND2X2M U8 ( .A(deser_en), .B(deser_count[0]), .Y(n2) );
  XNOR2X2M U9 ( .A(deser_count[1]), .B(n2), .Y(n22) );
  NAND2X2M U10 ( .A(sampled_bit), .B(n4), .Y(n11) );
  NAND2BX2M U11 ( .AN(n7), .B(sampled_bit), .Y(n9) );
  OAI21X2M U12 ( .A0(n1), .A1(n9), .B0(n14), .Y(n26) );
  OAI21X2M U13 ( .A0(n1), .A1(n7), .B0(P_DATA[2]), .Y(n14) );
  OAI21X2M U14 ( .A0(n1), .A1(n11), .B0(n15), .Y(n27) );
  OAI21X2M U15 ( .A0(n1), .A1(n2), .B0(P_DATA[3]), .Y(n15) );
  OAI21X2M U16 ( .A0(n11), .A1(n5), .B0(n17), .Y(n29) );
  OAI21X2M U17 ( .A0(n2), .A1(n5), .B0(P_DATA[5]), .Y(n17) );
  OAI21X2M U18 ( .A0(n11), .A1(n18), .B0(n20), .Y(n31) );
  OAI21X2M U19 ( .A0(n2), .A1(n18), .B0(P_DATA[7]), .Y(n20) );
  OAI21X2M U20 ( .A0(n9), .A1(n5), .B0(n16), .Y(n28) );
  OAI21X2M U21 ( .A0(n7), .A1(n5), .B0(P_DATA[4]), .Y(n16) );
  OAI21X2M U22 ( .A0(n8), .A1(n11), .B0(n12), .Y(n25) );
  OAI21X2M U23 ( .A0(n2), .A1(n8), .B0(P_DATA[1]), .Y(n12) );
  OAI21X2M U24 ( .A0(n9), .A1(n18), .B0(n19), .Y(n30) );
  OAI21X2M U25 ( .A0(n7), .A1(n18), .B0(P_DATA[6]), .Y(n19) );
  OAI21X2M U26 ( .A0(n8), .A1(n9), .B0(n10), .Y(n24) );
  OAI21X2M U27 ( .A0(n8), .A1(n7), .B0(P_DATA[0]), .Y(n10) );
  NAND2X2M U28 ( .A(deser_count[1]), .B(n13), .Y(n1) );
  NAND2X2M U29 ( .A(deser_count[2]), .B(n6), .Y(n5) );
  NAND2X2M U30 ( .A(deser_count[1]), .B(deser_count[2]), .Y(n18) );
  INVX2M U31 ( .A(deser_count[2]), .Y(n13) );
  INVX2M U32 ( .A(deser_count[1]), .Y(n6) );
endmodule


module TOP_RX_UART ( RX_IN, prescale, PAR_EN, PAR_TYPE, CLK, RST, valid_DATA, 
        P_DATA, PAR_ERR, STP_ERR );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYPE, CLK, RST;
  output valid_DATA, PAR_ERR, STP_ERR;
  wire   strt_glitch, dat_samp_en, enable_EDGE_bit_CNT, deser_en, stp_chk_en,
         strt_chk_en, par_chk_En, sampled_OUT;
  wire   [3:0] bit_count;
  wire   [5:0] edge_cnt;

  FSM_RX_UART fsm_u0 ( .RX_IN(RX_IN), .PAR_En(PAR_EN), .CLK(CLK), .RST(RST), 
        .par_err(PAR_ERR), .strt_glitch(strt_glitch), .stp_err(STP_ERR), 
        .bit_count(bit_count), .edge_count(edge_cnt), .prescale(prescale), 
        .dat_samp_en(dat_samp_en), .EDGE_CNT_en(enable_EDGE_bit_CNT), 
        .deser_en(deser_en), .data_valid(valid_DATA), .stp_chk_en(stp_chk_en), 
        .strt_chk_en(strt_chk_en), .par_chk_en(par_chk_En) );
  EDGE_BIT_COUNTER u0 ( .enable(enable_EDGE_bit_CNT), .CLK(CLK), .RST(RST), 
        .prescale(prescale), .edge_count(edge_cnt), .bit_count(bit_count) );
  DATA_SAMPLING data_sampler_u1 ( .RX_IN(RX_IN), .prescale(prescale), 
        .dat_samp_en(dat_samp_en), .CLK(CLK), .RST(RST), .edge_cnt(edge_cnt), 
        .sampled_bit(sampled_OUT) );
  parity_check par_chk_u2 ( .par_chck_en(par_chk_En), .par_type(PAR_TYPE), 
        .sampled_bit(sampled_OUT), .P_DATA(P_DATA), .par_err(PAR_ERR) );
  start_check strt_chk_u3 ( .strt_chck_en(strt_chk_en), .sampled_bit(
        sampled_OUT), .strt_glitch(strt_glitch) );
  stop_check stop_chk_u4 ( .stop_chck_en(stp_chk_en), .sampled_bit(sampled_OUT), .stop_error(STP_ERR) );
  DESERILIZER DESERILIZER_u5 ( .CLK(CLK), .RST(RST), .deser_en(deser_en), 
        .sampled_bit(sampled_OUT), .P_DATA(P_DATA) );
endmodule


module UART ( RST, TX_CLK, RX_CLK, parity_enable, parity_type, Prescale, RX_IN, 
        TX_IN_P_Data, TX_IN_Valid, RX_OUT_P_Data, RX_OUT_Valid, TX_OUT, busy, 
        parity_error, framing_error );
  input [5:0] Prescale;
  input [7:0] TX_IN_P_Data;
  output [7:0] RX_OUT_P_Data;
  input RST, TX_CLK, RX_CLK, parity_enable, parity_type, RX_IN, TX_IN_Valid;
  output RX_OUT_Valid, TX_OUT, busy, parity_error, framing_error;
  wire   n1, n2;

  TOP_TX_UART TX_UART ( .P_DATA(TX_IN_P_Data), .DATA_Valid(TX_IN_Valid), 
        .PAR_EN(parity_enable), .PAR_TYP(parity_type), .RST(n1), .CLK(TX_CLK), 
        .TX_OUT(TX_OUT), .BUSY(busy) );
  TOP_RX_UART RX_UART ( .RX_IN(RX_IN), .prescale(Prescale), .PAR_EN(
        parity_enable), .PAR_TYPE(parity_type), .CLK(RX_CLK), .RST(n1), 
        .valid_DATA(RX_OUT_Valid), .P_DATA(RX_OUT_P_Data), .PAR_ERR(
        parity_error), .STP_ERR(framing_error) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module System_CTRL ( ALU_OUT, OUT_VALID, Rx_P_Data, Rx_D_VLD, Rd_Data, 
        Rd_Data_VALID, CLK, RST, FIFO_FULL, ALU_EN, ALU_FUN, Gate_En, 
        out_address, Wr_En, Rd_En, Wr_Data, Wr_Data_FIFO, WR_INC, sys_Error, 
        CLKDIV_EN );
  input [15:0] ALU_OUT;
  input [7:0] Rx_P_Data;
  input [7:0] Rd_Data;
  output [3:0] ALU_FUN;
  output [3:0] out_address;
  output [7:0] Wr_Data;
  output [7:0] Wr_Data_FIFO;
  input OUT_VALID, Rx_D_VLD, Rd_Data_VALID, CLK, RST, FIFO_FULL;
  output ALU_EN, Gate_En, Wr_En, Rd_En, WR_INC, sys_Error, CLKDIV_EN;
  wire   \send_CNT[0] , N410, N411, N417, N418, N424, N425, N428, N431, N432,
         n11, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n75, n76, n77, n78, n79, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, N455, N454, N459, N458, N457, N462, N461,
         N460, N464, N463, n3, n4, n5, n6, n7, n8, n9, n10, n12, n13, n14, n16,
         n17, n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n74, n80, n81,
         n100, n114, n125, n141, n142, n143, n144, n145, n146, n147, n148,
         n149;
  wire   [3:0] Address_FF;
  wire   [3:0] Address;
  wire   [3:0] CU_STATE;
  wire   [3:0] NXT_STATE;
  wire   [2:0] Frame_Counter;
  wire   [2:0] Expected_NO_Frames;

  DFFSQX2M \Address_FF_reg[0]  ( .D(Address[0]), .CK(CLK), .SN(RST), .Q(
        Address_FF[0]) );
  DFFSQX2M \Expected_NO_Frames_reg[2]  ( .D(n140), .CK(CLK), .SN(RST), .Q(
        Expected_NO_Frames[2]) );
  DFFRQX2M \Address_FF_reg[3]  ( .D(Address[3]), .CK(CLK), .RN(RST), .Q(
        Address_FF[3]) );
  DFFRQX2M \Address_FF_reg[2]  ( .D(Address[2]), .CK(CLK), .RN(RST), .Q(
        Address_FF[2]) );
  DFFRQX2M \Address_FF_reg[1]  ( .D(Address[1]), .CK(CLK), .RN(RST), .Q(
        Address_FF[1]) );
  DFFRQX2M \Expected_NO_Frames_reg[0]  ( .D(n138), .CK(CLK), .RN(RST), .Q(
        Expected_NO_Frames[0]) );
  DFFRQX2M \Expected_NO_Frames_reg[1]  ( .D(n139), .CK(CLK), .RN(RST), .Q(
        Expected_NO_Frames[1]) );
  DFFSQX2M \send_CNT_reg[0]  ( .D(n133), .CK(CLK), .SN(RST), .Q(\send_CNT[0] )
         );
  DFFRX1M \send_CNT_reg[1]  ( .D(n134), .CK(CLK), .RN(RST), .QN(n11) );
  DFFRQX2M \Frame_Counter_reg[0]  ( .D(n137), .CK(CLK), .RN(RST), .Q(
        Frame_Counter[0]) );
  DFFRQX2M \Frame_Counter_reg[2]  ( .D(n136), .CK(CLK), .RN(RST), .Q(
        Frame_Counter[2]) );
  DFFRQX2M \CU_STATE_reg[0]  ( .D(NXT_STATE[0]), .CK(CLK), .RN(RST), .Q(
        CU_STATE[0]) );
  DFFRQX2M \CU_STATE_reg[3]  ( .D(NXT_STATE[3]), .CK(CLK), .RN(RST), .Q(
        CU_STATE[3]) );
  DFFRQX2M \CU_STATE_reg[1]  ( .D(NXT_STATE[1]), .CK(CLK), .RN(RST), .Q(
        CU_STATE[1]) );
  DFFRQX2M \CU_STATE_reg[2]  ( .D(NXT_STATE[2]), .CK(CLK), .RN(RST), .Q(
        CU_STATE[2]) );
  DFFRQX2M \Frame_Counter_reg[1]  ( .D(n135), .CK(CLK), .RN(RST), .Q(
        Frame_Counter[1]) );
  INVX2M U3 ( .A(1'b0), .Y(CLKDIV_EN) );
  NOR2X3M U5 ( .A(ALU_OUT[0]), .B(n21), .Y(n3) );
  NOR2X4M U6 ( .A(n3), .B(n4), .Y(Wr_Data_FIFO[0]) );
  NOR2X2M U7 ( .A(n24), .B(n21), .Y(n4) );
  AO22X1M U8 ( .A0(Rd_Data[0]), .A1(Rd_En), .B0(ALU_OUT[8]), .B1(n25), .Y(n21)
         );
  OAI2BB1X2M U9 ( .A0N(Rd_Data[1]), .A1N(Rd_En), .B0(n5), .Y(Wr_Data_FIFO[1])
         );
  AOI22X1M U10 ( .A0(ALU_OUT[1]), .A1(n24), .B0(ALU_OUT[9]), .B1(n25), .Y(n5)
         );
  INVX2M U11 ( .A(Rd_Data_VALID), .Y(n16) );
  INVX2M U12 ( .A(OUT_VALID), .Y(n33) );
  AOI21X2M U13 ( .A0(n27), .A1(n40), .B0(Rd_En), .Y(n132) );
  INVX2M U14 ( .A(n17), .Y(Rd_En) );
  INVX2M U15 ( .A(n59), .Y(n81) );
  INVX2M U16 ( .A(n14), .Y(Wr_En) );
  INVX2M U17 ( .A(n18), .Y(n84) );
  NOR2X2M U18 ( .A(n39), .B(n34), .Y(n111) );
  NAND2X2M U19 ( .A(ALU_EN), .B(WR_INC), .Y(n46) );
  INVX2M U20 ( .A(n35), .Y(n27) );
  INVX2M U21 ( .A(n109), .Y(n36) );
  OR2X2M U22 ( .A(n107), .B(n35), .Y(n17) );
  NAND2X2M U23 ( .A(n28), .B(n63), .Y(n124) );
  INVX2M U24 ( .A(n119), .Y(n40) );
  NOR4X1M U25 ( .A(n55), .B(n53), .C(n50), .D(n51), .Y(n59) );
  BUFX2M U26 ( .A(n72), .Y(n14) );
  AOI22X1M U27 ( .A0(n40), .A1(n63), .B0(n82), .B1(n28), .Y(n72) );
  AOI2B1X1M U28 ( .A1N(n16), .A0(n56), .B0(n107), .Y(n106) );
  OR2X2M U29 ( .A(n63), .B(n27), .Y(n82) );
  INVX2M U30 ( .A(N463), .Y(n29) );
  INVX2M U31 ( .A(n99), .Y(n37) );
  INVX2M U32 ( .A(n70), .Y(n125) );
  INVX2M U33 ( .A(n89), .Y(n42) );
  OAI2BB1X2M U34 ( .A0N(Rd_Data[2]), .A1N(Rd_En), .B0(n79), .Y(Wr_Data_FIFO[2]) );
  AOI22X1M U35 ( .A0(ALU_OUT[2]), .A1(n24), .B0(ALU_OUT[10]), .B1(n25), .Y(n79) );
  OAI2BB1X2M U36 ( .A0N(Rd_Data[7]), .A1N(Rd_En), .B0(n73), .Y(Wr_Data_FIFO[7]) );
  AOI22X1M U37 ( .A0(ALU_OUT[7]), .A1(n24), .B0(ALU_OUT[15]), .B1(n25), .Y(n73) );
  OAI2BB1X2M U38 ( .A0N(Rd_Data[3]), .A1N(Rd_En), .B0(n78), .Y(Wr_Data_FIFO[3]) );
  AOI22X1M U39 ( .A0(ALU_OUT[3]), .A1(n24), .B0(ALU_OUT[11]), .B1(n25), .Y(n78) );
  OAI2BB1X2M U40 ( .A0N(Rd_Data[4]), .A1N(Rd_En), .B0(n77), .Y(Wr_Data_FIFO[4]) );
  AOI22X1M U41 ( .A0(ALU_OUT[4]), .A1(n24), .B0(ALU_OUT[12]), .B1(n25), .Y(n77) );
  OAI2BB1X2M U42 ( .A0N(Rd_Data[5]), .A1N(Rd_En), .B0(n76), .Y(Wr_Data_FIFO[5]) );
  AOI22X1M U43 ( .A0(ALU_OUT[5]), .A1(n24), .B0(ALU_OUT[13]), .B1(n25), .Y(n76) );
  OAI2BB1X2M U44 ( .A0N(Rd_Data[6]), .A1N(Rd_En), .B0(n75), .Y(Wr_Data_FIFO[6]) );
  AOI22X1M U45 ( .A0(ALU_OUT[6]), .A1(n24), .B0(ALU_OUT[14]), .B1(n25), .Y(n75) );
  NAND3BX2M U46 ( .AN(n24), .B(n17), .C(n83), .Y(WR_INC) );
  NOR2X2M U47 ( .A(n84), .B(n144), .Y(ALU_FUN[3]) );
  NOR2X2M U48 ( .A(n84), .B(n146), .Y(ALU_FUN[1]) );
  NOR2X2M U49 ( .A(n84), .B(n147), .Y(ALU_FUN[0]) );
  NOR2X2M U50 ( .A(n84), .B(n145), .Y(ALU_FUN[2]) );
  OAI211X2M U51 ( .A0(n132), .A1(n147), .B0(n95), .C0(n124), .Y(Address[0]) );
  NOR2X2M U52 ( .A(n38), .B(n13), .Y(n109) );
  NAND2BX2M U53 ( .AN(n22), .B(n43), .Y(n107) );
  INVX2M U54 ( .A(n118), .Y(n28) );
  AO2B2X2M U55 ( .B0(n111), .B1(n28), .A0(n27), .A1N(n112), .Y(n18) );
  INVX2M U56 ( .A(n22), .Y(n26) );
  OR2X2M U57 ( .A(n12), .B(n36), .Y(n35) );
  INVX2M U58 ( .A(n20), .Y(n24) );
  NAND3BX2M U59 ( .AN(n33), .B(n19), .C(n18), .Y(n20) );
  INVX2M U60 ( .A(n47), .Y(n19) );
  INVX2M U61 ( .A(n87), .Y(n34) );
  INVX2M U62 ( .A(n12), .Y(n39) );
  NOR2X2M U63 ( .A(n60), .B(n12), .Y(n63) );
  NAND3X2M U64 ( .A(n90), .B(n83), .C(n84), .Y(ALU_EN) );
  OAI211X2M U65 ( .A0(n85), .A1(n33), .B0(n32), .C0(n86), .Y(NXT_STATE[3]) );
  AOI21X2M U66 ( .A0(n87), .A1(n40), .B0(n88), .Y(n86) );
  OAI31X1M U67 ( .A0(n69), .A1(n125), .A2(n89), .B0(n90), .Y(n88) );
  NAND2X2M U68 ( .A(n128), .B(n43), .Y(n119) );
  NAND4X2M U69 ( .A(n94), .B(n95), .C(n96), .D(n97), .Y(NXT_STATE[2]) );
  OAI21X2M U70 ( .A0(n99), .A1(n27), .B0(n28), .Y(n96) );
  AOI221XLM U71 ( .A0(n18), .A1(n33), .B0(n42), .B1(n53), .C0(n98), .Y(n97) );
  NAND4BX1M U72 ( .AN(n101), .B(n32), .C(n102), .D(n103), .Y(NXT_STATE[1]) );
  AOI2BB2XLM U73 ( .B0(n28), .B1(n82), .A0N(n95), .A1N(n35), .Y(n102) );
  AOI211X2M U74 ( .A0(n104), .A1(OUT_VALID), .B0(n105), .C0(n106), .Y(n103) );
  OAI31X1M U75 ( .A0(n89), .A1(n125), .A2(n114), .B0(n108), .Y(n105) );
  NOR2X2M U76 ( .A(n146), .B(n132), .Y(Address[1]) );
  NOR2X2M U77 ( .A(n145), .B(n132), .Y(Address[2]) );
  NOR2X2M U78 ( .A(n144), .B(n132), .Y(Address[3]) );
  OAI22X1M U79 ( .A0(n48), .A1(n57), .B0(n58), .B1(n39), .Y(n136) );
  AOI21X2M U80 ( .A0(n59), .A1(n60), .B0(n48), .Y(n58) );
  AOI221XLM U81 ( .A0(N418), .A1(n50), .B0(N411), .B1(n51), .C0(n61), .Y(n57)
         );
  CLKXOR2X2M U82 ( .A(N462), .B(n148), .Y(N418) );
  OAI221X1M U83 ( .A0(n112), .A1(n37), .B0(n100), .B1(n89), .C0(n124), .Y(n98)
         );
  INVX2M U84 ( .A(n55), .Y(n100) );
  OAI222X1M U85 ( .A0(n38), .A1(n30), .B0(n48), .B1(n49), .C0(n36), .C1(n81), 
        .Y(n135) );
  AOI221XLM U86 ( .A0(N417), .A1(n50), .B0(N410), .B1(n51), .C0(n52), .Y(n49)
         );
  XNOR2X2M U87 ( .A(N461), .B(n29), .Y(N417) );
  XNOR2X2M U88 ( .A(N464), .B(n29), .Y(N410) );
  NOR2X2M U89 ( .A(n92), .B(n71), .Y(n55) );
  NOR2X2M U90 ( .A(n91), .B(n71), .Y(n50) );
  NOR2X2M U91 ( .A(n14), .B(n141), .Y(Wr_Data[6]) );
  NOR2X2M U92 ( .A(n14), .B(n142), .Y(Wr_Data[5]) );
  NOR2X2M U93 ( .A(n14), .B(n143), .Y(Wr_Data[4]) );
  NOR2X2M U94 ( .A(n14), .B(n144), .Y(Wr_Data[3]) );
  NOR2X2M U95 ( .A(n14), .B(n147), .Y(Wr_Data[0]) );
  NOR2X2M U96 ( .A(n71), .B(n67), .Y(n51) );
  NOR2X2M U97 ( .A(n70), .B(n71), .Y(n53) );
  NAND3X2M U98 ( .A(n147), .B(n143), .C(n110), .Y(n70) );
  NAND3X2M U99 ( .A(n147), .B(n143), .C(n93), .Y(n67) );
  NOR2X2M U100 ( .A(n14), .B(n145), .Y(Wr_Data[2]) );
  NOR2X2M U101 ( .A(n14), .B(n146), .Y(Wr_Data[1]) );
  INVX2M U102 ( .A(n83), .Y(n25) );
  INVX2M U103 ( .A(n48), .Y(n30) );
  NAND3BX2M U104 ( .AN(ALU_EN), .B(n124), .C(n94), .Y(Gate_En) );
  OAI2BB1X2M U105 ( .A0N(N425), .A1N(n53), .B0(n62), .Y(n61) );
  CLKXOR2X2M U106 ( .A(N459), .B(n149), .Y(N425) );
  AOI22X1M U107 ( .A0(n59), .A1(n63), .B0(N432), .B1(n55), .Y(n62) );
  AND2X2M U108 ( .A(N428), .B(n12), .Y(N459) );
  OAI22X1M U109 ( .A0(n31), .A1(n30), .B0(n48), .B1(n64), .Y(n137) );
  AOI221XLM U110 ( .A0(n29), .A1(n50), .B0(n29), .B1(n51), .C0(n65), .Y(n64)
         );
  OAI2BB1X2M U111 ( .A0N(n29), .A1N(n53), .B0(n66), .Y(n65) );
  AOI22X1M U112 ( .A0(n59), .A1(n31), .B0(n29), .B1(n55), .Y(n66) );
  OAI2BB1X2M U113 ( .A0N(N424), .A1N(n53), .B0(n54), .Y(n52) );
  XNOR2X2M U114 ( .A(N458), .B(n29), .Y(N424) );
  AOI2BB2XLM U115 ( .B0(N431), .B1(n55), .A0N(n81), .A1N(n56), .Y(n54) );
  XNOR2X2M U116 ( .A(N455), .B(n29), .Y(N431) );
  AND2X2M U117 ( .A(n13), .B(N428), .Y(N454) );
  AND2X2M U118 ( .A(n13), .B(N428), .Y(N457) );
  AND2X2M U119 ( .A(n13), .B(N428), .Y(N463) );
  AND2X2M U120 ( .A(n13), .B(N428), .Y(N460) );
  AO22X1M U121 ( .A0(n10), .A1(n128), .B0(n63), .B1(n40), .Y(n127) );
  AND2X2M U122 ( .A(N428), .B(n12), .Y(N462) );
  INVX2M U123 ( .A(n68), .Y(n80) );
  CLKXOR2X2M U124 ( .A(n6), .B(n7), .Y(N432) );
  NAND2X2M U125 ( .A(N428), .B(n12), .Y(n6) );
  NAND2X2M U126 ( .A(N455), .B(N454), .Y(n7) );
  AND2X2M U127 ( .A(N458), .B(N457), .Y(n149) );
  AND2X2M U128 ( .A(N461), .B(N460), .Y(n148) );
  CLKXOR2X2M U129 ( .A(n8), .B(n9), .Y(N411) );
  NAND2X2M U130 ( .A(N428), .B(n12), .Y(n8) );
  NAND2X2M U131 ( .A(N464), .B(N463), .Y(n9) );
  AOI2BB2XLM U132 ( .B0(n28), .B1(n111), .A0N(n36), .A1N(n112), .Y(n85) );
  OAI211X2M U133 ( .A0(n87), .A1(n118), .B0(n119), .C0(n120), .Y(n117) );
  NOR2X2M U134 ( .A(n56), .B(n12), .Y(n99) );
  OAI2BB2X1M U135 ( .B0(n111), .B1(n94), .A0N(n50), .A1N(n42), .Y(n101) );
  OAI21X2M U136 ( .A0(n109), .A1(n38), .B0(n40), .Y(n108) );
  AOI21X2M U137 ( .A0(n60), .A1(n34), .B0(n120), .Y(n121) );
  NAND2X2M U138 ( .A(n13), .B(n38), .Y(n56) );
  NAND2X2M U139 ( .A(n10), .B(n26), .Y(n89) );
  NAND3X2M U140 ( .A(n91), .B(n67), .C(n92), .Y(n69) );
  NOR2BX2M U141 ( .AN(n47), .B(n85), .Y(n104) );
  AND2X2M U142 ( .A(n112), .B(n107), .Y(n120) );
  INVX2M U143 ( .A(n92), .Y(n114) );
  INVX2M U144 ( .A(n13), .Y(n31) );
  NOR2X2M U145 ( .A(CU_STATE[3]), .B(CU_STATE[0]), .Y(n128) );
  NOR2X2M U146 ( .A(Frame_Counter[1]), .B(n13), .Y(n87) );
  NOR2X2M U147 ( .A(n41), .B(CU_STATE[2]), .Y(n43) );
  NAND3X2M U148 ( .A(n26), .B(n41), .C(CU_STATE[2]), .Y(n112) );
  INVX2M U149 ( .A(Frame_Counter[1]), .Y(n38) );
  NAND3X2M U150 ( .A(n128), .B(n41), .C(CU_STATE[2]), .Y(n118) );
  BUFX2M U151 ( .A(Frame_Counter[0]), .Y(n13) );
  INVX2M U152 ( .A(CU_STATE[1]), .Y(n41) );
  BUFX2M U153 ( .A(Frame_Counter[2]), .Y(n12) );
  OR2X2M U154 ( .A(CU_STATE[3]), .B(n74), .Y(n22) );
  INVX2M U155 ( .A(CU_STATE[0]), .Y(n74) );
  AO22X1M U156 ( .A0(Address[0]), .A1(Rd_En), .B0(Address_FF[0]), .B1(n17), 
        .Y(out_address[0]) );
  NAND2X2M U157 ( .A(n44), .B(n45), .Y(n133) );
  AO21XLM U158 ( .A0(n46), .A1(n11), .B0(\send_CNT[0] ), .Y(n44) );
  NAND3BX2M U159 ( .AN(n74), .B(CU_STATE[3]), .C(n10), .Y(n83) );
  AO22X1M U160 ( .A0(Address[3]), .A1(Rd_En), .B0(Address_FF[3]), .B1(n17), 
        .Y(out_address[3]) );
  OAI22X1M U161 ( .A0(n45), .A1(n11), .B0(n47), .B1(n46), .Y(n134) );
  AO22X1M U162 ( .A0(Rd_En), .A1(Address[2]), .B0(Address_FF[2]), .B1(n17), 
        .Y(out_address[2]) );
  NAND2X2M U163 ( .A(n13), .B(Frame_Counter[1]), .Y(n60) );
  NAND3X2M U164 ( .A(n128), .B(CU_STATE[1]), .C(CU_STATE[2]), .Y(n95) );
  NAND3X2M U165 ( .A(CU_STATE[3]), .B(n74), .C(n10), .Y(n90) );
  INVX2M U166 ( .A(Rx_P_Data[2]), .Y(n145) );
  INVX2M U167 ( .A(Rx_P_Data[1]), .Y(n146) );
  INVX2M U168 ( .A(Rx_P_Data[0]), .Y(n147) );
  NOR2X2M U169 ( .A(CU_STATE[1]), .B(CU_STATE[2]), .Y(n10) );
  NAND2X2M U170 ( .A(\send_CNT[0] ), .B(n46), .Y(n45) );
  INVX2M U171 ( .A(Rx_P_Data[3]), .Y(n144) );
  AO22X1M U172 ( .A0(Rd_En), .A1(Address[1]), .B0(Address_FF[1]), .B1(n17), 
        .Y(out_address[1]) );
  AOI21X2M U173 ( .A0(N428), .A1(Rx_D_VLD), .B0(n80), .Y(n48) );
  NOR4X1M U174 ( .A(n142), .B(n146), .C(Rx_P_Data[2]), .D(Rx_P_Data[6]), .Y(
        n93) );
  NOR4X1M U175 ( .A(n141), .B(n145), .C(Rx_P_Data[1]), .D(Rx_P_Data[5]), .Y(
        n110) );
  NAND3X2M U176 ( .A(n129), .B(n130), .C(n131), .Y(N428) );
  XNOR2X2M U177 ( .A(Expected_NO_Frames[2]), .B(n12), .Y(n129) );
  XNOR2X2M U178 ( .A(Expected_NO_Frames[0]), .B(n13), .Y(n130) );
  XNOR2X2M U179 ( .A(Expected_NO_Frames[1]), .B(Frame_Counter[1]), .Y(n131) );
  NOR2BX2M U180 ( .AN(Rx_P_Data[7]), .B(n14), .Y(Wr_Data[7]) );
  NAND2X2M U181 ( .A(Rx_P_Data[7]), .B(Rx_P_Data[3]), .Y(n71) );
  NAND3X2M U182 ( .A(Rx_P_Data[4]), .B(Rx_P_Data[0]), .C(n110), .Y(n92) );
  NAND2X2M U183 ( .A(Rx_D_VLD), .B(n81), .Y(n68) );
  NAND3X2M U184 ( .A(n93), .B(Rx_P_Data[0]), .C(Rx_P_Data[4]), .Y(n91) );
  NAND2X2M U185 ( .A(n11), .B(\send_CNT[0] ), .Y(n47) );
  OAI2BB2X1M U186 ( .B0(n67), .B1(n68), .A0N(n68), .A1N(Expected_NO_Frames[0]), 
        .Y(n138) );
  OAI2BB2X1M U187 ( .B0(n70), .B1(n68), .A0N(n68), .A1N(Expected_NO_Frames[2]), 
        .Y(n140) );
  INVX2M U188 ( .A(Rx_P_Data[4]), .Y(n143) );
  INVX2M U189 ( .A(Rx_P_Data[5]), .Y(n142) );
  INVX2M U190 ( .A(Rx_P_Data[6]), .Y(n141) );
  NAND2BX2M U191 ( .AN(n122), .B(n123), .Y(NXT_STATE[0]) );
  OAI211X2M U192 ( .A0(n37), .A1(n107), .B0(n126), .C0(n90), .Y(n122) );
  AOI211X2M U193 ( .A0(Rd_En), .A1(n16), .B0(n101), .C0(n98), .Y(n123) );
  OAI31X1M U194 ( .A0(n25), .A1(Rd_En), .A2(n127), .B0(Rx_D_VLD), .Y(n126) );
  AND2X2M U195 ( .A(Frame_Counter[1]), .B(N428), .Y(N458) );
  AND2X2M U196 ( .A(Frame_Counter[1]), .B(N428), .Y(N455) );
  AND2X2M U197 ( .A(Frame_Counter[1]), .B(N428), .Y(N464) );
  AND2X2M U198 ( .A(Frame_Counter[1]), .B(N428), .Y(N461) );
  AO22X1M U199 ( .A0(n68), .A1(Expected_NO_Frames[1]), .B0(n69), .B1(n80), .Y(
        n139) );
  NAND3X2M U200 ( .A(n26), .B(CU_STATE[1]), .C(CU_STATE[2]), .Y(n94) );
  INVX2M U201 ( .A(n113), .Y(n32) );
  OAI2B11X2M U202 ( .A1N(CU_STATE[3]), .A0(n10), .B0(n115), .C0(n116), .Y(n113) );
  AOI31X2M U203 ( .A0(n28), .A1(n39), .A2(n87), .B0(n121), .Y(n115) );
  AOI22X1M U204 ( .A0(n12), .A1(n117), .B0(n42), .B1(n71), .Y(n116) );
  AND3X2M U205 ( .A(CU_STATE[3]), .B(n74), .C(n43), .Y(sys_Error) );
endmodule


module REG_FILE ( adress, WrData, clk, RST, WrEn, RdEn, RdData, REG0, REG1, 
        REG2, REG3, RdData_Valid );
  input [3:0] adress;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input clk, RST, WrEn, RdEn;
  output RdData_Valid;
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
         \REG_MEM[4][0] , N51, N52, N53, N54, N55, N56, N57, N58, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218;
  wire   [3:0] adress_FF;
  assign N12 = adress[0];
  assign N13 = adress[1];
  assign N14 = adress[2];
  assign N15 = adress[3];

  DFFRQX2M \REG_MEM_reg[0][7]  ( .D(n165), .CK(clk), .RN(n200), .Q(REG0[7]) );
  DFFSQX2M \REG_MEM_reg[3][5]  ( .D(n139), .CK(clk), .SN(n196), .Q(REG3[5]) );
  DFFRQX2M \REG_MEM_reg[13][1]  ( .D(n55), .CK(clk), .RN(n199), .Q(
        \REG_MEM[13][1] ) );
  DFFRQX2M \REG_MEM_reg[13][2]  ( .D(n56), .CK(clk), .RN(n199), .Q(
        \REG_MEM[13][2] ) );
  DFFRQX2M \REG_MEM_reg[13][3]  ( .D(n57), .CK(clk), .RN(n199), .Q(
        \REG_MEM[13][3] ) );
  DFFRQX2M \REG_MEM_reg[13][4]  ( .D(n58), .CK(clk), .RN(n199), .Q(
        \REG_MEM[13][4] ) );
  DFFRQX2M \REG_MEM_reg[13][5]  ( .D(n59), .CK(clk), .RN(n199), .Q(
        \REG_MEM[13][5] ) );
  DFFRQX2M \REG_MEM_reg[13][6]  ( .D(n60), .CK(clk), .RN(n199), .Q(
        \REG_MEM[13][6] ) );
  DFFRQX2M \REG_MEM_reg[13][7]  ( .D(n61), .CK(clk), .RN(n199), .Q(
        \REG_MEM[13][7] ) );
  DFFRQX2M \REG_MEM_reg[9][1]  ( .D(n87), .CK(clk), .RN(n198), .Q(
        \REG_MEM[9][1] ) );
  DFFRQX2M \REG_MEM_reg[9][2]  ( .D(n88), .CK(clk), .RN(n198), .Q(
        \REG_MEM[9][2] ) );
  DFFRQX2M \REG_MEM_reg[9][3]  ( .D(n89), .CK(clk), .RN(n198), .Q(
        \REG_MEM[9][3] ) );
  DFFRQX2M \REG_MEM_reg[9][4]  ( .D(n90), .CK(clk), .RN(n198), .Q(
        \REG_MEM[9][4] ) );
  DFFRQX2M \REG_MEM_reg[9][5]  ( .D(n91), .CK(clk), .RN(n198), .Q(
        \REG_MEM[9][5] ) );
  DFFRQX2M \REG_MEM_reg[9][6]  ( .D(n92), .CK(clk), .RN(n198), .Q(
        \REG_MEM[9][6] ) );
  DFFRQX2M \REG_MEM_reg[9][7]  ( .D(n93), .CK(clk), .RN(n198), .Q(
        \REG_MEM[9][7] ) );
  DFFRQX2M \REG_MEM_reg[5][1]  ( .D(n119), .CK(clk), .RN(n197), .Q(
        \REG_MEM[5][1] ) );
  DFFRQX2M \REG_MEM_reg[5][2]  ( .D(n120), .CK(clk), .RN(n197), .Q(
        \REG_MEM[5][2] ) );
  DFFRQX2M \REG_MEM_reg[5][3]  ( .D(n121), .CK(clk), .RN(n197), .Q(
        \REG_MEM[5][3] ) );
  DFFRQX2M \REG_MEM_reg[5][4]  ( .D(n122), .CK(clk), .RN(n197), .Q(
        \REG_MEM[5][4] ) );
  DFFRQX2M \REG_MEM_reg[5][5]  ( .D(n123), .CK(clk), .RN(n197), .Q(
        \REG_MEM[5][5] ) );
  DFFRQX2M \REG_MEM_reg[5][6]  ( .D(n124), .CK(clk), .RN(n197), .Q(
        \REG_MEM[5][6] ) );
  DFFRQX2M \REG_MEM_reg[5][7]  ( .D(n125), .CK(clk), .RN(n197), .Q(
        \REG_MEM[5][7] ) );
  DFFRQX2M \REG_MEM_reg[15][1]  ( .D(n39), .CK(clk), .RN(n200), .Q(
        \REG_MEM[15][1] ) );
  DFFRQX2M \REG_MEM_reg[15][2]  ( .D(n40), .CK(clk), .RN(n200), .Q(
        \REG_MEM[15][2] ) );
  DFFRQX2M \REG_MEM_reg[15][3]  ( .D(n41), .CK(clk), .RN(n200), .Q(
        \REG_MEM[15][3] ) );
  DFFRQX2M \REG_MEM_reg[15][4]  ( .D(n42), .CK(clk), .RN(n200), .Q(
        \REG_MEM[15][4] ) );
  DFFRQX2M \REG_MEM_reg[15][5]  ( .D(n43), .CK(clk), .RN(n200), .Q(
        \REG_MEM[15][5] ) );
  DFFRQX2M \REG_MEM_reg[15][6]  ( .D(n44), .CK(clk), .RN(n199), .Q(
        \REG_MEM[15][6] ) );
  DFFRQX2M \REG_MEM_reg[15][7]  ( .D(n45), .CK(clk), .RN(n199), .Q(
        \REG_MEM[15][7] ) );
  DFFRQX2M \REG_MEM_reg[11][1]  ( .D(n71), .CK(clk), .RN(n199), .Q(
        \REG_MEM[11][1] ) );
  DFFRQX2M \REG_MEM_reg[11][2]  ( .D(n72), .CK(clk), .RN(n199), .Q(
        \REG_MEM[11][2] ) );
  DFFRQX2M \REG_MEM_reg[11][3]  ( .D(n73), .CK(clk), .RN(n199), .Q(
        \REG_MEM[11][3] ) );
  DFFRQX2M \REG_MEM_reg[11][4]  ( .D(n74), .CK(clk), .RN(n198), .Q(
        \REG_MEM[11][4] ) );
  DFFRQX2M \REG_MEM_reg[11][5]  ( .D(n75), .CK(clk), .RN(n199), .Q(
        \REG_MEM[11][5] ) );
  DFFRQX2M \REG_MEM_reg[11][6]  ( .D(n76), .CK(clk), .RN(n198), .Q(
        \REG_MEM[11][6] ) );
  DFFRQX2M \REG_MEM_reg[11][7]  ( .D(n77), .CK(clk), .RN(n198), .Q(
        \REG_MEM[11][7] ) );
  DFFRQX2M \REG_MEM_reg[7][1]  ( .D(n103), .CK(clk), .RN(n198), .Q(
        \REG_MEM[7][1] ) );
  DFFRQX2M \REG_MEM_reg[7][2]  ( .D(n104), .CK(clk), .RN(n198), .Q(
        \REG_MEM[7][2] ) );
  DFFRQX2M \REG_MEM_reg[7][3]  ( .D(n105), .CK(clk), .RN(n198), .Q(
        \REG_MEM[7][3] ) );
  DFFRQX2M \REG_MEM_reg[7][4]  ( .D(n106), .CK(clk), .RN(n197), .Q(
        \REG_MEM[7][4] ) );
  DFFRQX2M \REG_MEM_reg[7][5]  ( .D(n107), .CK(clk), .RN(n197), .Q(
        \REG_MEM[7][5] ) );
  DFFRQX2M \REG_MEM_reg[7][6]  ( .D(n108), .CK(clk), .RN(n197), .Q(
        \REG_MEM[7][6] ) );
  DFFRQX2M \REG_MEM_reg[7][7]  ( .D(n109), .CK(clk), .RN(n197), .Q(
        \REG_MEM[7][7] ) );
  DFFRQX2M \REG_MEM_reg[14][1]  ( .D(n47), .CK(clk), .RN(n204), .Q(
        \REG_MEM[14][1] ) );
  DFFRQX2M \REG_MEM_reg[14][2]  ( .D(n48), .CK(clk), .RN(n204), .Q(
        \REG_MEM[14][2] ) );
  DFFRQX2M \REG_MEM_reg[14][3]  ( .D(n49), .CK(clk), .RN(n204), .Q(
        \REG_MEM[14][3] ) );
  DFFRQX2M \REG_MEM_reg[14][4]  ( .D(n50), .CK(clk), .RN(n204), .Q(
        \REG_MEM[14][4] ) );
  DFFRQX2M \REG_MEM_reg[14][5]  ( .D(n51), .CK(clk), .RN(n204), .Q(
        \REG_MEM[14][5] ) );
  DFFRQX2M \REG_MEM_reg[14][6]  ( .D(n52), .CK(clk), .RN(n204), .Q(
        \REG_MEM[14][6] ) );
  DFFRQX2M \REG_MEM_reg[14][7]  ( .D(n53), .CK(clk), .RN(n204), .Q(
        \REG_MEM[14][7] ) );
  DFFRQX2M \REG_MEM_reg[10][1]  ( .D(n79), .CK(clk), .RN(n203), .Q(
        \REG_MEM[10][1] ) );
  DFFRQX2M \REG_MEM_reg[10][2]  ( .D(n80), .CK(clk), .RN(n203), .Q(
        \REG_MEM[10][2] ) );
  DFFRQX2M \REG_MEM_reg[10][3]  ( .D(n81), .CK(clk), .RN(n203), .Q(
        \REG_MEM[10][3] ) );
  DFFRQX2M \REG_MEM_reg[10][4]  ( .D(n82), .CK(clk), .RN(n203), .Q(
        \REG_MEM[10][4] ) );
  DFFRQX2M \REG_MEM_reg[10][5]  ( .D(n83), .CK(clk), .RN(n203), .Q(
        \REG_MEM[10][5] ) );
  DFFRQX2M \REG_MEM_reg[10][6]  ( .D(n84), .CK(clk), .RN(n203), .Q(
        \REG_MEM[10][6] ) );
  DFFRQX2M \REG_MEM_reg[10][7]  ( .D(n85), .CK(clk), .RN(n203), .Q(
        \REG_MEM[10][7] ) );
  DFFRQX2M \REG_MEM_reg[6][1]  ( .D(n111), .CK(clk), .RN(n202), .Q(
        \REG_MEM[6][1] ) );
  DFFRQX2M \REG_MEM_reg[6][2]  ( .D(n112), .CK(clk), .RN(n202), .Q(
        \REG_MEM[6][2] ) );
  DFFRQX2M \REG_MEM_reg[6][3]  ( .D(n113), .CK(clk), .RN(n202), .Q(
        \REG_MEM[6][3] ) );
  DFFRQX2M \REG_MEM_reg[6][4]  ( .D(n114), .CK(clk), .RN(n202), .Q(
        \REG_MEM[6][4] ) );
  DFFRQX2M \REG_MEM_reg[6][5]  ( .D(n115), .CK(clk), .RN(n202), .Q(
        \REG_MEM[6][5] ) );
  DFFRQX2M \REG_MEM_reg[6][6]  ( .D(n116), .CK(clk), .RN(n202), .Q(
        \REG_MEM[6][6] ) );
  DFFRQX2M \REG_MEM_reg[6][7]  ( .D(n117), .CK(clk), .RN(n201), .Q(
        \REG_MEM[6][7] ) );
  DFFRQX2M \REG_MEM_reg[12][1]  ( .D(n63), .CK(clk), .RN(n203), .Q(
        \REG_MEM[12][1] ) );
  DFFRQX2M \REG_MEM_reg[12][2]  ( .D(n64), .CK(clk), .RN(n203), .Q(
        \REG_MEM[12][2] ) );
  DFFRQX2M \REG_MEM_reg[12][3]  ( .D(n65), .CK(clk), .RN(n203), .Q(
        \REG_MEM[12][3] ) );
  DFFRQX2M \REG_MEM_reg[12][4]  ( .D(n66), .CK(clk), .RN(n203), .Q(
        \REG_MEM[12][4] ) );
  DFFRQX2M \REG_MEM_reg[12][5]  ( .D(n67), .CK(clk), .RN(n203), .Q(
        \REG_MEM[12][5] ) );
  DFFRQX2M \REG_MEM_reg[12][6]  ( .D(n68), .CK(clk), .RN(n203), .Q(
        \REG_MEM[12][6] ) );
  DFFRQX2M \REG_MEM_reg[12][7]  ( .D(n69), .CK(clk), .RN(n203), .Q(
        \REG_MEM[12][7] ) );
  DFFRQX2M \REG_MEM_reg[8][1]  ( .D(n95), .CK(clk), .RN(n202), .Q(
        \REG_MEM[8][1] ) );
  DFFRQX2M \REG_MEM_reg[8][2]  ( .D(n96), .CK(clk), .RN(n202), .Q(
        \REG_MEM[8][2] ) );
  DFFRQX2M \REG_MEM_reg[8][3]  ( .D(n97), .CK(clk), .RN(n202), .Q(
        \REG_MEM[8][3] ) );
  DFFRQX2M \REG_MEM_reg[8][4]  ( .D(n98), .CK(clk), .RN(n202), .Q(
        \REG_MEM[8][4] ) );
  DFFRQX2M \REG_MEM_reg[8][5]  ( .D(n99), .CK(clk), .RN(n202), .Q(
        \REG_MEM[8][5] ) );
  DFFRQX2M \REG_MEM_reg[8][6]  ( .D(n100), .CK(clk), .RN(n202), .Q(
        \REG_MEM[8][6] ) );
  DFFRQX2M \REG_MEM_reg[8][7]  ( .D(n101), .CK(clk), .RN(n202), .Q(
        \REG_MEM[8][7] ) );
  DFFRQX2M \REG_MEM_reg[4][1]  ( .D(n127), .CK(clk), .RN(n201), .Q(
        \REG_MEM[4][1] ) );
  DFFRQX2M \REG_MEM_reg[4][2]  ( .D(n128), .CK(clk), .RN(n201), .Q(
        \REG_MEM[4][2] ) );
  DFFRQX2M \REG_MEM_reg[4][3]  ( .D(n129), .CK(clk), .RN(n201), .Q(
        \REG_MEM[4][3] ) );
  DFFRQX2M \REG_MEM_reg[4][4]  ( .D(n130), .CK(clk), .RN(n201), .Q(
        \REG_MEM[4][4] ) );
  DFFRQX2M \REG_MEM_reg[4][5]  ( .D(n131), .CK(clk), .RN(n201), .Q(
        \REG_MEM[4][5] ) );
  DFFRQX2M \REG_MEM_reg[4][6]  ( .D(n132), .CK(clk), .RN(n201), .Q(
        \REG_MEM[4][6] ) );
  DFFRQX2M \REG_MEM_reg[4][7]  ( .D(n133), .CK(clk), .RN(n201), .Q(
        \REG_MEM[4][7] ) );
  DFFRQX2M \REG_MEM_reg[1][4]  ( .D(n154), .CK(clk), .RN(n196), .Q(REG1[4]) );
  DFFRQX2M \REG_MEM_reg[1][6]  ( .D(n156), .CK(clk), .RN(n196), .Q(REG1[6]) );
  DFFRQX2M \REG_MEM_reg[1][7]  ( .D(n157), .CK(clk), .RN(n200), .Q(REG1[7]) );
  DFFRQX2M \REG_MEM_reg[1][1]  ( .D(n151), .CK(clk), .RN(n196), .Q(REG1[1]) );
  DFFRQX2M \REG_MEM_reg[1][2]  ( .D(n152), .CK(clk), .RN(n196), .Q(REG1[2]) );
  DFFRQX2M \REG_MEM_reg[1][3]  ( .D(n153), .CK(clk), .RN(n196), .Q(REG1[3]) );
  DFFRQX2M \REG_MEM_reg[1][5]  ( .D(n155), .CK(clk), .RN(n196), .Q(REG1[5]) );
  DFFRQX2M \REG_MEM_reg[0][1]  ( .D(n159), .CK(clk), .RN(n200), .Q(REG0[1]) );
  DFFRQX2M \REG_MEM_reg[0][2]  ( .D(n160), .CK(clk), .RN(n200), .Q(REG0[2]) );
  DFFRQX2M \REG_MEM_reg[0][3]  ( .D(n161), .CK(clk), .RN(n200), .Q(REG0[3]) );
  DFFRQX2M \REG_MEM_reg[0][4]  ( .D(n162), .CK(clk), .RN(n200), .Q(REG0[4]) );
  DFFRQX2M \REG_MEM_reg[0][5]  ( .D(n163), .CK(clk), .RN(n200), .Q(REG0[5]) );
  DFFRQX2M \REG_MEM_reg[0][6]  ( .D(n164), .CK(clk), .RN(n200), .Q(REG0[6]) );
  DFFRQX2M \REG_MEM_reg[2][1]  ( .D(n143), .CK(clk), .RN(n201), .Q(REG2[1]) );
  DFFRQX2M \REG_MEM_reg[3][3]  ( .D(n137), .CK(clk), .RN(n197), .Q(REG3[3]) );
  DFFRQX2M \REG_MEM_reg[3][4]  ( .D(n138), .CK(clk), .RN(n196), .Q(REG3[4]) );
  DFFRQX2M \REG_MEM_reg[3][1]  ( .D(n135), .CK(clk), .RN(n197), .Q(REG3[1]) );
  DFFRQX2M \REG_MEM_reg[3][6]  ( .D(n140), .CK(clk), .RN(n196), .Q(REG3[6]) );
  DFFRQX2M \REG_MEM_reg[3][2]  ( .D(n136), .CK(clk), .RN(n196), .Q(REG3[2]) );
  DFFRQX2M \REG_MEM_reg[3][7]  ( .D(n141), .CK(clk), .RN(n196), .Q(REG3[7]) );
  DFFRQX2M \adress_FF_reg[3]  ( .D(N15), .CK(clk), .RN(n196), .Q(adress_FF[3])
         );
  DFFRQX2M \adress_FF_reg[0]  ( .D(N12), .CK(clk), .RN(n204), .Q(adress_FF[0])
         );
  DFFRQX2M \adress_FF_reg[2]  ( .D(N14), .CK(clk), .RN(n204), .Q(adress_FF[2])
         );
  DFFRQX2M \adress_FF_reg[1]  ( .D(N13), .CK(clk), .RN(n204), .Q(adress_FF[1])
         );
  DFFRQX2M \REG_MEM_reg[2][2]  ( .D(n144), .CK(clk), .RN(n201), .Q(REG2[2]) );
  DFFRQX2M \REG_MEM_reg[2][4]  ( .D(n146), .CK(clk), .RN(n201), .Q(REG2[4]) );
  DFFRQX2M \REG_MEM_reg[2][3]  ( .D(n145), .CK(clk), .RN(n201), .Q(REG2[3]) );
  DFFSQX2M \REG_MEM_reg[2][7]  ( .D(n149), .CK(clk), .SN(n196), .Q(REG2[7]) );
  DFFRQX2M \REG_MEM_reg[13][0]  ( .D(n54), .CK(clk), .RN(n199), .Q(
        \REG_MEM[13][0] ) );
  DFFRQX2M \REG_MEM_reg[9][0]  ( .D(n86), .CK(clk), .RN(n198), .Q(
        \REG_MEM[9][0] ) );
  DFFRQX2M \REG_MEM_reg[5][0]  ( .D(n118), .CK(clk), .RN(n197), .Q(
        \REG_MEM[5][0] ) );
  DFFRQX2M \REG_MEM_reg[15][0]  ( .D(n38), .CK(clk), .RN(n200), .Q(
        \REG_MEM[15][0] ) );
  DFFRQX2M \REG_MEM_reg[11][0]  ( .D(n70), .CK(clk), .RN(n199), .Q(
        \REG_MEM[11][0] ) );
  DFFRQX2M \REG_MEM_reg[7][0]  ( .D(n102), .CK(clk), .RN(n198), .Q(
        \REG_MEM[7][0] ) );
  DFFRQX2M \REG_MEM_reg[14][0]  ( .D(n46), .CK(clk), .RN(n204), .Q(
        \REG_MEM[14][0] ) );
  DFFRQX2M \REG_MEM_reg[10][0]  ( .D(n78), .CK(clk), .RN(n203), .Q(
        \REG_MEM[10][0] ) );
  DFFRQX2M \REG_MEM_reg[6][0]  ( .D(n110), .CK(clk), .RN(n202), .Q(
        \REG_MEM[6][0] ) );
  DFFRQX2M \REG_MEM_reg[12][0]  ( .D(n62), .CK(clk), .RN(n204), .Q(
        \REG_MEM[12][0] ) );
  DFFRQX2M \REG_MEM_reg[8][0]  ( .D(n94), .CK(clk), .RN(n202), .Q(
        \REG_MEM[8][0] ) );
  DFFRQX2M \REG_MEM_reg[4][0]  ( .D(n126), .CK(clk), .RN(n201), .Q(
        \REG_MEM[4][0] ) );
  DFFRQX2M \REG_MEM_reg[1][0]  ( .D(n150), .CK(clk), .RN(n196), .Q(REG1[0]) );
  DFFRQX2M \REG_MEM_reg[0][0]  ( .D(n158), .CK(clk), .RN(n200), .Q(REG0[0]) );
  DFFRQX2M \REG_MEM_reg[3][0]  ( .D(n134), .CK(clk), .RN(n197), .Q(REG3[0]) );
  DFFSQX2M \REG_MEM_reg[2][0]  ( .D(n142), .CK(clk), .SN(n196), .Q(REG2[0]) );
  DFFRQX2M \REG_MEM_reg[2][5]  ( .D(n147), .CK(clk), .RN(n201), .Q(REG2[5]) );
  DFFRQX2M \REG_MEM_reg[2][6]  ( .D(n148), .CK(clk), .RN(n201), .Q(REG2[6]) );
  AND2X2M U3 ( .A(N58), .B(RdData_Valid), .Y(RdData[0]) );
  NOR2X2M U4 ( .A(n208), .B(n209), .Y(n13) );
  NOR2X2M U5 ( .A(adress_FF[1]), .B(adress_FF[2]), .Y(n24) );
  NOR2X2M U6 ( .A(n209), .B(adress_FF[2]), .Y(n21) );
  NOR2X2M U7 ( .A(n208), .B(adress_FF[1]), .Y(n18) );
  INVX2M U8 ( .A(n195), .Y(RdData_Valid) );
  INVX2M U9 ( .A(RdEn), .Y(n195) );
  INVX2M U10 ( .A(n191), .Y(n192) );
  INVX2M U11 ( .A(n191), .Y(n193) );
  INVX2M U12 ( .A(n188), .Y(n189) );
  BUFX2M U13 ( .A(n190), .Y(n191) );
  BUFX2M U14 ( .A(n187), .Y(n188) );
  NAND2X2M U15 ( .A(n30), .B(n13), .Y(n29) );
  NAND2X2M U16 ( .A(n16), .B(n13), .Y(n15) );
  BUFX2M U17 ( .A(n207), .Y(n196) );
  BUFX2M U18 ( .A(n206), .Y(n200) );
  BUFX2M U19 ( .A(n207), .Y(n197) );
  BUFX2M U20 ( .A(n207), .Y(n198) );
  BUFX2M U21 ( .A(n206), .Y(n199) );
  BUFX2M U22 ( .A(n206), .Y(n201) );
  BUFX2M U23 ( .A(n205), .Y(n202) );
  BUFX2M U24 ( .A(n205), .Y(n203) );
  BUFX2M U25 ( .A(n205), .Y(n204) );
  AND2X2M U26 ( .A(N57), .B(RdData_Valid), .Y(RdData[1]) );
  MX4X1M U27 ( .A(n8), .B(n6), .C(n7), .D(n5), .S0(N15), .S1(N14), .Y(N57) );
  AND2X2M U28 ( .A(N56), .B(RdData_Valid), .Y(RdData[2]) );
  AND2X2M U29 ( .A(RdData_Valid), .B(N51), .Y(RdData[7]) );
  AND2X2M U30 ( .A(N55), .B(RdData_Valid), .Y(RdData[3]) );
  AND2X2M U31 ( .A(N54), .B(RdData_Valid), .Y(RdData[4]) );
  AND2X2M U32 ( .A(N53), .B(RdData_Valid), .Y(RdData[5]) );
  AND2X2M U33 ( .A(N52), .B(RdData_Valid), .Y(RdData[6]) );
  INVX2M U34 ( .A(N12), .Y(n190) );
  INVX2M U35 ( .A(N13), .Y(n187) );
  NAND2X2M U36 ( .A(n28), .B(n24), .Y(n35) );
  NAND2X2M U37 ( .A(n28), .B(n21), .Y(n33) );
  NAND2X2M U38 ( .A(n28), .B(n18), .Y(n31) );
  NAND2X2M U39 ( .A(n24), .B(n14), .Y(n23) );
  NAND2X2M U40 ( .A(n21), .B(n14), .Y(n20) );
  NAND2X2M U41 ( .A(n18), .B(n14), .Y(n17) );
  NAND2X2M U42 ( .A(n30), .B(n24), .Y(n37) );
  NAND2X2M U43 ( .A(n30), .B(n21), .Y(n34) );
  NAND2X2M U44 ( .A(n30), .B(n18), .Y(n32) );
  NAND2X2M U45 ( .A(n24), .B(n16), .Y(n26) );
  NAND2X2M U46 ( .A(n21), .B(n16), .Y(n22) );
  NAND2X2M U47 ( .A(n18), .B(n16), .Y(n19) );
  NAND2X2M U48 ( .A(n28), .B(n13), .Y(n27) );
  NAND2X2M U49 ( .A(n13), .B(n14), .Y(n12) );
  INVX2M U50 ( .A(WrData[6]), .Y(n217) );
  INVX2M U51 ( .A(WrData[5]), .Y(n216) );
  INVX2M U52 ( .A(WrData[4]), .Y(n215) );
  INVX2M U53 ( .A(WrData[3]), .Y(n214) );
  INVX2M U54 ( .A(WrData[0]), .Y(n211) );
  INVX2M U55 ( .A(WrData[2]), .Y(n213) );
  INVX2M U56 ( .A(WrData[1]), .Y(n212) );
  AND2X2M U57 ( .A(n25), .B(n210), .Y(n16) );
  AND2X2M U58 ( .A(n36), .B(n210), .Y(n30) );
  BUFX2M U59 ( .A(RST), .Y(n206) );
  BUFX2M U60 ( .A(RST), .Y(n205) );
  BUFX2M U61 ( .A(RST), .Y(n207) );
  MX4X1M U62 ( .A(n4), .B(n2), .C(n3), .D(n1), .S0(N15), .S1(N14), .Y(N58) );
  MX4X1M U63 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n192), 
        .S1(N13), .Y(n4) );
  MX4X1M U64 ( .A(\REG_MEM[8][0] ), .B(\REG_MEM[9][0] ), .C(\REG_MEM[10][0] ), 
        .D(\REG_MEM[11][0] ), .S0(n192), .S1(N13), .Y(n2) );
  MX4X1M U65 ( .A(\REG_MEM[4][0] ), .B(\REG_MEM[5][0] ), .C(\REG_MEM[6][0] ), 
        .D(\REG_MEM[7][0] ), .S0(n192), .S1(N13), .Y(n3) );
  MX4X1M U66 ( .A(\REG_MEM[12][0] ), .B(\REG_MEM[13][0] ), .C(\REG_MEM[14][0] ), .D(\REG_MEM[15][0] ), .S0(n192), .S1(N13), .Y(n1) );
  MX4X1M U67 ( .A(n186), .B(n184), .C(n185), .D(n183), .S0(N15), .S1(N14), .Y(
        N51) );
  MX4X1M U68 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(N12), 
        .S1(N13), .Y(n186) );
  MX4X1M U69 ( .A(\REG_MEM[8][7] ), .B(\REG_MEM[9][7] ), .C(\REG_MEM[10][7] ), 
        .D(\REG_MEM[11][7] ), .S0(n192), .S1(N13), .Y(n184) );
  MX4X1M U70 ( .A(\REG_MEM[4][7] ), .B(\REG_MEM[5][7] ), .C(\REG_MEM[6][7] ), 
        .D(\REG_MEM[7][7] ), .S0(n192), .S1(N13), .Y(n185) );
  MX4X1M U71 ( .A(n166), .B(n10), .C(n11), .D(n9), .S0(N15), .S1(N14), .Y(N56)
         );
  MX4X1M U72 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n193), 
        .S1(n189), .Y(n166) );
  MX4X1M U73 ( .A(\REG_MEM[8][2] ), .B(\REG_MEM[9][2] ), .C(\REG_MEM[10][2] ), 
        .D(\REG_MEM[11][2] ), .S0(n193), .S1(n189), .Y(n10) );
  MX4X1M U74 ( .A(\REG_MEM[4][2] ), .B(\REG_MEM[5][2] ), .C(\REG_MEM[6][2] ), 
        .D(\REG_MEM[7][2] ), .S0(n193), .S1(n189), .Y(n11) );
  MX4X1M U75 ( .A(n170), .B(n168), .C(n169), .D(n167), .S0(N15), .S1(N14), .Y(
        N55) );
  MX4X1M U76 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n193), 
        .S1(n189), .Y(n170) );
  MX4X1M U77 ( .A(\REG_MEM[8][3] ), .B(\REG_MEM[9][3] ), .C(\REG_MEM[10][3] ), 
        .D(\REG_MEM[11][3] ), .S0(n193), .S1(n189), .Y(n168) );
  MX4X1M U78 ( .A(\REG_MEM[4][3] ), .B(\REG_MEM[5][3] ), .C(\REG_MEM[6][3] ), 
        .D(\REG_MEM[7][3] ), .S0(n193), .S1(n189), .Y(n169) );
  MX4X1M U79 ( .A(n174), .B(n172), .C(n173), .D(n171), .S0(N15), .S1(N14), .Y(
        N54) );
  MX4X1M U80 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(N12), 
        .S1(n189), .Y(n174) );
  MX4X1M U81 ( .A(\REG_MEM[8][4] ), .B(\REG_MEM[9][4] ), .C(\REG_MEM[10][4] ), 
        .D(\REG_MEM[11][4] ), .S0(n193), .S1(n189), .Y(n172) );
  MX4X1M U82 ( .A(\REG_MEM[4][4] ), .B(\REG_MEM[5][4] ), .C(\REG_MEM[6][4] ), 
        .D(\REG_MEM[7][4] ), .S0(n193), .S1(n189), .Y(n173) );
  MX4X1M U83 ( .A(n178), .B(n176), .C(n177), .D(n175), .S0(N15), .S1(N14), .Y(
        N53) );
  MX4X1M U84 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(N12), 
        .S1(N13), .Y(n178) );
  MX4X1M U85 ( .A(\REG_MEM[8][5] ), .B(\REG_MEM[9][5] ), .C(\REG_MEM[10][5] ), 
        .D(\REG_MEM[11][5] ), .S0(N12), .S1(N13), .Y(n176) );
  MX4X1M U86 ( .A(\REG_MEM[4][5] ), .B(\REG_MEM[5][5] ), .C(\REG_MEM[6][5] ), 
        .D(\REG_MEM[7][5] ), .S0(N12), .S1(N13), .Y(n177) );
  MX4X1M U87 ( .A(n182), .B(n180), .C(n181), .D(n179), .S0(N15), .S1(N14), .Y(
        N52) );
  MX4X1M U88 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(N12), 
        .S1(N13), .Y(n182) );
  MX4X1M U89 ( .A(\REG_MEM[8][6] ), .B(\REG_MEM[9][6] ), .C(\REG_MEM[10][6] ), 
        .D(\REG_MEM[11][6] ), .S0(N12), .S1(N13), .Y(n180) );
  MX4X1M U90 ( .A(\REG_MEM[4][6] ), .B(\REG_MEM[5][6] ), .C(\REG_MEM[6][6] ), 
        .D(\REG_MEM[7][6] ), .S0(N12), .S1(N13), .Y(n181) );
  MX4X1M U91 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n193), 
        .S1(N13), .Y(n8) );
  MX4X1M U92 ( .A(\REG_MEM[4][1] ), .B(\REG_MEM[5][1] ), .C(\REG_MEM[6][1] ), 
        .D(\REG_MEM[7][1] ), .S0(n193), .S1(n189), .Y(n7) );
  MX4X1M U93 ( .A(\REG_MEM[12][1] ), .B(\REG_MEM[13][1] ), .C(\REG_MEM[14][1] ), .D(\REG_MEM[15][1] ), .S0(n192), .S1(N13), .Y(n5) );
  MX4X1M U94 ( .A(\REG_MEM[12][2] ), .B(\REG_MEM[13][2] ), .C(\REG_MEM[14][2] ), .D(\REG_MEM[15][2] ), .S0(n193), .S1(n189), .Y(n9) );
  MX4X1M U95 ( .A(\REG_MEM[12][3] ), .B(\REG_MEM[13][3] ), .C(\REG_MEM[14][3] ), .D(\REG_MEM[15][3] ), .S0(n193), .S1(n189), .Y(n167) );
  MX4X1M U96 ( .A(\REG_MEM[12][4] ), .B(\REG_MEM[13][4] ), .C(\REG_MEM[14][4] ), .D(\REG_MEM[15][4] ), .S0(n193), .S1(n189), .Y(n171) );
  MX4X1M U97 ( .A(\REG_MEM[12][5] ), .B(\REG_MEM[13][5] ), .C(\REG_MEM[14][5] ), .D(\REG_MEM[15][5] ), .S0(n192), .S1(N13), .Y(n175) );
  MX4X1M U98 ( .A(\REG_MEM[12][6] ), .B(\REG_MEM[13][6] ), .C(\REG_MEM[14][6] ), .D(\REG_MEM[15][6] ), .S0(n193), .S1(N13), .Y(n179) );
  MX4X1M U99 ( .A(\REG_MEM[12][7] ), .B(\REG_MEM[13][7] ), .C(\REG_MEM[14][7] ), .D(\REG_MEM[15][7] ), .S0(n192), .S1(N13), .Y(n183) );
  MX4X1M U100 ( .A(\REG_MEM[8][1] ), .B(\REG_MEM[9][1] ), .C(\REG_MEM[10][1] ), 
        .D(\REG_MEM[11][1] ), .S0(n192), .S1(n189), .Y(n6) );
  INVX2M U101 ( .A(WrData[7]), .Y(n218) );
  OAI2BB2X1M U102 ( .B0(n12), .B1(n218), .A0N(\REG_MEM[15][7] ), .A1N(n12), 
        .Y(n45) );
  OAI2BB2X1M U103 ( .B0(n12), .B1(n217), .A0N(\REG_MEM[15][6] ), .A1N(n12), 
        .Y(n44) );
  OAI2BB2X1M U104 ( .B0(n12), .B1(n216), .A0N(\REG_MEM[15][5] ), .A1N(n12), 
        .Y(n43) );
  OAI2BB2X1M U105 ( .B0(n12), .B1(n215), .A0N(\REG_MEM[15][4] ), .A1N(n12), 
        .Y(n42) );
  OAI2BB2X1M U106 ( .B0(n12), .B1(n214), .A0N(\REG_MEM[15][3] ), .A1N(n12), 
        .Y(n41) );
  OAI2BB2X1M U107 ( .B0(n12), .B1(n213), .A0N(\REG_MEM[15][2] ), .A1N(n12), 
        .Y(n40) );
  OAI2BB2X1M U108 ( .B0(n12), .B1(n212), .A0N(\REG_MEM[15][1] ), .A1N(n12), 
        .Y(n39) );
  OAI2BB2X1M U109 ( .B0(n12), .B1(n211), .A0N(\REG_MEM[15][0] ), .A1N(n12), 
        .Y(n38) );
  OAI2BB2X1M U110 ( .B0(n218), .B1(n23), .A0N(\REG_MEM[9][7] ), .A1N(n23), .Y(
        n93) );
  OAI2BB2X1M U111 ( .B0(n217), .B1(n23), .A0N(\REG_MEM[9][6] ), .A1N(n23), .Y(
        n92) );
  OAI2BB2X1M U112 ( .B0(n216), .B1(n23), .A0N(\REG_MEM[9][5] ), .A1N(n23), .Y(
        n91) );
  OAI2BB2X1M U113 ( .B0(n215), .B1(n23), .A0N(\REG_MEM[9][4] ), .A1N(n23), .Y(
        n90) );
  OAI2BB2X1M U114 ( .B0(n214), .B1(n23), .A0N(\REG_MEM[9][3] ), .A1N(n23), .Y(
        n89) );
  OAI2BB2X1M U115 ( .B0(n213), .B1(n23), .A0N(\REG_MEM[9][2] ), .A1N(n23), .Y(
        n88) );
  OAI2BB2X1M U116 ( .B0(n212), .B1(n23), .A0N(\REG_MEM[9][1] ), .A1N(n23), .Y(
        n87) );
  OAI2BB2X1M U117 ( .B0(n211), .B1(n23), .A0N(\REG_MEM[9][0] ), .A1N(n23), .Y(
        n86) );
  OAI2BB2X1M U118 ( .B0(n218), .B1(n20), .A0N(\REG_MEM[11][7] ), .A1N(n20), 
        .Y(n77) );
  OAI2BB2X1M U119 ( .B0(n217), .B1(n20), .A0N(\REG_MEM[11][6] ), .A1N(n20), 
        .Y(n76) );
  OAI2BB2X1M U120 ( .B0(n216), .B1(n20), .A0N(\REG_MEM[11][5] ), .A1N(n20), 
        .Y(n75) );
  OAI2BB2X1M U121 ( .B0(n215), .B1(n20), .A0N(\REG_MEM[11][4] ), .A1N(n20), 
        .Y(n74) );
  OAI2BB2X1M U122 ( .B0(n214), .B1(n20), .A0N(\REG_MEM[11][3] ), .A1N(n20), 
        .Y(n73) );
  OAI2BB2X1M U123 ( .B0(n213), .B1(n20), .A0N(\REG_MEM[11][2] ), .A1N(n20), 
        .Y(n72) );
  OAI2BB2X1M U124 ( .B0(n212), .B1(n20), .A0N(\REG_MEM[11][1] ), .A1N(n20), 
        .Y(n71) );
  OAI2BB2X1M U125 ( .B0(n211), .B1(n20), .A0N(\REG_MEM[11][0] ), .A1N(n20), 
        .Y(n70) );
  OAI2BB2X1M U126 ( .B0(n218), .B1(n17), .A0N(\REG_MEM[13][7] ), .A1N(n17), 
        .Y(n61) );
  OAI2BB2X1M U127 ( .B0(n217), .B1(n17), .A0N(\REG_MEM[13][6] ), .A1N(n17), 
        .Y(n60) );
  OAI2BB2X1M U128 ( .B0(n216), .B1(n17), .A0N(\REG_MEM[13][5] ), .A1N(n17), 
        .Y(n59) );
  OAI2BB2X1M U129 ( .B0(n215), .B1(n17), .A0N(\REG_MEM[13][4] ), .A1N(n17), 
        .Y(n58) );
  OAI2BB2X1M U130 ( .B0(n214), .B1(n17), .A0N(\REG_MEM[13][3] ), .A1N(n17), 
        .Y(n57) );
  OAI2BB2X1M U131 ( .B0(n213), .B1(n17), .A0N(\REG_MEM[13][2] ), .A1N(n17), 
        .Y(n56) );
  OAI2BB2X1M U132 ( .B0(n212), .B1(n17), .A0N(\REG_MEM[13][1] ), .A1N(n17), 
        .Y(n55) );
  OAI2BB2X1M U133 ( .B0(n211), .B1(n17), .A0N(\REG_MEM[13][0] ), .A1N(n17), 
        .Y(n54) );
  OAI2BB2X1M U134 ( .B0(n218), .B1(n26), .A0N(\REG_MEM[8][7] ), .A1N(n26), .Y(
        n101) );
  OAI2BB2X1M U135 ( .B0(n217), .B1(n26), .A0N(\REG_MEM[8][6] ), .A1N(n26), .Y(
        n100) );
  OAI2BB2X1M U136 ( .B0(n216), .B1(n26), .A0N(\REG_MEM[8][5] ), .A1N(n26), .Y(
        n99) );
  OAI2BB2X1M U137 ( .B0(n215), .B1(n26), .A0N(\REG_MEM[8][4] ), .A1N(n26), .Y(
        n98) );
  OAI2BB2X1M U138 ( .B0(n214), .B1(n26), .A0N(\REG_MEM[8][3] ), .A1N(n26), .Y(
        n97) );
  OAI2BB2X1M U139 ( .B0(n213), .B1(n26), .A0N(\REG_MEM[8][2] ), .A1N(n26), .Y(
        n96) );
  OAI2BB2X1M U140 ( .B0(n212), .B1(n26), .A0N(\REG_MEM[8][1] ), .A1N(n26), .Y(
        n95) );
  OAI2BB2X1M U141 ( .B0(n211), .B1(n26), .A0N(\REG_MEM[8][0] ), .A1N(n26), .Y(
        n94) );
  OAI2BB2X1M U142 ( .B0(n218), .B1(n22), .A0N(\REG_MEM[10][7] ), .A1N(n22), 
        .Y(n85) );
  OAI2BB2X1M U143 ( .B0(n217), .B1(n22), .A0N(\REG_MEM[10][6] ), .A1N(n22), 
        .Y(n84) );
  OAI2BB2X1M U144 ( .B0(n216), .B1(n22), .A0N(\REG_MEM[10][5] ), .A1N(n22), 
        .Y(n83) );
  OAI2BB2X1M U145 ( .B0(n215), .B1(n22), .A0N(\REG_MEM[10][4] ), .A1N(n22), 
        .Y(n82) );
  OAI2BB2X1M U146 ( .B0(n214), .B1(n22), .A0N(\REG_MEM[10][3] ), .A1N(n22), 
        .Y(n81) );
  OAI2BB2X1M U147 ( .B0(n213), .B1(n22), .A0N(\REG_MEM[10][2] ), .A1N(n22), 
        .Y(n80) );
  OAI2BB2X1M U148 ( .B0(n212), .B1(n22), .A0N(\REG_MEM[10][1] ), .A1N(n22), 
        .Y(n79) );
  OAI2BB2X1M U149 ( .B0(n211), .B1(n22), .A0N(\REG_MEM[10][0] ), .A1N(n22), 
        .Y(n78) );
  OAI2BB2X1M U150 ( .B0(n218), .B1(n19), .A0N(\REG_MEM[12][7] ), .A1N(n19), 
        .Y(n69) );
  OAI2BB2X1M U151 ( .B0(n217), .B1(n19), .A0N(\REG_MEM[12][6] ), .A1N(n19), 
        .Y(n68) );
  OAI2BB2X1M U152 ( .B0(n216), .B1(n19), .A0N(\REG_MEM[12][5] ), .A1N(n19), 
        .Y(n67) );
  OAI2BB2X1M U153 ( .B0(n215), .B1(n19), .A0N(\REG_MEM[12][4] ), .A1N(n19), 
        .Y(n66) );
  OAI2BB2X1M U154 ( .B0(n214), .B1(n19), .A0N(\REG_MEM[12][3] ), .A1N(n19), 
        .Y(n65) );
  OAI2BB2X1M U155 ( .B0(n213), .B1(n19), .A0N(\REG_MEM[12][2] ), .A1N(n19), 
        .Y(n64) );
  OAI2BB2X1M U156 ( .B0(n212), .B1(n19), .A0N(\REG_MEM[12][1] ), .A1N(n19), 
        .Y(n63) );
  OAI2BB2X1M U157 ( .B0(n211), .B1(n19), .A0N(\REG_MEM[12][0] ), .A1N(n19), 
        .Y(n62) );
  OAI2BB2X1M U158 ( .B0(n218), .B1(n27), .A0N(\REG_MEM[7][7] ), .A1N(n27), .Y(
        n109) );
  OAI2BB2X1M U159 ( .B0(n217), .B1(n27), .A0N(\REG_MEM[7][6] ), .A1N(n27), .Y(
        n108) );
  OAI2BB2X1M U160 ( .B0(n216), .B1(n27), .A0N(\REG_MEM[7][5] ), .A1N(n27), .Y(
        n107) );
  OAI2BB2X1M U161 ( .B0(n215), .B1(n27), .A0N(\REG_MEM[7][4] ), .A1N(n27), .Y(
        n106) );
  OAI2BB2X1M U162 ( .B0(n214), .B1(n27), .A0N(\REG_MEM[7][3] ), .A1N(n27), .Y(
        n105) );
  OAI2BB2X1M U163 ( .B0(n213), .B1(n27), .A0N(\REG_MEM[7][2] ), .A1N(n27), .Y(
        n104) );
  OAI2BB2X1M U164 ( .B0(n212), .B1(n27), .A0N(\REG_MEM[7][1] ), .A1N(n27), .Y(
        n103) );
  OAI2BB2X1M U165 ( .B0(n211), .B1(n27), .A0N(\REG_MEM[7][0] ), .A1N(n27), .Y(
        n102) );
  OAI2BB2X1M U166 ( .B0(n218), .B1(n29), .A0N(\REG_MEM[6][7] ), .A1N(n29), .Y(
        n117) );
  OAI2BB2X1M U167 ( .B0(n217), .B1(n29), .A0N(\REG_MEM[6][6] ), .A1N(n29), .Y(
        n116) );
  OAI2BB2X1M U168 ( .B0(n216), .B1(n29), .A0N(\REG_MEM[6][5] ), .A1N(n29), .Y(
        n115) );
  OAI2BB2X1M U169 ( .B0(n215), .B1(n29), .A0N(\REG_MEM[6][4] ), .A1N(n29), .Y(
        n114) );
  OAI2BB2X1M U170 ( .B0(n214), .B1(n29), .A0N(\REG_MEM[6][3] ), .A1N(n29), .Y(
        n113) );
  OAI2BB2X1M U171 ( .B0(n213), .B1(n29), .A0N(\REG_MEM[6][2] ), .A1N(n29), .Y(
        n112) );
  OAI2BB2X1M U172 ( .B0(n212), .B1(n29), .A0N(\REG_MEM[6][1] ), .A1N(n29), .Y(
        n111) );
  OAI2BB2X1M U173 ( .B0(n211), .B1(n29), .A0N(\REG_MEM[6][0] ), .A1N(n29), .Y(
        n110) );
  OAI2BB2X1M U174 ( .B0(n218), .B1(n15), .A0N(\REG_MEM[14][7] ), .A1N(n15), 
        .Y(n53) );
  OAI2BB2X1M U175 ( .B0(n217), .B1(n15), .A0N(\REG_MEM[14][6] ), .A1N(n15), 
        .Y(n52) );
  OAI2BB2X1M U176 ( .B0(n216), .B1(n15), .A0N(\REG_MEM[14][5] ), .A1N(n15), 
        .Y(n51) );
  OAI2BB2X1M U177 ( .B0(n215), .B1(n15), .A0N(\REG_MEM[14][4] ), .A1N(n15), 
        .Y(n50) );
  OAI2BB2X1M U178 ( .B0(n214), .B1(n15), .A0N(\REG_MEM[14][3] ), .A1N(n15), 
        .Y(n49) );
  OAI2BB2X1M U179 ( .B0(n213), .B1(n15), .A0N(\REG_MEM[14][2] ), .A1N(n15), 
        .Y(n48) );
  OAI2BB2X1M U180 ( .B0(n212), .B1(n15), .A0N(\REG_MEM[14][1] ), .A1N(n15), 
        .Y(n47) );
  OAI2BB2X1M U181 ( .B0(n211), .B1(n15), .A0N(\REG_MEM[14][0] ), .A1N(n15), 
        .Y(n46) );
  OAI2BB2X1M U182 ( .B0(n218), .B1(n35), .A0N(REG1[7]), .A1N(n35), .Y(n157) );
  OAI2BB2X1M U183 ( .B0(n217), .B1(n35), .A0N(REG1[6]), .A1N(n35), .Y(n156) );
  OAI2BB2X1M U184 ( .B0(n216), .B1(n35), .A0N(REG1[5]), .A1N(n35), .Y(n155) );
  OAI2BB2X1M U185 ( .B0(n215), .B1(n35), .A0N(REG1[4]), .A1N(n35), .Y(n154) );
  OAI2BB2X1M U186 ( .B0(n214), .B1(n35), .A0N(REG1[3]), .A1N(n35), .Y(n153) );
  OAI2BB2X1M U187 ( .B0(n213), .B1(n35), .A0N(REG1[2]), .A1N(n35), .Y(n152) );
  OAI2BB2X1M U188 ( .B0(n212), .B1(n35), .A0N(REG1[1]), .A1N(n35), .Y(n151) );
  OAI2BB2X1M U189 ( .B0(n211), .B1(n35), .A0N(REG1[0]), .A1N(n35), .Y(n150) );
  OAI2BB2X1M U190 ( .B0(n218), .B1(n33), .A0N(REG3[7]), .A1N(n33), .Y(n141) );
  OAI2BB2X1M U191 ( .B0(n217), .B1(n33), .A0N(REG3[6]), .A1N(n33), .Y(n140) );
  OAI2BB2X1M U192 ( .B0(n215), .B1(n33), .A0N(REG3[4]), .A1N(n33), .Y(n138) );
  OAI2BB2X1M U193 ( .B0(n214), .B1(n33), .A0N(REG3[3]), .A1N(n33), .Y(n137) );
  OAI2BB2X1M U194 ( .B0(n213), .B1(n33), .A0N(REG3[2]), .A1N(n33), .Y(n136) );
  OAI2BB2X1M U195 ( .B0(n212), .B1(n33), .A0N(REG3[1]), .A1N(n33), .Y(n135) );
  OAI2BB2X1M U196 ( .B0(n211), .B1(n33), .A0N(REG3[0]), .A1N(n33), .Y(n134) );
  OAI2BB2X1M U197 ( .B0(n218), .B1(n31), .A0N(\REG_MEM[5][7] ), .A1N(n31), .Y(
        n125) );
  OAI2BB2X1M U198 ( .B0(n217), .B1(n31), .A0N(\REG_MEM[5][6] ), .A1N(n31), .Y(
        n124) );
  OAI2BB2X1M U199 ( .B0(n216), .B1(n31), .A0N(\REG_MEM[5][5] ), .A1N(n31), .Y(
        n123) );
  OAI2BB2X1M U200 ( .B0(n215), .B1(n31), .A0N(\REG_MEM[5][4] ), .A1N(n31), .Y(
        n122) );
  OAI2BB2X1M U201 ( .B0(n214), .B1(n31), .A0N(\REG_MEM[5][3] ), .A1N(n31), .Y(
        n121) );
  OAI2BB2X1M U202 ( .B0(n213), .B1(n31), .A0N(\REG_MEM[5][2] ), .A1N(n31), .Y(
        n120) );
  OAI2BB2X1M U203 ( .B0(n212), .B1(n31), .A0N(\REG_MEM[5][1] ), .A1N(n31), .Y(
        n119) );
  OAI2BB2X1M U204 ( .B0(n211), .B1(n31), .A0N(\REG_MEM[5][0] ), .A1N(n31), .Y(
        n118) );
  OAI2BB2X1M U205 ( .B0(n217), .B1(n37), .A0N(REG0[6]), .A1N(n37), .Y(n164) );
  OAI2BB2X1M U206 ( .B0(n216), .B1(n37), .A0N(REG0[5]), .A1N(n37), .Y(n163) );
  OAI2BB2X1M U207 ( .B0(n215), .B1(n37), .A0N(REG0[4]), .A1N(n37), .Y(n162) );
  OAI2BB2X1M U208 ( .B0(n214), .B1(n37), .A0N(REG0[3]), .A1N(n37), .Y(n161) );
  OAI2BB2X1M U209 ( .B0(n213), .B1(n37), .A0N(REG0[2]), .A1N(n37), .Y(n160) );
  OAI2BB2X1M U210 ( .B0(n212), .B1(n37), .A0N(REG0[1]), .A1N(n37), .Y(n159) );
  OAI2BB2X1M U211 ( .B0(n211), .B1(n37), .A0N(REG0[0]), .A1N(n37), .Y(n158) );
  OAI2BB2X1M U212 ( .B0(n217), .B1(n34), .A0N(REG2[6]), .A1N(n34), .Y(n148) );
  OAI2BB2X1M U213 ( .B0(n216), .B1(n34), .A0N(REG2[5]), .A1N(n34), .Y(n147) );
  OAI2BB2X1M U214 ( .B0(n215), .B1(n34), .A0N(REG2[4]), .A1N(n34), .Y(n146) );
  OAI2BB2X1M U215 ( .B0(n214), .B1(n34), .A0N(REG2[3]), .A1N(n34), .Y(n145) );
  OAI2BB2X1M U216 ( .B0(n213), .B1(n34), .A0N(REG2[2]), .A1N(n34), .Y(n144) );
  OAI2BB2X1M U217 ( .B0(n212), .B1(n34), .A0N(REG2[1]), .A1N(n34), .Y(n143) );
  OAI2BB2X1M U218 ( .B0(n218), .B1(n32), .A0N(\REG_MEM[4][7] ), .A1N(n32), .Y(
        n133) );
  OAI2BB2X1M U219 ( .B0(n217), .B1(n32), .A0N(\REG_MEM[4][6] ), .A1N(n32), .Y(
        n132) );
  OAI2BB2X1M U220 ( .B0(n216), .B1(n32), .A0N(\REG_MEM[4][5] ), .A1N(n32), .Y(
        n131) );
  OAI2BB2X1M U221 ( .B0(n215), .B1(n32), .A0N(\REG_MEM[4][4] ), .A1N(n32), .Y(
        n130) );
  OAI2BB2X1M U222 ( .B0(n214), .B1(n32), .A0N(\REG_MEM[4][3] ), .A1N(n32), .Y(
        n129) );
  OAI2BB2X1M U223 ( .B0(n213), .B1(n32), .A0N(\REG_MEM[4][2] ), .A1N(n32), .Y(
        n128) );
  OAI2BB2X1M U224 ( .B0(n212), .B1(n32), .A0N(\REG_MEM[4][1] ), .A1N(n32), .Y(
        n127) );
  OAI2BB2X1M U225 ( .B0(n211), .B1(n32), .A0N(\REG_MEM[4][0] ), .A1N(n32), .Y(
        n126) );
  OAI2BB2X1M U226 ( .B0(n216), .B1(n33), .A0N(REG3[5]), .A1N(n33), .Y(n139) );
  OAI2BB2X1M U227 ( .B0(n218), .B1(n34), .A0N(REG2[7]), .A1N(n34), .Y(n149) );
  OAI2BB2X1M U228 ( .B0(n211), .B1(n34), .A0N(REG2[0]), .A1N(n34), .Y(n142) );
  OAI2BB2X1M U229 ( .B0(n218), .B1(n37), .A0N(REG0[7]), .A1N(n37), .Y(n165) );
  AND2X2M U230 ( .A(n25), .B(adress_FF[0]), .Y(n14) );
  AND2X2M U231 ( .A(n36), .B(adress_FF[0]), .Y(n28) );
  NOR2BX2M U232 ( .AN(WrEn), .B(adress_FF[3]), .Y(n36) );
  AND2X2M U233 ( .A(adress_FF[3]), .B(WrEn), .Y(n25) );
  INVX2M U234 ( .A(adress_FF[2]), .Y(n208) );
  INVX2M U235 ( .A(adress_FF[1]), .Y(n209) );
  INVX2M U236 ( .A(adress_FF[0]), .Y(n210) );
endmodule


module ALU_TOP_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFHXLM U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVXLM U1 ( .A(B[0]), .Y(n9) );
  INVXLM U2 ( .A(B[4]), .Y(n5) );
  XNOR2X2M U3 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVXLM U4 ( .A(B[3]), .Y(n6) );
  INVXLM U5 ( .A(B[5]), .Y(n4) );
  INVXLM U6 ( .A(B[2]), .Y(n7) );
  INVXLM U7 ( .A(B[1]), .Y(n8) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(A[0]), .Y(n1) );
  INVXLM U10 ( .A(B[7]), .Y(n2) );
  INVX2M U11 ( .A(B[6]), .Y(n3) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_TOP_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b0), .CO(carry[1]), .S(SUM[0]) );
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
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
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

  ALU_TOP_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n15, n16, n13, n12, n11, n14, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n8), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n6), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n7), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  INVXLM U2 ( .A(A[6]), .Y(n25) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U4 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U6 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n6) );
  AND2X2M U7 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n7) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n8) );
  AND2X2M U9 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U10 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVXLM U11 ( .A(B[3]), .Y(n36) );
  INVXLM U12 ( .A(B[0]), .Y(n39) );
  INVXLM U13 ( .A(B[2]), .Y(n37) );
  INVXLM U14 ( .A(A[4]), .Y(n27) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U18 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U19 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n12) );
  AND2X2M U20 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U21 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n14) );
  XNOR2X2M U22 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U23 ( .A(\SUMB[7][1] ), .Y(n17) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  INVX2M U25 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  INVX2M U27 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U28 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U29 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U30 ( .A(\ab[0][2] ), .Y(n18) );
  INVX2M U31 ( .A(\ab[0][5] ), .Y(n21) );
  CLKXOR2X2M U32 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  AND2X2M U33 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n15) );
  AND2X2M U34 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  CLKXOR2X2M U35 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U36 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U37 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U38 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U39 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U40 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U41 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVXLM U42 ( .A(B[4]), .Y(n35) );
  INVX2M U43 ( .A(B[1]), .Y(n38) );
  INVX2M U44 ( .A(A[5]), .Y(n26) );
  INVX2M U45 ( .A(A[2]), .Y(n29) );
  INVX2M U46 ( .A(A[3]), .Y(n28) );
  INVXLM U47 ( .A(B[5]), .Y(n34) );
  INVX2M U48 ( .A(A[1]), .Y(n30) );
  INVX2M U49 ( .A(A[0]), .Y(n31) );
  INVXLM U50 ( .A(B[7]), .Y(n32) );
  INVXLM U51 ( .A(A[7]), .Y(n24) );
  INVX2M U52 ( .A(B[6]), .Y(n33) );
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
endmodule


module ALU_TOP_DW_div_uns_1 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][2] , \u_div/SumTmp[1][3] ,
         \u_div/SumTmp[1][4] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][2] ,
         \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] , \u_div/SumTmp[2][5] ,
         \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] , \u_div/SumTmp[3][3] ,
         \u_div/SumTmp[3][4] , \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] ,
         \u_div/SumTmp[4][2] , \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] ,
         \u_div/SumTmp[5][1] , \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] ,
         \u_div/SumTmp[6][1] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
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
         \u_div/PartRem[1][7] , \u_div/PartRem[2][3] , \u_div/PartRem[2][4] ,
         \u_div/PartRem[2][5] , \u_div/PartRem[2][6] , \u_div/PartRem[4][1] ,
         \u_div/PartRem[5][1] , \u_div/PartRem[6][1] , n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121;
  wire   [7:0] \u_div/BInv ;

  ADDFHX8M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), 
        .S(\u_div/SumTmp[5][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), 
        .S(\u_div/SumTmp[1][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_5_2  ( .A(n1), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_4  ( .A(n62), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] )
         );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_3  ( .A(n65), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), 
        .S(\u_div/SumTmp[4][1] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_2_4  ( .A(n66), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_2_5  ( .A(n63), .B(\u_div/BInv [5]), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_2  ( .A(n67), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), 
        .S(\u_div/SumTmp[1][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_3  ( .A(n61), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/CryTmp[6][1] ), .B(
        \u_div/BInv [1]), .CI(n74), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_0  ( .A(a[5]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[5][1] ), .S(\u_div/SumTmp[5][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_0  ( .A(a[4]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[4][1] ), .S(\u_div/SumTmp[4][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_0  ( .A(a[3]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[3][1] ), .S(\u_div/SumTmp[3][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_0  ( .A(a[2]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[2][1] ), .S(\u_div/SumTmp[2][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_0  ( .A(a[1]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[1][1] ), .S(\u_div/SumTmp[1][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_0  ( .A(a[0]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[0][1] ) );
  CLKINVX16M U1 ( .A(a[6]), .Y(n48) );
  NAND2XLM U2 ( .A(\u_div/BInv [0]), .B(1'b1), .Y(n50) );
  CLKNAND2X4M U3 ( .A(a[6]), .B(1'b1), .Y(n51) );
  NAND2X6M U4 ( .A(n55), .B(\u_div/BInv [1]), .Y(n35) );
  NAND2X4M U5 ( .A(n55), .B(\u_div/CryTmp[2][1] ), .Y(n34) );
  MXI2X6M U6 ( .A(n76), .B(n75), .S0(n110), .Y(n74) );
  CLKNAND2X2M U7 ( .A(\u_div/CryTmp[3][5] ), .B(n120), .Y(n119) );
  MX2X2M U8 ( .A(n65), .B(\u_div/SumTmp[4][3] ), .S0(quotient[4]), .Y(n62) );
  NOR2X5M U9 ( .A(n105), .B(n104), .Y(n103) );
  MXI2X2M U10 ( .A(n78), .B(n4), .S0(quotient[2]), .Y(n77) );
  NAND2X1M U11 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/BInv [1]), .Y(n18) );
  NAND2X1M U12 ( .A(n80), .B(\u_div/CryTmp[1][1] ), .Y(n8) );
  MXI2X4M U13 ( .A(n82), .B(n81), .S0(n83), .Y(n80) );
  NAND2X4M U14 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/CryTmp[3][1] ), .Y(n19)
         );
  INVX3M U15 ( .A(n89), .Y(\u_div/PartRem[2][3] ) );
  MXI2X1M U16 ( .A(n85), .B(\u_div/SumTmp[2][2] ), .S0(quotient[2]), .Y(n89)
         );
  NAND3X4M U17 ( .A(n22), .B(n23), .C(n24), .Y(\u_div/CryTmp[3][3] ) );
  NAND2X3M U18 ( .A(\u_div/BInv [2]), .B(\u_div/CryTmp[3][2] ), .Y(n24) );
  MXI2X3M U19 ( .A(n68), .B(n69), .S0(quotient[5]), .Y(n67) );
  XNOR2XLM U20 ( .A(n29), .B(\u_div/CryTmp[1][6] ), .Y(n6) );
  INVXLM U21 ( .A(n119), .Y(quotient[3]) );
  NAND3X4M U22 ( .A(n36), .B(n35), .C(n34), .Y(\u_div/CryTmp[2][2] ) );
  CLKNAND2X4M U23 ( .A(\u_div/BInv [0]), .B(a[6]), .Y(n49) );
  INVX6M U24 ( .A(b[0]), .Y(\u_div/BInv [0]) );
  INVX6M U25 ( .A(b[7]), .Y(\u_div/BInv [7]) );
  INVX6M U26 ( .A(n54), .Y(\u_div/PartRem[6][1] ) );
  MXI2X4M U27 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(n54)
         );
  NOR2X12M U28 ( .A(b[5]), .B(b[4]), .Y(n117) );
  XNOR2XLM U29 ( .A(n21), .B(\u_div/CryTmp[3][2] ), .Y(n2) );
  NAND2X4M U30 ( .A(n18), .B(n15), .Y(\u_div/CryTmp[3][2] ) );
  CLKINVX3M U31 ( .A(\u_div/CryTmp[2][6] ), .Y(n107) );
  NAND2X1M U32 ( .A(n85), .B(\u_div/BInv [2]), .Y(n47) );
  NAND2X1M U33 ( .A(\u_div/CryTmp[2][2] ), .B(\u_div/BInv [2]), .Y(n46) );
  MXI2X6M U34 ( .A(n56), .B(n57), .S0(n103), .Y(n55) );
  NAND2X1M U35 ( .A(\u_div/CryTmp[2][3] ), .B(n64), .Y(n41) );
  NAND2XLM U36 ( .A(n67), .B(n116), .Y(n16) );
  CLKMX2X4M U37 ( .A(n77), .B(\u_div/SumTmp[1][2] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][3] ) );
  XOR2XLM U38 ( .A(n77), .B(\u_div/BInv [2]), .Y(n10) );
  CLKNAND2X2M U39 ( .A(n77), .B(\u_div/BInv [2]), .Y(n11) );
  NAND2X1M U40 ( .A(n77), .B(\u_div/CryTmp[1][2] ), .Y(n12) );
  MXI2X4M U41 ( .A(n109), .B(n108), .S0(n52), .Y(\u_div/PartRem[1][1] ) );
  NAND3X4M U42 ( .A(n28), .B(n27), .C(n26), .Y(\u_div/CryTmp[1][6] ) );
  NAND2X3M U43 ( .A(\u_div/CryTmp[1][5] ), .B(\u_div/BInv [5]), .Y(n27) );
  INVX24M U44 ( .A(b[3]), .Y(\u_div/BInv [3]) );
  NAND2X6M U45 ( .A(n117), .B(n118), .Y(n101) );
  CLKINVX8M U46 ( .A(n106), .Y(n118) );
  INVX3M U47 ( .A(\u_div/CryTmp[3][5] ), .Y(n105) );
  NAND2X6M U48 ( .A(n111), .B(n112), .Y(n110) );
  INVX3M U49 ( .A(\u_div/CryTmp[5][3] ), .Y(n96) );
  MXI2X3M U50 ( .A(n92), .B(n93), .S0(n94), .Y(\u_div/PartRem[5][1] ) );
  MXI2X4M U51 ( .A(n98), .B(n99), .S0(n100), .Y(\u_div/PartRem[4][1] ) );
  XNOR2XLM U52 ( .A(n33), .B(n55), .Y(n4) );
  BUFX6M U53 ( .A(n70), .Y(n1) );
  MX2X1M U54 ( .A(n74), .B(\u_div/SumTmp[6][1] ), .S0(quotient[6]), .Y(n70) );
  NAND2XLM U55 ( .A(\u_div/PartRem[5][1] ), .B(n116), .Y(n58) );
  INVX3M U56 ( .A(n121), .Y(quotient[2]) );
  CLKNAND2X2M U57 ( .A(n80), .B(\u_div/BInv [1]), .Y(n7) );
  XNOR3XLM U58 ( .A(n80), .B(\u_div/BInv [1]), .C(\u_div/CryTmp[1][1] ), .Y(n5) );
  NAND2X4M U59 ( .A(n115), .B(\u_div/BInv [3]), .Y(n95) );
  NAND2X2M U60 ( .A(n64), .B(\u_div/BInv [3]), .Y(n43) );
  XOR2XLM U61 ( .A(\u_div/BInv [3]), .B(n64), .Y(n40) );
  NOR2X4M U62 ( .A(n101), .B(n102), .Y(n100) );
  XOR2XLM U63 ( .A(\u_div/BInv [0]), .B(a[7]), .Y(n76) );
  CLKINVX2M U64 ( .A(n88), .Y(\u_div/PartRem[2][4] ) );
  NAND2XLM U65 ( .A(\u_div/BInv [1]), .B(\u_div/CryTmp[3][1] ), .Y(n20) );
  NAND3X2M U66 ( .A(n47), .B(n46), .C(n45), .Y(\u_div/CryTmp[2][3] ) );
  NAND2X1M U67 ( .A(\u_div/CryTmp[2][3] ), .B(\u_div/BInv [3]), .Y(n42) );
  NAND3X2M U68 ( .A(n51), .B(n50), .C(n49), .Y(\u_div/CryTmp[6][1] ) );
  INVX5M U69 ( .A(b[2]), .Y(\u_div/BInv [2]) );
  INVXLM U70 ( .A(b[5]), .Y(\u_div/BInv [5]) );
  CLKINVX6M U71 ( .A(n95), .Y(n112) );
  NOR2X2M U72 ( .A(n96), .B(n95), .Y(n94) );
  OR2X2M U73 ( .A(n107), .B(n106), .Y(n83) );
  NAND2BX4M U74 ( .AN(b[6]), .B(\u_div/BInv [7]), .Y(n106) );
  INVX4M U75 ( .A(\u_div/CryTmp[4][4] ), .Y(n102) );
  INVX6M U76 ( .A(n101), .Y(n115) );
  NAND3X2M U77 ( .A(n43), .B(n42), .C(n41), .Y(\u_div/CryTmp[2][4] ) );
  INVX2M U78 ( .A(n104), .Y(n120) );
  NAND2BX2M U79 ( .AN(n102), .B(n115), .Y(n116) );
  NAND2X2M U80 ( .A(\u_div/CryTmp[1][5] ), .B(\u_div/PartRem[2][5] ), .Y(n26)
         );
  INVX2M U81 ( .A(n86), .Y(\u_div/PartRem[2][6] ) );
  INVX2M U82 ( .A(b[6]), .Y(\u_div/BInv [6]) );
  INVX4M U83 ( .A(n113), .Y(quotient[6]) );
  NAND2X2M U84 ( .A(\u_div/CryTmp[6][2] ), .B(n71), .Y(n113) );
  NAND2X2M U85 ( .A(b[0]), .B(n79), .Y(\u_div/CryTmp[7][1] ) );
  INVX2M U86 ( .A(a[7]), .Y(n79) );
  INVX2M U87 ( .A(n114), .Y(quotient[5]) );
  XNOR2X1M U88 ( .A(n25), .B(\u_div/CryTmp[1][5] ), .Y(n3) );
  NAND2X2M U89 ( .A(\u_div/BInv [1]), .B(\u_div/CryTmp[1][1] ), .Y(n9) );
  NAND3X2M U90 ( .A(n7), .B(n8), .C(n9), .Y(\u_div/CryTmp[1][2] ) );
  CLKXOR2X2M U91 ( .A(n10), .B(\u_div/CryTmp[1][2] ), .Y(\u_div/SumTmp[1][2] )
         );
  NAND2X2M U92 ( .A(\u_div/BInv [2]), .B(\u_div/CryTmp[1][2] ), .Y(n13) );
  NAND3X2M U93 ( .A(n11), .B(n12), .C(n13), .Y(\u_div/CryTmp[1][3] ) );
  NAND2X2M U94 ( .A(n19), .B(n20), .Y(n14) );
  INVX2M U95 ( .A(n14), .Y(n15) );
  NAND2X2M U96 ( .A(\u_div/SumTmp[4][2] ), .B(quotient[4]), .Y(n17) );
  NAND2X2M U97 ( .A(n16), .B(n17), .Y(n61) );
  INVX2M U98 ( .A(n116), .Y(quotient[4]) );
  MX2X2M U99 ( .A(n61), .B(\u_div/SumTmp[3][3] ), .S0(quotient[3]), .Y(n66) );
  XOR3XLM U100 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/BInv [1]), .C(
        \u_div/CryTmp[3][1] ), .Y(\u_div/SumTmp[3][1] ) );
  XOR2XLM U101 ( .A(n60), .B(\u_div/BInv [2]), .Y(n21) );
  NAND2X2M U102 ( .A(n60), .B(\u_div/BInv [2]), .Y(n22) );
  NAND2X2M U103 ( .A(n60), .B(\u_div/CryTmp[3][2] ), .Y(n23) );
  XOR2XLM U104 ( .A(\u_div/BInv [5]), .B(\u_div/PartRem[2][5] ), .Y(n25) );
  NAND2X1M U105 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/BInv [5]), .Y(n28) );
  CLKINVX2M U106 ( .A(n87), .Y(\u_div/PartRem[2][5] ) );
  NAND2X2M U107 ( .A(\u_div/CryTmp[1][6] ), .B(\u_div/PartRem[2][6] ), .Y(n30)
         );
  NAND2X2M U108 ( .A(\u_div/CryTmp[1][6] ), .B(\u_div/BInv [6]), .Y(n31) );
  XOR2XLM U109 ( .A(\u_div/BInv [6]), .B(\u_div/PartRem[2][6] ), .Y(n29) );
  CLKNAND2X2M U110 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/BInv [6]), .Y(n32)
         );
  NAND3X4M U111 ( .A(n32), .B(n31), .C(n30), .Y(\u_div/CryTmp[1][7] ) );
  XOR2XLM U112 ( .A(\u_div/BInv [1]), .B(\u_div/CryTmp[2][1] ), .Y(n33) );
  NAND2XLM U113 ( .A(\u_div/CryTmp[2][1] ), .B(\u_div/BInv [1]), .Y(n36) );
  CLKINVX4M U114 ( .A(b[1]), .Y(\u_div/BInv [1]) );
  NAND2X1M U115 ( .A(\u_div/CryTmp[2][2] ), .B(n85), .Y(n45) );
  NAND2X1M U116 ( .A(\u_div/CryTmp[0][7] ), .B(\u_div/PartRem[1][7] ), .Y(n37)
         );
  NAND2XLM U117 ( .A(\u_div/CryTmp[0][7] ), .B(\u_div/BInv [7]), .Y(n38) );
  NAND2XLM U118 ( .A(\u_div/PartRem[1][7] ), .B(\u_div/BInv [7]), .Y(n39) );
  NAND3X1M U119 ( .A(n39), .B(n38), .C(n37), .Y(quotient[0]) );
  XOR2XLM U120 ( .A(n40), .B(\u_div/CryTmp[2][3] ), .Y(\u_div/SumTmp[2][3] )
         );
  XOR2XLM U121 ( .A(\u_div/BInv [2]), .B(n85), .Y(n44) );
  XOR2XLM U122 ( .A(n44), .B(\u_div/CryTmp[2][2] ), .Y(\u_div/SumTmp[2][2] )
         );
  NAND2BX1M U123 ( .AN(n96), .B(n112), .Y(n114) );
  NAND2BX1M U124 ( .AN(n107), .B(n118), .Y(n121) );
  CLKXOR2X2M U125 ( .A(n48), .B(\u_div/BInv [0]), .Y(\u_div/SumTmp[6][0] ) );
  INVXLM U126 ( .A(\u_div/PartRem[6][1] ), .Y(n68) );
  CLKAND2X6M U127 ( .A(n73), .B(\u_div/CryTmp[1][7] ), .Y(quotient[1]) );
  INVXLM U128 ( .A(n60), .Y(n91) );
  NAND2X2M U129 ( .A(n58), .B(n59), .Y(n60) );
  NAND2X1M U130 ( .A(\u_div/SumTmp[4][1] ), .B(quotient[4]), .Y(n59) );
  NOR3BX4M U131 ( .AN(\u_div/CryTmp[7][1] ), .B(b[2]), .C(b[1]), .Y(n111) );
  CLKMX2X2M U132 ( .A(n1), .B(\u_div/SumTmp[5][2] ), .S0(quotient[5]), .Y(n65)
         );
  INVXLM U133 ( .A(n55), .Y(n78) );
  CLKNAND2X4M U134 ( .A(\u_div/CryTmp[1][7] ), .B(n53), .Y(n52) );
  INVXLM U135 ( .A(b[7]), .Y(n53) );
  MX2XLM U136 ( .A(n62), .B(\u_div/SumTmp[3][4] ), .S0(quotient[3]), .Y(n63)
         );
  INVXLM U137 ( .A(a[7]), .Y(n75) );
  INVX2M U138 ( .A(\u_div/SumTmp[3][0] ), .Y(n57) );
  INVX2M U139 ( .A(a[3]), .Y(n56) );
  MXI2XLM U140 ( .A(n64), .B(\u_div/SumTmp[2][3] ), .S0(quotient[2]), .Y(n88)
         );
  MXI2XLM U141 ( .A(n66), .B(\u_div/SumTmp[2][4] ), .S0(quotient[2]), .Y(n87)
         );
  MXI2X2M U142 ( .A(n91), .B(n2), .S0(quotient[3]), .Y(n64) );
  INVX3M U143 ( .A(\u_div/SumTmp[5][1] ), .Y(n69) );
  MX2XLM U144 ( .A(\u_div/SumTmp[3][1] ), .B(\u_div/PartRem[4][1] ), .S0(n119), 
        .Y(n85) );
  INVXLM U145 ( .A(a[4]), .Y(n98) );
  INVXLM U146 ( .A(b[7]), .Y(n73) );
  MXI2X1M U147 ( .A(n88), .B(n90), .S0(quotient[1]), .Y(\u_div/PartRem[1][5] )
         );
  INVX2M U148 ( .A(\u_div/SumTmp[1][4] ), .Y(n90) );
  MXI2XLM U149 ( .A(n63), .B(\u_div/SumTmp[2][5] ), .S0(quotient[2]), .Y(n86)
         );
  AND2X1M U150 ( .A(n112), .B(\u_div/BInv [2]), .Y(n71) );
  MXI2XLM U151 ( .A(n89), .B(n97), .S0(quotient[1]), .Y(\u_div/PartRem[1][4] )
         );
  INVX2M U152 ( .A(\u_div/SumTmp[1][3] ), .Y(n97) );
  INVX2M U153 ( .A(\u_div/SumTmp[4][0] ), .Y(n99) );
  INVX2M U154 ( .A(a[5]), .Y(n92) );
  INVX2M U155 ( .A(\u_div/SumTmp[5][0] ), .Y(n93) );
  MXI2XLM U156 ( .A(n86), .B(n6), .S0(quotient[1]), .Y(\u_div/PartRem[1][7] )
         );
  MXI2XLM U157 ( .A(n87), .B(n3), .S0(quotient[1]), .Y(\u_div/PartRem[1][6] )
         );
  NAND2XLM U158 ( .A(n118), .B(\u_div/BInv [5]), .Y(n104) );
  CLKINVX1M U159 ( .A(b[4]), .Y(\u_div/BInv [4]) );
  INVX2M U160 ( .A(a[2]), .Y(n81) );
  INVX2M U161 ( .A(\u_div/SumTmp[2][0] ), .Y(n82) );
  INVX2M U162 ( .A(a[1]), .Y(n108) );
  INVX2M U163 ( .A(\u_div/SumTmp[1][0] ), .Y(n109) );
  MXI2X6M U164 ( .A(n84), .B(n5), .S0(quotient[1]), .Y(\u_div/PartRem[1][2] )
         );
  INVXLM U165 ( .A(n80), .Y(n84) );
  INVXLM U166 ( .A(n110), .Y(quotient[7]) );
endmodule


module ALU_TOP ( A, B, ALU_FUN, clk, RST, Enable, OUT_VALID, ALU_OUT );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input clk, RST, Enable;
  output OUT_VALID;
  wire   N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99,
         N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, n35, n36, n37, n38, n39, n40, n41,
         n42, n48, n55, n56, n105, n108, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n43, n44, n45, n46, n47,
         n49, n50, n51, n52, n53, n54, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n106,
         n107, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168;
  wire   [7:0] A_FF;
  wire   [7:0] B_FF;

  ALU_TOP_DW01_sub_0 sub_28 ( .A({1'b0, n18, n17, n16, n15, A_FF[3:0]}), .B({
        1'b0, n12, n11, B_FF[5], n14, n13, B_FF[2], n5, B_FF[0]}), .CI(1'b0), 
        .DIFF({N103, N102, N101, N100, N99, N98, N97, N96, N95}) );
  ALU_TOP_DW01_add_0 add_22 ( .A({1'b0, n18, n17, n16, n15, A_FF[3:0]}), .B({
        1'b0, n12, n11, B_FF[5], n14, n13, B_FF[2], n4, B_FF[0]}), .CI(1'b0), 
        .SUM({N94, N93, N92, N91, N90, N89, N88, N87, N86}) );
  ALU_TOP_DW02_mult_0 mult_34 ( .A({n18, n17, n16, n15, A_FF[3:0]}), .B({n12, 
        n10, B_FF[5], n14, n13, B_FF[2], n5, B_FF[0]}), .TC(1'b0), .PRODUCT({
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, 
        N107, N106, N105, N104}) );
  ALU_TOP_DW_div_uns_1 div_40 ( .a({n18, n17, n16, n15, A_FF[3:0]}), .b({n12, 
        B_FF[6:5], n14, n13, B_FF[2:0]}), .quotient({N127, N126, N125, N124, 
        N123, N122, N121, N120}) );
  DFFRQX2M \A_FF_reg[0]  ( .D(A[0]), .CK(clk), .RN(RST), .Q(A_FF[0]) );
  DFFRQX2M \A_FF_reg[1]  ( .D(A[1]), .CK(clk), .RN(RST), .Q(A_FF[1]) );
  DFFRQX2M \A_FF_reg[2]  ( .D(A[2]), .CK(clk), .RN(RST), .Q(A_FF[2]) );
  DFFRQX2M \A_FF_reg[3]  ( .D(A[3]), .CK(clk), .RN(RST), .Q(A_FF[3]) );
  DFFRQX2M \A_FF_reg[4]  ( .D(A[4]), .CK(clk), .RN(RST), .Q(A_FF[4]) );
  DFFRQX2M \A_FF_reg[5]  ( .D(A[5]), .CK(clk), .RN(RST), .Q(A_FF[5]) );
  DFFRQX2M \A_FF_reg[6]  ( .D(A[6]), .CK(clk), .RN(RST), .Q(A_FF[6]) );
  DFFRHQX2M \B_FF_reg[5]  ( .D(B[5]), .CK(clk), .RN(RST), .Q(B_FF[5]) );
  DFFRHQX2M \B_FF_reg[7]  ( .D(B[7]), .CK(clk), .RN(RST), .Q(B_FF[7]) );
  DFFRHQX2M \B_FF_reg[4]  ( .D(B[4]), .CK(clk), .RN(RST), .Q(B_FF[4]) );
  DFFRHQX2M \B_FF_reg[0]  ( .D(B[0]), .CK(clk), .RN(RST), .Q(B_FF[0]) );
  DFFRHQX2M \A_FF_reg[7]  ( .D(A[7]), .CK(clk), .RN(RST), .Q(A_FF[7]) );
  DFFRHQX1M \B_FF_reg[1]  ( .D(B[1]), .CK(clk), .RN(RST), .Q(B_FF[1]) );
  DFFRHQX1M \B_FF_reg[6]  ( .D(B[6]), .CK(clk), .RN(RST), .Q(B_FF[6]) );
  DFFRHQX1M \B_FF_reg[3]  ( .D(B[3]), .CK(clk), .RN(RST), .Q(B_FF[3]) );
  DFFRHQX1M \B_FF_reg[2]  ( .D(B[2]), .CK(clk), .RN(RST), .Q(B_FF[2]) );
  BUFX10M U3 ( .A(B_FF[7]), .Y(n12) );
  BUFX10M U4 ( .A(A_FF[6]), .Y(n17) );
  BUFX10M U7 ( .A(B_FF[4]), .Y(n14) );
  BUFX10M U8 ( .A(B_FF[3]), .Y(n13) );
  INVX2M U9 ( .A(n58), .Y(n50) );
  INVX2M U10 ( .A(n57), .Y(n47) );
  BUFX2M U11 ( .A(B_FF[6]), .Y(n10) );
  BUFX2M U12 ( .A(B_FF[6]), .Y(n11) );
  BUFX2M U13 ( .A(B_FF[1]), .Y(n5) );
  BUFX2M U14 ( .A(A_FF[5]), .Y(n16) );
  BUFX2M U15 ( .A(B_FF[1]), .Y(n4) );
  BUFX4M U16 ( .A(A_FF[7]), .Y(n18) );
  OR2X2M U17 ( .A(n78), .B(n77), .Y(n3) );
  NOR2X2M U18 ( .A(n3), .B(N120), .Y(n79) );
  MX2XLM U19 ( .A(n168), .B(n55), .S0(n13), .Y(n104) );
  MX2XLM U20 ( .A(n38), .B(n39), .S0(B_FF[0]), .Y(n75) );
  MX2XLM U21 ( .A(n168), .B(n55), .S0(B_FF[0]), .Y(n67) );
  AOI211X2M U22 ( .A0(n81), .A1(n80), .B0(n79), .C0(n167), .Y(ALU_OUT[0]) );
  AO22XLM U23 ( .A0(B_FF[2]), .A1(n31), .B0(n5), .B1(n28), .Y(n51) );
  AOI211XLM U24 ( .A0(n15), .A1(n163), .B0(n131), .C0(n130), .Y(n135) );
  AOI222XLM U25 ( .A0(n16), .A1(n34), .B0(n60), .B1(n33), .C0(n15), .C1(n32), 
        .Y(n43) );
  MX2XLM U26 ( .A(n119), .B(n118), .S0(n15), .Y(n120) );
  AO2B2XLM U27 ( .B0(n13), .B1(n29), .A0(n14), .A1N(n15), .Y(n26) );
  NAND2BXLM U28 ( .AN(n18), .B(n12), .Y(n58) );
  AOI21XLM U29 ( .A0(n93), .A1(n92), .B0(n167), .Y(ALU_OUT[1]) );
  AOI211X1M U30 ( .A0(A_FF[0]), .A1(n163), .B0(n89), .C0(n88), .Y(n93) );
  AOI211XLM U31 ( .A0(n15), .A1(n144), .B0(n113), .C0(n112), .Y(n114) );
  AOI211XLM U32 ( .A0(n16), .A1(n144), .B0(n123), .C0(n122), .Y(n124) );
  MX2XLM U33 ( .A(n129), .B(n128), .S0(n16), .Y(n130) );
  INVX2M U34 ( .A(n39), .Y(n152) );
  INVX2M U35 ( .A(n38), .Y(n150) );
  INVX2M U36 ( .A(n159), .Y(n147) );
  INVX2M U37 ( .A(n83), .Y(n148) );
  OAI2BB1X2M U38 ( .A0N(N119), .A1N(n41), .B0(n42), .Y(ALU_OUT[15]) );
  OAI2BB1X2M U39 ( .A0N(N118), .A1N(n41), .B0(n42), .Y(ALU_OUT[14]) );
  OAI2BB1X2M U40 ( .A0N(N116), .A1N(n41), .B0(n42), .Y(ALU_OUT[12]) );
  OAI2BB1X2M U41 ( .A0N(N117), .A1N(n41), .B0(n42), .Y(ALU_OUT[13]) );
  OAI2BB1X2M U42 ( .A0N(N113), .A1N(n41), .B0(n42), .Y(ALU_OUT[9]) );
  OAI2BB1X2M U43 ( .A0N(N114), .A1N(n41), .B0(n42), .Y(ALU_OUT[10]) );
  OAI2BB1X2M U44 ( .A0N(N115), .A1N(n41), .B0(n42), .Y(ALU_OUT[11]) );
  OR2X2M U45 ( .A(n162), .B(n19), .Y(n38) );
  OAI21X2M U46 ( .A0(n25), .A1(n19), .B0(n105), .Y(n168) );
  OR2X2M U47 ( .A(n20), .B(n25), .Y(n39) );
  NOR2X2M U48 ( .A(n35), .B(n167), .Y(OUT_VALID) );
  NOR4X1M U49 ( .A(n36), .B(n168), .C(n163), .D(n165), .Y(n35) );
  NAND4X2M U50 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  NAND2BX2M U51 ( .AN(n162), .B(n164), .Y(n40) );
  OR2X2M U52 ( .A(n165), .B(n21), .Y(n19) );
  NAND2X2M U53 ( .A(n40), .B(n105), .Y(n56) );
  INVX2M U54 ( .A(n20), .Y(n164) );
  OR2X2M U55 ( .A(n22), .B(n25), .Y(n83) );
  OR2X2M U56 ( .A(n25), .B(n66), .Y(n159) );
  INVX2M U57 ( .A(n37), .Y(n144) );
  NOR2X2M U58 ( .A(n162), .B(n66), .Y(n6) );
  NOR2X2M U59 ( .A(n162), .B(n22), .Y(n7) );
  INVX2M U60 ( .A(n108), .Y(n66) );
  AO22XLM U61 ( .A0(N90), .A1(n6), .B0(N124), .B1(n148), .Y(n121) );
  AO22X1M U62 ( .A0(N110), .A1(n7), .B0(N101), .B1(n147), .Y(n143) );
  OAI2B11X2M U63 ( .A1N(N103), .A0(n159), .B0(n38), .C0(n158), .Y(n48) );
  INVX2M U64 ( .A(n168), .Y(n158) );
  NAND3X2M U65 ( .A(ALU_FUN[3]), .B(n164), .C(n166), .Y(n37) );
  NOR2X2M U66 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n108) );
  INVX2M U67 ( .A(n63), .Y(n62) );
  NAND3X2M U68 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .C(n108), .Y(n105) );
  OR2X2M U69 ( .A(ALU_FUN[3]), .B(n166), .Y(n25) );
  OR2X2M U70 ( .A(ALU_FUN[0]), .B(ALU_FUN[3]), .Y(n162) );
  AND3X2M U71 ( .A(ALU_FUN[3]), .B(n166), .C(n108), .Y(n55) );
  INVX2M U72 ( .A(n82), .Y(n163) );
  NAND3BX2M U73 ( .AN(n166), .B(ALU_FUN[3]), .C(n164), .Y(n82) );
  INVX2M U74 ( .A(ALU_FUN[2]), .Y(n165) );
  OR2X2M U75 ( .A(ALU_FUN[1]), .B(n165), .Y(n20) );
  INVX2M U76 ( .A(ALU_FUN[0]), .Y(n166) );
  AO22X1M U77 ( .A0(N108), .A1(n7), .B0(N99), .B1(n147), .Y(n123) );
  INVX2M U78 ( .A(ALU_FUN[1]), .Y(n21) );
  NAND2X2M U79 ( .A(Enable), .B(n48), .Y(n42) );
  INVX2M U80 ( .A(Enable), .Y(n167) );
  NOR2X2M U81 ( .A(n24), .B(n23), .Y(n81) );
  NAND2X2M U82 ( .A(n74), .B(n83), .Y(n24) );
  NAND2X2M U83 ( .A(n75), .B(n76), .Y(n23) );
  OR2X2M U84 ( .A(ALU_FUN[2]), .B(n21), .Y(n22) );
  AND2X2M U85 ( .A(n7), .B(Enable), .Y(n41) );
  NAND3X2M U86 ( .A(n76), .B(n75), .C(n74), .Y(n78) );
  AO22XLM U87 ( .A0(N87), .A1(n6), .B0(N121), .B1(n148), .Y(n89) );
  AO22XLM U88 ( .A0(N89), .A1(n6), .B0(N123), .B1(n148), .Y(n111) );
  AOI31X2M U89 ( .A0(n157), .A1(n156), .A2(n155), .B0(n167), .Y(ALU_OUT[7]) );
  AOI211X2M U90 ( .A0(n17), .A1(n163), .B0(n154), .C0(n153), .Y(n155) );
  AOI22X1M U91 ( .A0(N102), .A1(n147), .B0(N111), .B1(n7), .Y(n157) );
  AOI21X2M U92 ( .A0(n146), .A1(n145), .B0(n167), .Y(ALU_OUT[6]) );
  AOI211X2M U93 ( .A0(n16), .A1(n163), .B0(n141), .C0(n140), .Y(n146) );
  AO22XLM U94 ( .A0(N92), .A1(n6), .B0(N126), .B1(n148), .Y(n141) );
  OA21X2M U95 ( .A0(n161), .A1(n160), .B0(Enable), .Y(ALU_OUT[8]) );
  AO22X1M U96 ( .A0(N112), .A1(n7), .B0(N94), .B1(n6), .Y(n161) );
  MXI2XLM U97 ( .A(n8), .B(n9), .S0(n18), .Y(n153) );
  NOR2X2M U98 ( .A(n150), .B(n149), .Y(n8) );
  NOR2X2M U99 ( .A(n152), .B(n151), .Y(n9) );
  AOI21X2M U100 ( .A0(n135), .A1(n134), .B0(n167), .Y(ALU_OUT[5]) );
  AOI211X2M U101 ( .A0(n17), .A1(n144), .B0(n133), .C0(n132), .Y(n134) );
  AO22XLM U102 ( .A0(N91), .A1(n6), .B0(N125), .B1(n148), .Y(n131) );
  INVX2M U103 ( .A(n17), .Y(n45) );
  INVX2M U104 ( .A(n52), .Y(n44) );
  OR2X2M U105 ( .A(n152), .B(n117), .Y(n118) );
  OR2X2M U106 ( .A(n150), .B(n116), .Y(n119) );
  MX2XLM U107 ( .A(n55), .B(n56), .S0(n14), .Y(n117) );
  MX2X2M U108 ( .A(n139), .B(n138), .S0(n17), .Y(n140) );
  OR2X2M U109 ( .A(n152), .B(n137), .Y(n138) );
  OR2X2M U110 ( .A(n150), .B(n136), .Y(n139) );
  MX2XLM U111 ( .A(n55), .B(n56), .S0(n11), .Y(n137) );
  MX2X2M U112 ( .A(n168), .B(n55), .S0(B_FF[2]), .Y(n94) );
  MX2XLM U113 ( .A(n168), .B(n55), .S0(n14), .Y(n116) );
  MX2X2M U114 ( .A(n168), .B(n55), .S0(n5), .Y(n84) );
  MX2X2M U115 ( .A(n168), .B(n55), .S0(n10), .Y(n136) );
  INVX2M U116 ( .A(n77), .Y(n80) );
  AO22X1M U117 ( .A0(N109), .A1(n7), .B0(N100), .B1(n147), .Y(n133) );
  MX2X2M U118 ( .A(n150), .B(n152), .S0(n11), .Y(n142) );
  MX2XLM U119 ( .A(n64), .B(n63), .S0(ALU_FUN[0]), .Y(n65) );
  AND4X2M U120 ( .A(n62), .B(n61), .C(n60), .D(n59), .Y(n64) );
  INVX2M U121 ( .A(n51), .Y(n61) );
  AND3X2M U122 ( .A(n58), .B(n57), .C(n54), .Y(n59) );
  INVX2M U123 ( .A(n26), .Y(n60) );
  NAND2X2M U124 ( .A(N104), .B(n7), .Y(n76) );
  OR2X2M U125 ( .A(n37), .B(n28), .Y(n74) );
  MX2X2M U126 ( .A(n150), .B(n152), .S0(B_FF[2]), .Y(n100) );
  MX2X2M U127 ( .A(n150), .B(n152), .S0(n4), .Y(n90) );
  OR2X2M U128 ( .A(n16), .B(n34), .Y(n52) );
  NAND2BX2M U129 ( .AN(n17), .B(n10), .Y(n57) );
  AO22X1M U130 ( .A0(N107), .A1(n7), .B0(N98), .B1(n147), .Y(n113) );
  INVXLM U131 ( .A(n14), .Y(n32) );
  AOI211X2M U132 ( .A0(A_FF[2]), .A1(n144), .B0(n91), .C0(n90), .Y(n92) );
  AO22X1M U133 ( .A0(N105), .A1(n7), .B0(N96), .B1(n147), .Y(n91) );
  BUFX2M U134 ( .A(A_FF[4]), .Y(n15) );
  AOI21X2M U135 ( .A0(n103), .A1(n102), .B0(n167), .Y(ALU_OUT[2]) );
  AOI211X2M U136 ( .A0(A_FF[3]), .A1(n144), .B0(n101), .C0(n100), .Y(n102) );
  AOI211X2M U137 ( .A0(A_FF[1]), .A1(n163), .B0(n99), .C0(n98), .Y(n103) );
  AO22X1M U138 ( .A0(N106), .A1(n7), .B0(N97), .B1(n147), .Y(n101) );
  AOI21X2M U139 ( .A0(n115), .A1(n114), .B0(n167), .Y(ALU_OUT[3]) );
  AOI211X2M U140 ( .A0(A_FF[2]), .A1(n163), .B0(n111), .C0(n110), .Y(n115) );
  MX2XLM U141 ( .A(n150), .B(n152), .S0(n13), .Y(n112) );
  AOI21X2M U142 ( .A0(n125), .A1(n124), .B0(n167), .Y(ALU_OUT[4]) );
  AOI211X2M U143 ( .A0(A_FF[3]), .A1(n163), .B0(n121), .C0(n120), .Y(n125) );
  MX2XLM U144 ( .A(n150), .B(n152), .S0(n14), .Y(n122) );
  OAI222XLM U145 ( .A0(B_FF[2]), .A1(n31), .B0(n30), .B1(n51), .C0(n13), .C1(
        n29), .Y(n33) );
  OA22XLM U146 ( .A0(B_FF[0]), .A1(n27), .B0(n5), .B1(n28), .Y(n30) );
  INVX2M U147 ( .A(A_FF[0]), .Y(n27) );
  OAI2B11X2M U148 ( .A1N(N95), .A0(n159), .B0(n73), .C0(n72), .Y(n77) );
  AOI21X2M U149 ( .A0(N86), .A1(n6), .B0(n71), .Y(n72) );
  NAND4BX1M U150 ( .AN(ALU_FUN[2]), .B(n65), .C(ALU_FUN[1]), .D(ALU_FUN[3]), 
        .Y(n73) );
  MX2X2M U151 ( .A(n70), .B(n69), .S0(A_FF[0]), .Y(n71) );
  OR2X2M U152 ( .A(n152), .B(n68), .Y(n69) );
  OR2X2M U153 ( .A(n150), .B(n67), .Y(n70) );
  MX2XLM U154 ( .A(n55), .B(n56), .S0(B_FF[0]), .Y(n68) );
  INVX2M U155 ( .A(A_FF[2]), .Y(n31) );
  MX2X2M U156 ( .A(n97), .B(n96), .S0(A_FF[2]), .Y(n98) );
  OR2X2M U157 ( .A(n152), .B(n95), .Y(n96) );
  OR2X2M U158 ( .A(n150), .B(n94), .Y(n97) );
  MX2XLM U159 ( .A(n55), .B(n56), .S0(B_FF[2]), .Y(n95) );
  MX2X2M U160 ( .A(n109), .B(n107), .S0(A_FF[3]), .Y(n110) );
  OR2X2M U161 ( .A(n152), .B(n106), .Y(n107) );
  OR2X2M U162 ( .A(n150), .B(n104), .Y(n109) );
  MX2XLM U163 ( .A(n55), .B(n56), .S0(n13), .Y(n106) );
  OR2X2M U164 ( .A(n152), .B(n127), .Y(n128) );
  OR2X2M U165 ( .A(n150), .B(n126), .Y(n129) );
  MX2XLM U166 ( .A(n55), .B(n56), .S0(B_FF[5]), .Y(n127) );
  MX2X2M U167 ( .A(n87), .B(n86), .S0(A_FF[1]), .Y(n88) );
  OR2X2M U168 ( .A(n152), .B(n85), .Y(n86) );
  OR2X2M U169 ( .A(n150), .B(n84), .Y(n87) );
  MX2XLM U170 ( .A(n55), .B(n56), .S0(n4), .Y(n85) );
  MX2XLM U171 ( .A(n168), .B(n55), .S0(B_FF[5]), .Y(n126) );
  INVX2M U172 ( .A(A_FF[1]), .Y(n28) );
  INVX2M U173 ( .A(A_FF[3]), .Y(n29) );
  MX2XLM U174 ( .A(n150), .B(n152), .S0(B_FF[5]), .Y(n132) );
  INVXLM U175 ( .A(B_FF[5]), .Y(n34) );
  OA21X2M U176 ( .A0(A_FF[0]), .A1(n53), .B0(n52), .Y(n54) );
  INVXLM U177 ( .A(B_FF[0]), .Y(n53) );
  MX2XLM U178 ( .A(n38), .B(n39), .S0(n12), .Y(n156) );
  MX2XLM U179 ( .A(n168), .B(n55), .S0(n12), .Y(n149) );
  MX2XLM U180 ( .A(n55), .B(n56), .S0(n12), .Y(n151) );
  OAI32XLM U181 ( .A0(n50), .A1(n49), .A2(n47), .B0(n12), .B1(n46), .Y(n63) );
  AO21XLM U182 ( .A0(n18), .A1(n163), .B0(n48), .Y(n160) );
  INVXLM U183 ( .A(n18), .Y(n46) );
  AO22XLM U184 ( .A0(N88), .A1(n6), .B0(N122), .B1(n148), .Y(n99) );
  AO22XLM U185 ( .A0(N93), .A1(n6), .B0(N127), .B1(n148), .Y(n154) );
  OA22X1M U186 ( .A0(n11), .A1(n45), .B0(n44), .B1(n43), .Y(n49) );
  AOI211XLM U187 ( .A0(n18), .A1(n144), .B0(n143), .C0(n142), .Y(n145) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX8M U0 ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error, sys_Error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN;
  output UART_TX_O, parity_error, framing_error, sys_Error;
  wire   SYNC_UART_RST, SYNC_REF_RST, UART_RX_V_OUT, UART_RX_V_SYNC,
         UART_TX_VLD, UART_TX_CLK, UART_TX_Busy_PULSE, FIFO_FULL,
         UART_TX_V_SYNC, UART_TX_Busy, UART_RX_CLK, RF_RdData_VLD, RF_WrEn,
         RF_RdEn, ALU_EN, ALU_OUT_VLD, CLKG_EN, ALU_CLK, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10;
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

  RST_SYNC_NUM_STAGES2_0 U0_RST_SYNC ( .RST(RST_N), .CLK(UART_CLK), .SYNC_RST(
        SYNC_UART_RST) );
  RST_SYNC_NUM_STAGES2_1 U1_RST_SYNC ( .RST(RST_N), .CLK(REF_CLK), .SYNC_RST(
        SYNC_REF_RST) );
  DATA_SYNC_BUS_WIDTH8_NUM_STAGES2 U0_ref_sync ( .Unsync_bus(UART_RX_OUT), 
        .CLK(REF_CLK), .RST(n7), .bus_enable(UART_RX_V_OUT), .enable_pulse(
        UART_RX_V_SYNC), .sync_bus(UART_RX_SYNC) );
  FIFO_TOP_DATA_WIDTH8_pointer_width4 U0_UART_FIFO ( .W_CLK(REF_CLK), .W_RST(
        n7), .W_INC(UART_TX_VLD), .R_CLK(UART_TX_CLK), .R_RST(n9), .R_INC(
        UART_TX_Busy_PULSE), .WR_DATA(UART_TX_IN), .FULL(FIFO_FULL), .RD_DATA(
        UART_TX_SYNC), .EMPTY(UART_TX_V_SYNC) );
  PULSE_GEN U0_PULSE_GEN ( .LVL_SIG(UART_TX_Busy), .CLK(UART_TX_CLK), .RST(n9), 
        .PULSE_SIG(UART_TX_Busy_PULSE) );
  CLK_Divider_0 U0_ClkDiv ( .I_ref_clk(UART_CLK), .I_rst_n(n9), .I_clk_en(1'b1), .I_div_ratio(DIV_RATIO), .O_div_clk(UART_TX_CLK) );
  CLKDIV_MUX U0_CLKDIV_MUX ( .IN(UART_Config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  CLK_Divider_1 U1_ClkDiv ( .I_ref_clk(UART_CLK), .I_rst_n(n9), .I_clk_en(1'b1), .I_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, DIV_RATIO_RX[3:0]}), .O_div_clk(
        UART_RX_CLK) );
  UART U0_UART ( .RST(n9), .TX_CLK(UART_TX_CLK), .RX_CLK(UART_RX_CLK), 
        .parity_enable(UART_Config[0]), .parity_type(UART_Config[1]), 
        .Prescale(UART_Config[7:2]), .RX_IN(n2), .TX_IN_P_Data(UART_TX_SYNC), 
        .TX_IN_Valid(n1), .RX_OUT_P_Data(UART_RX_OUT), .RX_OUT_Valid(
        UART_RX_V_OUT), .TX_OUT(UART_TX_O), .busy(UART_TX_Busy), 
        .parity_error(parity_error), .framing_error(framing_error) );
  System_CTRL U0_SYS_CTRL ( .ALU_OUT(ALU_OUT), .OUT_VALID(ALU_OUT_VLD), 
        .Rx_P_Data(UART_RX_SYNC), .Rx_D_VLD(UART_RX_V_SYNC), .Rd_Data(
        RF_RdData), .Rd_Data_VALID(n6), .CLK(REF_CLK), .RST(n7), .FIFO_FULL(
        FIFO_FULL), .ALU_EN(ALU_EN), .ALU_FUN(ALU_FUN), .Gate_En(CLKG_EN), 
        .out_address(RF_Address), .Wr_En(RF_WrEn), .Rd_En(RF_RdEn), .Wr_Data(
        RF_WrData), .Wr_Data_FIFO(UART_TX_IN), .WR_INC(UART_TX_VLD), 
        .sys_Error(sys_Error) );
  REG_FILE U0_RegFile ( .adress({RF_Address[3:2], n4, n3}), .WrData(RF_WrData), 
        .clk(REF_CLK), .RST(n7), .WrEn(RF_WrEn), .RdEn(n5), .RdData(RF_RdData), 
        .REG0(Operand_A), .REG1(Operand_B), .REG2(UART_Config), .REG3(
        DIV_RATIO), .RdData_Valid(RF_RdData_VLD) );
  ALU_TOP U0_ALU ( .A(Operand_A), .B(Operand_B), .ALU_FUN(ALU_FUN), .clk(
        ALU_CLK), .RST(n7), .Enable(ALU_EN), .OUT_VALID(ALU_OUT_VLD), 
        .ALU_OUT(ALU_OUT) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(CLKG_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK)
         );
  BUFX2M U2 ( .A(RF_RdData_VLD), .Y(n6) );
  BUFX2M U3 ( .A(RF_RdEn), .Y(n5) );
  INVX2M U4 ( .A(UART_TX_V_SYNC), .Y(n1) );
  BUFX2M U5 ( .A(RF_Address[0]), .Y(n3) );
  BUFX2M U6 ( .A(RF_Address[1]), .Y(n4) );
  INVX4M U7 ( .A(n8), .Y(n7) );
  INVX2M U8 ( .A(SYNC_REF_RST), .Y(n8) );
  BUFX2M U9 ( .A(UART_RX_IN), .Y(n2) );
  INVX4M U10 ( .A(n10), .Y(n9) );
  INVX2M U11 ( .A(SYNC_UART_RST), .Y(n10) );
endmodule
