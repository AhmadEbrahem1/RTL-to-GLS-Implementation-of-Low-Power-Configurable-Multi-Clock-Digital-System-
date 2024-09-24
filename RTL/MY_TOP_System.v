module SYSTEM_TOP(






);

//CLOCK Domain 1:
CLK_GATE CLK_GATE_u0
REG_FILE REG_FILE_u1
ALU_TOP	 ALU_TOP_u2
//4) SYS_CTRL:



//CLOCK Domain 2:
TOP_TX_UART TX_UART_u4
TOP_RX_UART RX_UART_u5
CLK_Divider CLK_Divider_u6
PULSE_GEN PULSE_GEN_u7

//synchronizers:
RST_SYNC RST_SYNC_u8
BUS_WIDTH BUS_WIDTH_u9

//fifo









endmodule