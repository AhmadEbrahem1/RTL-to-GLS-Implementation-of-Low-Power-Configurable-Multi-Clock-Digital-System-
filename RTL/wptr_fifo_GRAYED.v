module Wd_ptr_GREY #(parameter pointer_width=4) (

input winc,
input wclk,wrst_n,								
input [pointer_width-1:0] wq2_rptr, // rptr

output wire wfull, 								
output wire [pointer_width-2:0]	waddr,
output wire   [pointer_width-1:0]	gray_wptr


);
wire  [pointer_width-1:0]	wptr;
Wd_ptr Wd_ptr_u0(
.winc(winc),
.wclk(wclk),
.wrst_n(wrst_n),
.waddr(waddr),
.wfull(wfull),
.wptr(wptr)



);

BINARY_TO_GRAY w_ptr_gray (


.bin_pointer(wptr),
.gray_pointer(gray_wptr)


);




assign wfull=( (gray_wptr[pointer_width-3:0]==wq2_rptr[pointer_width-3:0] ) && (gray_wptr[pointer_width-2] != wq2_rptr[pointer_width-2])  
&& (gray_wptr[pointer_width-1] != wq2_rptr[pointer_width-1])	

);

endmodule