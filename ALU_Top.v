
module ALU_TOP  #(parameter Input_Width=8,Out_Width=16 )(
input [Input_Width-1:0]  A,B,
input [3:0] ALU_FUN,
input clk,RST,Enable,


output reg OUT_VALID,
output reg [Out_Width-1:0] ALU_OUT


);

reg [Input_Width-1:0]  A_FF,B_FF;
always @(*)
begin
	if(Enable)
	begin
		case(ALU_FUN)
		4'b0000:
		begin 
			ALU_OUT = A_FF+B_FF;
			OUT_VALID=1;
			
		end
		4'b0001:
		begin
			ALU_OUT = A_FF-B_FF;
			OUT_VALID=1;
			
		end
		4'b0010:
		begin
			ALU_OUT = A_FF*B_FF;
			OUT_VALID=1;
			
		end
		4'b0011:
		begin 
			ALU_OUT = A_FF/B_FF;
			OUT_VALID=1;
			
		end
		4'b0100:
		begin 
			ALU_OUT = A_FF & B_FF;
			OUT_VALID=1;
		end
		4'b0101:
		begin
			ALU_OUT = A_FF | B_FF;
			OUT_VALID=1;
		end 
		4'b0110:
		begin
			ALU_OUT = ~(A_FF & B_FF);
			OUT_VALID=1;
		end
		4'b0111:
		begin 
			ALU_OUT = ~(A_FF|B_FF);
			OUT_VALID=1;
		end
		4'b1000:
		begin 
			ALU_OUT = (A_FF^B_FF);
			OUT_VALID=1;
		end
		4'b1001:
		begin 
			ALU_OUT = ~(A_FF^B_FF);
			OUT_VALID=1;
		end
		
		
		4'b1010:
		begin 
			ALU_OUT = (A_FF==B_FF);
			OUT_VALID=1;
		end
		4'b1011:
		begin
			ALU_OUT = (A_FF>B_FF)? 16'b1:16'b0;
			OUT_VALID=1;
		end
		4'b1100:
		begin
			ALU_OUT = A_FF >> 1;
			OUT_VALID=1;
		end
		4'b1101:
		begin 
			ALU_OUT = A_FF << 1;
			OUT_VALID=1;
		end
		default:
		begin
			ALU_OUT=0;
			OUT_VALID=0;
		end
		
		endcase
	end	
	else
	begin
		ALU_OUT=0;
		OUT_VALID=0;
	
	end
 end
 
	


always @(posedge clk or negedge RST)
begin
	if(!RST)
	begin
		A_FF<=0;
		B_FF<=0;
	end
	else
	begin
		A_FF<=A;
		B_FF<=B;
	end
	
end







/*
wire Arith_Enable;
wire [Out_Width-1:0]  in1,in2,in3,in4;
wire  OUT_VALID_1,OUT_VALID_2,OUT_VALID_3,OUT_VALID_4;
ARITHMETIC_UNIT  #(8,16) B1 (.A(A),.B(B),.ALU_FUN(ALU_FUN),
.clk(clk),.RST(RST),.Arith_out_FF(in1),
.Arith_Enable(Arith_Enable),
.OUT_VALID_FF(OUT_VALID_1));

wire  CMP_Enable;
CMP_UNIT #(8,16) B2 (.A(A),.B(B),.ALU_FUN(ALU_FUN),
.clk(clk),.RST(RST),
.CMP_Enable(CMP_Enable),.CMP_out_FF(in3),.OUT_VALID_FF(OUT_VALID_2));



wire Logic_Enable;

LOGIC_UNIT #(8,16) B3(.A(A),.B(B),.ALU_FUN(ALU_FUN),
.clk(clk),.RST(RST),.Logic_Enable(Logic_Enable),
.Logic_out_FF(in2),.OUT_VALID_FF(OUT_VALID_3));


wire  SHIFT_Enable;
SHIFT_UNIT #(8,16) B4 (.A(A),.B(B),.ALU_FUN(ALU_FUN),
.clk(clk),.RST(RST),.SHIFT_Enable(SHIFT_Enable),
.SHIFT_out_FF(in4),.OUT_VALID_FF(OUT_VALID_4));



Decoder B0 (.ALU_FUN(ALU_FUN[3:1]),
.Enable(Enable),
.Arith_Enable(Arith_Enable),.Logic_Enable(Logic_Enable),
.SHIFT_Enable(SHIFT_Enable),.CMP_Enable(CMP_Enable));

MUX_4_1	B5(
.in1(in1),
.in2(in2),
.in3(in3),
.in4(in4),
.ALU_FUN(ALU_FUN[3:1]),
.out(ALU_OUT)

);

assign OUT_VALID= (OUT_VALID_4 | OUT_VALID_3 | OUT_VALID_2 | OUT_VALID_1);
*/


endmodule









