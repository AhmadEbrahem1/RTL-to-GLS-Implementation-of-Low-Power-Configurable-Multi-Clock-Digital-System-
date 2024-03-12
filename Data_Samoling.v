module DATA_SAMPLING  #(parameter data_width=8) (

input 					 RX_IN,
input [5:0]		   	   prescale,
input 				   dat_samp_en,CLK,RST,
input [5:0]			    edge_cnt,
output reg					sampled_bit


);
reg [1:0] 		 ZERO_Count,One_CONUT;
reg				 RX_IN_FF;
wire[4:0]	 middle_prescale;

assign middle_prescale=prescale>>1;



always @(posedge CLK or negedge RST)
begin 
	if(!RST)
	begin
		sampled_bit	<=0;
		ZERO_Count<=0;
		One_CONUT<=0;

	end
	else
	begin
	if(dat_samp_en)
	begin
		
		if(prescale==2)
		begin
			if(edge_cnt==1)		
			begin
				sampled_bit<=RX_IN_FF;
			end
		end
		else if(prescale==4 ||prescale==8 || prescale==16 || prescale==32)
		begin
			if(edge_cnt==middle_prescale-1 || edge_cnt==middle_prescale || 
			edge_cnt==middle_prescale+1 )
			begin
				if(RX_IN_FF==0)
					ZERO_Count<=ZERO_Count+1;
				else
					One_CONUT<=One_CONUT+1;
			end
			else 
			begin
				if(edge_cnt==prescale-1)///take decision early
				begin
					if(ZERO_Count>One_CONUT)
						sampled_bit<=0;
					else
						sampled_bit<=1;
				ZERO_Count<=0;
				One_CONUT<=0;
				
				end
	
	
			end
		
		end
	end
	else
	begin
		ZERO_Count<=0;
		One_CONUT<=0;
	
	end
	end












end

always @(posedge CLK or negedge RST)
begin

if(!RST)
RX_IN_FF<=0;
else
RX_IN_FF<=RX_IN;

end






endmodule