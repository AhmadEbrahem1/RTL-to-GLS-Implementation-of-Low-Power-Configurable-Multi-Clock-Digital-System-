module Rd_ptr #(parameter pointer_width=4) (

input rinc,
input rclk,rrst_n,								
input rempty,

							
output wire [pointer_width-2:0]	raddr,
output reg   [pointer_width-1:0]	rptr


);


always @(posedge rclk or negedge rrst_n )
begin
if(!rrst_n)
begin
	rptr <= 0;
end
else
begin
if(rinc && !rempty)
begin
	rptr <= rptr+1;
	
end 
end
end 







assign raddr= rptr[pointer_width-2:0];
endmodule