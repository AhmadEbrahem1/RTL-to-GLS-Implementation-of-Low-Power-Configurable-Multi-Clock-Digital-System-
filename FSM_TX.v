module FSM_UART_TX #(parameter select_width=2,START_BIT=0,STOP_BIT=1)(

input Data_valid,PAR_EN,SER_DONE,
input CLK,RST,
output reg [select_width-1:0] mux_sel,
output reg busy_FF ,SER_ENABLE,par_block_EN


);

localparam [2:0] IDLE =3'b000,
		            START=3'b001,
		            DATA=3'b010,
		            PARITY=3'b011,
		            STOP=3'b100;


//moore
reg [2:0] CU_STATE,NXT_STATE;
reg busy;

always @(posedge CLK or negedge RST)
begin 

if(!RST) begin 
	CU_STATE<=IDLE;
	busy_FF<=0;
end
else begin 
	CU_STATE<=NXT_STATE;
	busy_FF<=busy;
	
end

end

always @(*) begin 
case(CU_STATE)
IDLE: begin 
	SER_ENABLE=0;
	par_block_EN=0;
	busy=0;
	mux_sel=1; //pass the always 111111
if(Data_valid)
	NXT_STATE=START;
else
	NXT_STATE=IDLE;
end



START: begin

    SER_ENABLE=1;
	busy=1; 
	par_block_EN=0;
	mux_sel=0; //pass the always 111111
	NXT_STATE=DATA;	
	end

	
DATA:
 begin 
	SER_ENABLE=1;
	par_block_EN=0;
	busy=1;
	mux_sel=2; //pass the always 111111
	if(SER_DONE)
	begin
		busy=0;
		if(PAR_EN)
			NXT_STATE=PARITY;
		else
		NXT_STATE=STOP;
	end
	else
		NXT_STATE=DATA;
end


PARITY: begin
	SER_ENABLE=0;
	par_block_EN=1;
	busy=0;
	if(PAR_EN)
		mux_sel=3; //pass the always 111111
	else
		mux_sel=1; // عدى واحد وخلاص الفريم ثابت ب 11 بيت
	
	NXT_STATE=STOP;
	
	end
	
	
STOP: begin 
	SER_ENABLE=0;
	par_block_EN=0;
	busy=0;
	mux_sel=1; //pass the always 111111
	
	if(Data_valid)
		NXT_STATE=START;
	else
		NXT_STATE=IDLE;
	

end
default: begin
            busy = 1'b0 ;
			par_block_EN=0;
			SER_ENABLE = 1'b0 ;
            mux_sel = 2'b01 ;
			NXT_STATE=IDLE;			
           end	
endcase




end






endmodule
