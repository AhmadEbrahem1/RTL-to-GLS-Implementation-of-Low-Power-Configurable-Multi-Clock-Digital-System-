
module UART   (
input wire			 RST,
input wire			 TX_CLK,
input wire			 RX_CLK,
input wire			 parity_enable,
input wire			 parity_type,
input wire	 [5:0]   Prescale,
input wire 				RX_IN,
input wire [7:0]  	TX_IN_P_Data,
input wire 			TX_IN_Valid,


output wire [7:0]   RX_OUT_P_Data  ,          
output wire 		RX_OUT_Valid   ,           
output wire 		TX_OUT,
output wire 		busy,
output wire 		parity_error,
output wire 		framing_error      
);







TOP_TX_UART	TX_UART(
.P_DATA(TX_IN_P_Data),
.DATA_Valid(TX_IN_Valid),
.PAR_EN(parity_enable),
.PAR_TYP(parity_type),
.RST(RST),
.CLK(TX_CLK),
.TX_OUT(TX_OUT),
.BUSY(busy)


);






TOP_RX_UART RX_UART (
.RX_IN(RX_IN),
.prescale(Prescale),
.PAR_EN(parity_enable),
.PAR_TYPE(parity_type),
.CLK(RX_CLK),
.RST(RST),
.valid_DATA(RX_OUT_Valid),
.P_DATA(RX_OUT_P_Data),
.PAR_ERR(parity_error),
.STP_ERR(framing_error)





);
endmodule