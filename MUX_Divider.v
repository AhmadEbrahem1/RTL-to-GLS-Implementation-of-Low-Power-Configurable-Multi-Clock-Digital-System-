

module CLKDIV_MUX  (



input	[5:0] IN,

output reg 	[7:0]	OUT











);





always @(*)



case(IN)

6'd32:

begin

	OUT =1;

end

6'd16:

begin

	OUT =2;

end

6'd8:

begin

	OUT =4;

end

6'd4:

begin

	OUT =8;

end





default:

begin

	OUT =1;

end

endcase





endmodule