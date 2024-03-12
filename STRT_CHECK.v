module start_check(
input strt_chck_en,sampled_bit,
output wire strt_glitch






);

assign strt_glitch= ~(strt_chck_en && sampled_bit==0);
endmodule