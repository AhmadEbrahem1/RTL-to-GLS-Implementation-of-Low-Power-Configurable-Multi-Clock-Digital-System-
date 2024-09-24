module EDGE_BIT_COUNTER (
input 					enable,CLK,RST,
input 	    [5:0]		  prescale,
output reg  [5:0]	edge_count,
output reg  [3:0]  bit_count


);








always @(posedge CLK )
begin
	if(!RST)
	begin
			edge_count<=1;
			bit_count<=1;
	end
	else
	begin
		if(enable)
		begin
		
			if(edge_count==prescale)
			begin
				edge_count<=1;
				bit_count<= bit_count+1;
			
			end
			else
			begin
				edge_count<= edge_count+1;
			end
		end
		else 
		begin
			edge_count<=1;
			bit_count<=1;
		end
	
	
	
	
	end

end

endmodule