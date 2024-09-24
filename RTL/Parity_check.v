module parity_check(
input par_chck_en,
input par_type,sampled_bit,
input [7:0] P_DATA,
output wire par_err






);
reg PARITY_BIT; //expected PARITY_BIT
always @(*)
begin 
	if(par_chck_en)
		begin 
			if(par_type==1) // odd parity
				PARITY_BIT = !(^P_DATA);
			else
				PARITY_BIT = (^P_DATA);
		
		end
	
	 else 
		PARITY_BIT=0; //dont worry about capturing 
				// keda keda p_data wont change


end

assign par_err= (PARITY_BIT != sampled_bit);

endmodule 