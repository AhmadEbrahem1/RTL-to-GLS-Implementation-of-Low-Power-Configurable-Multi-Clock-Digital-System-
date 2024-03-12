
module MUX  #(parameter select_width=2,start_bit=0,stop_bit=1)(
input ser_data,par_bit,
input RST,CLK,
input [select_width-1:0] mux_sel,
output reg TX_OUT_FF



);
reg TX_OUT;
always @(*) begin 

case(mux_sel)
'b00:begin 
TX_OUT= start_bit;
 end
'b01:begin 
TX_OUT= stop_bit;
end
'b10:begin 
TX_OUT= ser_data;
end
'b11:begin 
TX_OUT= par_bit;
end


endcase

end
always @(posedge CLK  or negedge RST ) begin 


if(!RST) begin 
TX_OUT_FF<=1;
end

else 

TX_OUT_FF<=TX_OUT;

end




endmodule