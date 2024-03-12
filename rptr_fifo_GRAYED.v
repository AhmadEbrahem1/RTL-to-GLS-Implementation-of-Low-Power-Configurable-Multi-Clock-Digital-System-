module Rd_ptr_GREY #(parameter pointer_width=4) (

input rinc,
input rclk,rrst_n,								
input [pointer_width-1:0] rq2_wptr, // wptr

output wire rempty, 								
output wire [pointer_width-2:0]	raddr,
output wire   [pointer_width-1:0]	      gray_rptr


);
wire   [pointer_width-1:0]	rptr;
Rd_ptr Rd_ptr_u0 (


.rinc(rinc),
.rclk(rclk),
.rrst_n(rrst_n),
.raddr(raddr),
.rempty(rempty),
.rptr(rptr)




);

BINARY_TO_GRAY rd_ptr_gray (

.bin_pointer(rptr),
.gray_pointer(gray_rptr)


);




assign rempty= (gray_rptr== rq2_wptr);

endmodule