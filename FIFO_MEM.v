module FIFO_MEMORY #(parameter DATA_WIDTH=8,FIFO_Depth=8) (

input [DATA_WIDTH-1:0]			 WR_DATA,						
input							 Wr_en,W_CLK,W_RST,
input 				[2:0] 	     W_adrr,R_addr,
output wire 		[DATA_WIDTH-1:0] RD_DATA								
								



);


reg [DATA_WIDTH-1:0] fifo_MEM [FIFO_Depth-1:0];

integer i;
always @(posedge W_CLK or negedge W_RST)
begin
	  
	if(!W_RST)
	begin 
	  for (i=0; i < FIFO_Depth; i = i + 1)
	    begin
			fifo_MEM[i] <= 0;
		end
	
	end
	else
	begin
		if(Wr_en)
		begin
			fifo_MEM[W_adrr] <= WR_DATA ;
		end
	end
	
end	
	
	
	
assign RD_DATA = fifo_MEM[R_addr];
	
	 












endmodule