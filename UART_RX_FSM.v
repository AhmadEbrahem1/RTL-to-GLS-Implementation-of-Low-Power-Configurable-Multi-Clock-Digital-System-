module FSM_RX_UART  #(parameter data_width=8) (

input    RX_IN,PAR_En,
input CLK,RST,
input      par_err, strt_glitch, stp_err,
input [3:0]      bit_count,
input  [5:0]	edge_count,
input  [5:0] prescale,
output  reg  dat_samp_en, EDGE_CNT_en,	
output  reg deser_en,data_valid, stp_chk_en,	
output  reg strt_chk_en,par_chk_en		


);



localparam [2:0] IDLE =0,
			STRT_CHK=1, 
			DATA_CHK=2,
			Par_CHK=3,
			STOP_CHK=4;
			
			
			
reg	[2:0] CU_STATE,NXT_STATE;













always @(posedge CLK )
begin

if(!RST)
begin
	data_valid<=0;
end
else
begin
	
	if(!stp_err && CU_STATE==STOP_CHK && edge_count==prescale && (bit_count==11 || bit_count==10))
	begin
		data_valid<=1;
	end
	else
	begin
		data_valid<=0;
	end
end
end




always @(posedge CLK )
begin

if(!RST)
begin
	CU_STATE<=IDLE;
end
else
begin
	
	CU_STATE<= NXT_STATE;
end
end














			
			
always @(*)
begin

case(CU_STATE)
IDLE:
begin
	dat_samp_en=0; 
	EDGE_CNT_en=0;
	deser_en=0;
	//data_valid=0; 
	stp_chk_en=0;
	strt_chk_en=0;
	par_chk_en=0;	
	if(RX_IN==1) // still IDLE
	begin
		NXT_STATE=IDLE;
		
	end
	else
	begin
		NXT_STATE=STRT_CHK;
		dat_samp_en=1; 
		
		
	end
end
STRT_CHK:
begin
	strt_chk_en=1;
	dat_samp_en=1; 
	EDGE_CNT_en=1;
	deser_en=0;
	//data_valid=0; 
	stp_chk_en=0;
	par_chk_en=0;	
	
	if(edge_count==prescale && bit_count=='b1)/////amaken
	begin
		if(!strt_glitch)	// it is real strt bit
		begin
			NXT_STATE=DATA_CHK;
			
			
			
			
			
			
			
			
			
		end
		else
		begin
			NXT_STATE=IDLE;
			
			// o/p depend on nxtstate and current input [mealy]
			//if it wasnt i wouldnt wrote the bellow o/p =0
			// but i want to change it before the nxt clck [combinational]

		end
		
	end
	else	//still not done sampling
	begin
		NXT_STATE=STRT_CHK;
		
		
		
		
		
		
		
	end
	

		
		
		
		
end
DATA_CHK:
begin
	strt_chk_en=0;
    dat_samp_en=1; 
    EDGE_CNT_en=1;
    
    //data_valid=0; 
    stp_chk_en=0;
    par_chk_en=0;	

	if(edge_count==prescale)
		deser_en=1;
	else
		deser_en=0;


	if(bit_count==9 && edge_count==prescale) //bit_count is  done with bit no 9 so i can check parity now
	begin
		
		if(PAR_En==1)
		begin
		
	
			NXT_STATE=Par_CHK;
			
			
			
			
			
			
			
		end
		else
		begin
			NXT_STATE=STOP_CHK;
			
			
			
			
			
			
			
		end
	
	
	
	end
	else
	begin
		NXT_STATE=DATA_CHK;	
		
	end
end
Par_CHK:
begin


	strt_chk_en=0;
    dat_samp_en=1;
    EDGE_CNT_en=1;
    deser_en=0;
    //data_valid=0;
    stp_chk_en=0;
    par_chk_en=1;




	if(bit_count==10 && edge_count==prescale)
	begin
		if(!par_err) //no error
		begin
			NXT_STATE=STOP_CHK;
			
		end
		else
		begin
			NXT_STATE=IDLE;
			
		end
	end
	else
	begin
		NXT_STATE=Par_CHK;
		
	end
	
	
	
	
	
	
end
STOP_CHK:
begin
	strt_chk_en=0;
    dat_samp_en=1;
    EDGE_CNT_en=1;
    deser_en=0;
    //data_valid=0;
    stp_chk_en=1;
    par_chk_en=0;








	if((bit_count==11 || bit_count==10) && edge_count==prescale)
	begin
		if(!stp_err)
		begin
			//data_valid=1;
			if(RX_IN==1)
			begin
				NXT_STATE=IDLE;
				
			end
			else
			begin
				NXT_STATE=STRT_CHK;
				EDGE_CNT_en=0; // to reset bit _count 
				
			end
		end
		else
		begin
			NXT_STATE=IDLE;
			
		end
	end
	else
	begin
		NXT_STATE=STOP_CHK;
		
	end
end

default:
begin
EDGE_CNT_en=0;
deser_en=0;
strt_chk_en=0;
par_chk_en=0;
stp_chk_en=0;
dat_samp_en=0;
NXT_STATE=IDLE;
end

endcase












end






endmodule
/*



??? ?? data_valid
*/



