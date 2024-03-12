module Wd_ptr #(parameter pointer_width=4) (

input winc,wfull,
input wclk,wrst_n,														
output wire [pointer_width-2:0]	waddr,
output reg   [pointer_width-1:0]	wptr


);


always @(posedge wclk or negedge wrst_n )
begin
if(!wrst_n)
begin
	wptr <= 0;
end
else
begin
if(winc && !wfull)
begin
	wptr <= wptr+1;
	
end
end 
end



assign waddr= wptr[pointer_width-2:0];
endmodule