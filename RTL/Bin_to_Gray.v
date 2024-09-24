module BINARY_TO_GRAY #(parameter pointer_width=4) (



input [pointer_width-1:0]   bin_pointer,
output reg	[pointer_width-1:0]	 gray_pointer

);

always @(*)
begin
	case(bin_pointer)
		4'd0:
		begin
			gray_pointer = 4'b0000;
		end
		4'd1:
		begin
			gray_pointer = 4'b0001;
		end
		4'd2:
		begin
			gray_pointer = 4'b0011;
		end
		4'd3:
		begin
			gray_pointer = 4'b0010;
		end
		4'd4:
		begin
			gray_pointer = 4'b0110;
		end
		4'd5:
		begin
			gray_pointer = 4'b0111;
		end
		4'd6:
		begin
			gray_pointer = 4'b0101;
		end
		4'd7:
		begin
			gray_pointer = 4'b0100;
		end
		4'd8:
		begin
			gray_pointer = 4'b1100;
		end
		4'd9:
		begin
			gray_pointer = 4'b1101;
		end
		4'd10:
		begin
			gray_pointer = 4'b1111;
		end
		4'd11:
		begin
			gray_pointer = 4'b1110;
		end
		4'd12:
		begin
			gray_pointer = 4'b1010;
		end
		4'd13:
		begin
			gray_pointer = 4'b1011;
		end
		4'd14:
		begin
			gray_pointer = 4'b1001;
		end
		4'd15:
		begin
			gray_pointer = 4'b1000;
		end
		
	endcase
end

endmodule