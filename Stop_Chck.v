module stop_check(
input stop_chck_en,sampled_bit,
output wire stop_error






);

assign stop_error= ~(stop_chck_en && sampled_bit==1);
endmodule