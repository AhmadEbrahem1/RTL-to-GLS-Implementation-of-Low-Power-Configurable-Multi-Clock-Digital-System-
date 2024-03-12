module	TOP_TX_UART #(parameter data_width=8,select_width=2) (
input [data_width-1:0]  P_DATA, 
input 		DATA_Valid ,PAR_EN ,PAR_TYP,
input		RST,CLK,
output wire 			TX_OUT ,BUSY


);





reg [data_width-1:0]  P_DATA_ff;

always @(posedge CLK or negedge RST)
begin
if(!RST)
begin
	P_DATA_ff<=0;
end
	
else
begin
if(!BUSY && DATA_Valid )  // input isolation
	P_DATA_ff<=P_DATA;
end
end
wire ser_data,ser_done,ser_en,PAR_block_EN,par_bit;
wire [select_width-1:0] mux_sel;


FSM_UART_TX  FSM_B0 (
.Data_valid(DATA_Valid),
.PAR_EN(PAR_EN),
.SER_DONE(ser_done),
.par_block_EN(PAR_block_EN),
.CLK(CLK),
.RST(RST),
.mux_sel(mux_sel),
.busy_FF(BUSY),
.SER_ENABLE(ser_en)
);

MUX  MUX_B1 (
.ser_data(ser_data),
.par_bit(par_bit),
.mux_sel(mux_sel),
.TX_OUT_FF(TX_OUT),

.CLK(CLK),
.RST(RST)
);

PARITY_CALC  PARITY_CALC_B2 (

.PAR_TYP(PAR_TYP),
.Data_Valid(DATA_Valid),
.P_DATA(P_DATA_ff),
.par_EN(PAR_block_EN),
.CLK(CLK),
.RST(RST),
.PARITY_BIT(par_bit)
);

SERILIZER SERILIZER_B3 (

.P_DATA(P_DATA_ff),
.CLK(CLK),
.RST(RST),
.ser_en(ser_en),
.ser_data(ser_data),
.ser_done(ser_done),
.Data_Valid(DATA_Valid)

);



 endmodule



