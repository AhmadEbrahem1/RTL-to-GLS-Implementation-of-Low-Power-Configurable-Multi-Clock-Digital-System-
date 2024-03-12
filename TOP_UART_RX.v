
module TOP_RX_UART (
input 		RX_IN,
input [5:0] prescale,
input 		PAR_EN,PAR_TYPE,CLK,RST,

output wire valid_DATA,
output wire [7:0] P_DATA,
output wire PAR_ERR,STP_ERR




);




wire dat_samp_en,enable_EDGE_bit_CNT,
deser_en,stp_chk_en,strt_chk_en,par_chk_En;

wire[5:0] edge_cnt;
wire [3:0] bit_count;
wire strt_glitch;

FSM_RX_UART fsm_u0 (
.RX_IN(RX_IN),
.PAR_En(PAR_EN),
.CLK(CLK),
.RST(RST),
.par_err(PAR_ERR),
.strt_glitch(strt_glitch),
.stp_err(STP_ERR),
.bit_count(bit_count),
.edge_count(edge_cnt),
.prescale(prescale),
.dat_samp_en(dat_samp_en),
.EDGE_CNT_en(enable_EDGE_bit_CNT),
.deser_en(deser_en),
.data_valid(valid_DATA),
.stp_chk_en(stp_chk_en),
.strt_chk_en(strt_chk_en),
.par_chk_en(par_chk_En)		




);










EDGE_BIT_COUNTER u0(
.enable(enable_EDGE_bit_CNT),
.CLK(CLK),
.RST(RST),
.prescale(prescale),
.edge_count(edge_cnt),
.bit_count(bit_count)



);

wire sampled_OUT;
DATA_SAMPLING data_sampler_u1 (
.RX_IN(RX_IN),
.prescale(prescale),
.dat_samp_en(dat_samp_en),
.CLK(CLK),
.RST(RST),
.edge_cnt(edge_cnt),
.sampled_bit(sampled_OUT)


);


parity_check par_chk_u2(
.par_chck_en(par_chk_En),
.par_type(PAR_TYPE),
.sampled_bit(sampled_OUT),
.P_DATA(P_DATA),
.par_err(PAR_ERR)
);


start_check  strt_chk_u3 (
.strt_chck_en(strt_chk_en),
.sampled_bit(sampled_OUT),
.strt_glitch(strt_glitch)
);


stop_check stop_chk_u4(
.stop_chck_en(stp_chk_en),
.sampled_bit(sampled_OUT),
.stop_error(STP_ERR)

);


DESERILIZER  DESERILIZER_u5(

.CLK(CLK),
.RST(RST),


.deser_en(deser_en),

.sampled_bit(sampled_OUT),

.P_DATA(P_DATA)
); 



endmodule