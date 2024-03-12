module FIFO_TOP #(parameter DATA_WIDTH=8,pointer_width=4) (

input 								W_CLK,W_RST,W_INC,
input 								R_CLK,R_RST,R_INC,
input [DATA_WIDTH-1:0]			WR_DATA,

output 								FULL,
output [DATA_WIDTH-1:0]			RD_DATA,
output 								EMPTY



);

wire 	[pointer_width-2:0] 	  W_adrr,R_addr;
wire Wr_en;
assign Wr_en = W_INC & (!FULL);


FIFO_MEMORY u0_FIFO_MEM (
.WR_DATA(WR_DATA),
.Wr_en(Wr_en),
.W_CLK(W_CLK),
.W_RST(W_RST),
.W_adrr(W_adrr),
.R_addr(R_addr),
.RD_DATA(RD_DATA)


);

wire  [pointer_width-1:0] wq2_rptr;

wire   [pointer_width-1:0]	gray_wptr;
Wd_ptr_GREY u1_Wd_PTR (
.winc(W_INC),
.wclk(W_CLK),
.wrst_n(W_RST),
.wq2_rptr(wq2_rptr),
.wfull(FULL),
.waddr(W_adrr),
.gray_wptr(gray_wptr)



);

wire  [pointer_width-1:0] rq2_wptr;
wire   [pointer_width-1:0]	gray_rptr;

Rd_ptr_GREY u2_Rd_PTR(
.rinc(R_INC),
.rclk(R_CLK),
.rrst_n(R_RST),
.rq2_wptr(rq2_wptr),
.rempty(EMPTY),
.raddr(R_addr),
.gray_rptr(gray_rptr)

);




BIT_SYNC #(2,pointer_width) sync_w2r (
.ASYNC(gray_wptr),
.CLK(R_CLK),
.RST(R_RST),
.SYNC(rq2_wptr)
);


BIT_SYNC #(2,pointer_width) sync_r2w (
.ASYNC(gray_rptr),
.CLK(W_CLK),
.RST(W_RST),
.SYNC(wq2_rptr)
);










endmodule