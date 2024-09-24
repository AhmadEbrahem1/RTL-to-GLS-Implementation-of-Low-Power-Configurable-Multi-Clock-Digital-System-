module CLK_Divider #(parameter division_Ratio=8)(
input I_ref_clk,I_rst_n,I_clk_en,

input [division_Ratio-1:0] I_div_ratio,
output wire O_div_clk
);

wire  [division_Ratio-1:0] HALF;
reg div_CLK_FF;

reg [division_Ratio-1:0] edge_count;
always @(posedge I_ref_clk or negedge I_rst_n)
begin
	if(!I_rst_n) 
	begin
		div_CLK_FF<=0;
		edge_count<=0;
	end
	else
	begin 
	
		if(I_clk_en && I_div_ratio > 1) 
		begin	
			if( !I_div_ratio[0] ) //even
			begin
			
				if(edge_count==0)
				begin 
					edge_count<=edge_count+1;
					div_CLK_FF <= ~div_CLK_FF;
				end
			
			
				else if(edge_count== HALF)
				begin 
					div_CLK_FF <= ~ div_CLK_FF;
					edge_count<=1;
				
				end	
				else
					begin 
					edge_count<=edge_count+1; // clck retain its old value
					end
			end
		
			else // odd 
		
				begin 
					if(edge_count==0 || edge_count== HALF )
							begin 
								edge_count<=edge_count+1;
								div_CLK_FF <= ~div_CLK_FF;
							end
					else if(edge_count==I_div_ratio)
							begin 
								div_CLK_FF <= ~ div_CLK_FF;
								edge_count<=1;//to avoid shifting
							
							end	
					else
								begin 
								edge_count<=edge_count+1; // clck retain its old value
								end
			
				end
				
		


		end

	end	
	

end


assign HALF = I_div_ratio >> 1;
assign O_div_clk = (I_clk_en && I_div_ratio > 1) ? div_CLK_FF : I_ref_clk ;  



endmodule