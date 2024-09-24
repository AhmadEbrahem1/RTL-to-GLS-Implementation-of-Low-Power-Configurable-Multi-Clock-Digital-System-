
module SYS_TOP # ( parameter DATA_WIDTH = 8 ,  RF_ADDR = 4 )

(
 input   wire                          RST_N,
 input   wire                          UART_CLK,
 input   wire                          REF_CLK,
 input   wire                          UART_RX_IN,
 output  wire                          UART_TX_O,
 output  wire                          parity_error,
 output  wire                          framing_error,
 output	wire							sys_Error
);


wire                                   SYNC_UART_RST,
                                       SYNC_REF_RST;
									   
wire					               UART_TX_CLK;
wire					               UART_RX_CLK;


wire      [DATA_WIDTH-1:0]             Operand_A,
                                       Operand_B,
									   UART_Config,
									   DIV_RATIO;
									   
wire      [DATA_WIDTH-1:0]             DIV_RATIO_RX;
									   
wire      [DATA_WIDTH-1:0]             UART_RX_OUT;
wire         						   UART_RX_V_OUT;
wire      [DATA_WIDTH-1:0]			   UART_RX_SYNC;
wire                                   UART_RX_V_SYNC;

wire      [DATA_WIDTH-1:0]             UART_TX_IN;
wire        						   UART_TX_VLD,UART_TX_VLD_PULSE;
wire      [DATA_WIDTH-1:0]             UART_TX_SYNC;
wire        						   UART_TX_V_SYNC;

wire                                   UART_TX_Busy;	
wire                                   UART_TX_Busy_PULSE;	
									   
wire                                   RF_WrEn;
wire                                   RF_RdEn;
wire      [RF_ADDR-1:0]                RF_Address;
wire      [DATA_WIDTH-1:0]             RF_WrData;
wire      [DATA_WIDTH-1:0]             RF_RdData;
wire                                   RF_RdData_VLD;									   

wire                                   CLKG_EN;
wire                                   ALU_EN;
wire      [3:0]                        ALU_FUN; 
wire      [DATA_WIDTH*2-1:0]           ALU_OUT;
wire                                   ALU_OUT_VLD; 
									   
wire                                   ALU_CLK ;								   

wire                                   FIFO_FULL ;
	
wire                                   CLKDIV_EN ;
								   
///********************************************************///
//////////////////// Reset synchronizers /////////////////////
///********************************************************///

RST_SYNC # (.NUM_STAGES(2)) U0_RST_SYNC (
.RST(RST_N),
.CLK(UART_CLK),
.SYNC_RST(SYNC_UART_RST)
);

RST_SYNC # (.NUM_STAGES(2)) U1_RST_SYNC (
.RST(RST_N),
.CLK(REF_CLK),
.SYNC_RST(SYNC_REF_RST)
);

///********************************************************///
////////////////////// Data Synchronizer /////////////////////
///********************************************************///

DATA_SYNC # (.BUS_WIDTH(8) ,.NUM_STAGES(2)  ) U0_ref_sync (
.CLK(REF_CLK),
.RST(SYNC_REF_RST),
.Unsync_bus(UART_RX_OUT),
.bus_enable(UART_RX_V_OUT),
.sync_bus(UART_RX_SYNC),
.enable_pulse(UART_RX_V_SYNC)
);

///********************************************************///
///////////////////////// Async FIFO /////////////////////////
///********************************************************///

FIFO_TOP #(.DATA_WIDTH(DATA_WIDTH) , .pointer_width(4)  ) U0_UART_FIFO (
.W_CLK(REF_CLK),
.W_RST(SYNC_REF_RST),  
.W_INC(UART_TX_VLD),
.WR_DATA(UART_TX_IN),             
.R_CLK(UART_TX_CLK),              
.R_RST(SYNC_UART_RST),              
.R_INC(UART_TX_Busy_PULSE),              
.RD_DATA(UART_TX_SYNC),             
.FULL(FIFO_FULL),               
.EMPTY(UART_TX_V_SYNC)               
);

///********************************************************///
//////////////////////// Pulse Generator /////////////////////
///********************************************************///

PULSE_GEN U0_PULSE_GEN (
.CLK(UART_TX_CLK),
.RST(SYNC_UART_RST),
.LVL_SIG(UART_TX_Busy),
.PULSE_SIG(UART_TX_Busy_PULSE)
);

///********************************************************///
//////////// Clock Divider for UART_TX Clock /////////////////
///********************************************************///

CLK_Divider U0_ClkDiv (
.I_ref_clk(UART_CLK),             
.I_rst_n(SYNC_UART_RST),                 
.I_clk_en(CLKDIV_EN),               
.I_div_ratio(DIV_RATIO),           
.O_div_clk(UART_TX_CLK)             
);

///********************************************************///
//////////// Custom Mux Clock /////////////////
///********************************************************///

CLKDIV_MUX U0_CLKDIV_MUX (
.IN(UART_Config[7:2]),
.OUT(DIV_RATIO_RX)
);

///********************************************************///
//////////// Clock Divider for UART_RX Clock /////////////////
///********************************************************///

CLK_Divider U1_ClkDiv (
.I_ref_clk(UART_CLK),             
.I_rst_n(SYNC_UART_RST),                 
.I_clk_en(CLKDIV_EN),               
.I_div_ratio(DIV_RATIO_RX),           
.O_div_clk(UART_RX_CLK)             
);

///********************************************************///
/////////////////////////// UART /////////////////////////////
///********************************************************///

UART  U0_UART (
.RST(SYNC_UART_RST),
.TX_CLK(UART_TX_CLK),
.RX_CLK(UART_RX_CLK),
.parity_enable(UART_Config[0]),
.parity_type(UART_Config[1]),
.Prescale(UART_Config[7:2]),
.RX_IN(UART_RX_IN),
.RX_OUT_P_Data(UART_RX_OUT),                      
.RX_OUT_Valid(UART_RX_V_OUT),                      
.TX_IN_P_Data(UART_TX_SYNC), 
.TX_IN_Valid(!UART_TX_V_SYNC), 
.TX_OUT(UART_TX_O),
.busy(UART_TX_Busy),
.parity_error(parity_error),
.framing_error(framing_error)                  
);

///********************************************************///
//////////////////// System Controller ///////////////////////
///********************************************************///

System_CTRL U0_SYS_CTRL (
.CLK(REF_CLK),
.RST(SYNC_REF_RST),
.Rd_Data(RF_RdData),
.Rd_Data_VALID(RF_RdData_VLD),
.Wr_En(RF_WrEn),
.Rd_En(RF_RdEn),
.out_address(RF_Address),
.Wr_Data(RF_WrData),
.ALU_EN(ALU_EN),
.ALU_FUN(ALU_FUN), 
.ALU_OUT(ALU_OUT),
.OUT_VALID(ALU_OUT_VLD),  
.Gate_En(CLKG_EN), 
.CLKDIV_EN(CLKDIV_EN),   
.FIFO_FULL(FIFO_FULL),
.Rx_P_Data(UART_RX_SYNC), 
.Rx_D_VLD(UART_RX_V_SYNC),
.Wr_Data_FIFO(UART_TX_IN), 
.WR_INC(UART_TX_VLD),
.sys_Error(sys_Error)
);


/*
PULSE_GEN U1_PULSE_GEN (
.CLK(REF_CLK),
.RST(SYNC_REF_RST),
.LVL_SIG(UART_TX_VLD),
.PULSE_SIG(UART_TX_VLD_PULSE)
);
*/
///********************************************************///
/////////////////////// Register File ////////////////////////
///********************************************************///

REG_FILE U0_RegFile (
.clk(REF_CLK),
.RST(SYNC_REF_RST),
.WrEn(RF_WrEn),
.RdEn(RF_RdEn),
.adress(RF_Address),
.WrData(RF_WrData),
.RdData(RF_RdData),
.RdData_Valid(RF_RdData_VLD),
.REG0(Operand_A),
.REG1(Operand_B),
.REG2(UART_Config),
.REG3(DIV_RATIO)
);

///********************************************************///
//////////////////////////// ALU /////////////////////////////
///********************************************************///
 
ALU_TOP U0_ALU (
.clk(ALU_CLK),
.RST(SYNC_REF_RST),  
.A(Operand_A), 
.B(Operand_B),
.Enable(ALU_EN),
.ALU_FUN(ALU_FUN),
.ALU_OUT(ALU_OUT),
.OUT_VALID(ALU_OUT_VLD)
);

///********************************************************///
///////////////////////// Clock Gating ///////////////////////
///********************************************************///

CLK_GATE U0_CLK_GATE (
.CLK_EN(CLKG_EN),
.CLK(REF_CLK),
.GATED_CLK(ALU_CLK)
);


endmodule
 