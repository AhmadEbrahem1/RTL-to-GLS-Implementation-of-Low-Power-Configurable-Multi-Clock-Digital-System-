module System_CTRL(

input [15:0] 	ALU_OUT,

input		 	OUT_VALID,

input [7:0]		Rx_P_Data,

input			Rx_D_VLD,

input [7:0]		Rd_Data,

input			Rd_Data_VALID,

input			CLK,RST,FIFO_FULL,







output	reg 			ALU_EN,

output	reg [3:0]	ALU_FUN,

output	reg			Gate_En,

output	wire [3:0] 	out_address,

output	reg			Wr_En,Rd_En,

output	reg [7:0] 	Wr_Data,

output	reg [7:0] 	Wr_Data_FIFO ,

output	reg 			WR_INC,

output	reg 			sys_Error,

output 	wire 				CLKDIV_EN

















);





assign CLKDIV_EN = 1 ;







//reg [7:0] Wr_Data;

reg  [3:0] 	CU_STATE,NXT_STATE;

localparam  [3:0] 	IDLE = 4'b0000,

			Recieving = 4'b0001,

			Reg_File_Write = 4'b0010,

			Reg_File_Read = 4'b0011,

			ALU_with_operand = 4'b0100,

			ALU_with_No_operand = 4'b0101,

			wait_for_B = 4'b0110,

			turn_off_Wr_EN=4'b0111,

			turn_off_Wr_inc=4'b1000,

			final_send =4'b1001,

			ERROR =4'b1010;





reg [2:0] Frame_Counter ,Expected_NO_Frames;

//reg [7:0]  OLD_WR_DATA;

localparam [7:0]    RF_Wr_CMD = 8'hAA;

localparam [7:0]		  RF_Rd_CMD = 8'hBB;

localparam [7:0]		  ALU_OPER_W_OP_CMD = 8'hCC;

localparam [7:0]		  ALU_OPER_W_NOP_CMD = 8'hDD;





reg [1:0] send_CNT; //ALU_OPER_W_OP_CMD

//reg 		one_time;

reg [3:0] 	Address,Address_FF;

assign out_address = (Wr_En==1 || Rd_En == 0) ?  Address_FF :   Address;

//assign Wr_Data_final = (NXT_STATE == wait_for_B)? OLD_WR_DATA : Wr_Data;

/*

always @(posedge CLK or negedge RST)

begin

	if(!RST)

	begin

		OLD_WR_DATA <= 0;

	end

	else

	begin

		if(CU_STATE != wait_for_B)

			OLD_WR_DATA <= Wr_Data;

	end

end

*/

always @(posedge CLK or negedge RST)

begin

	if(!RST)

	begin

		Address_FF <= 1;

	end

	else

	begin

		

			Address_FF <= Address;

			

	end

	

	

end	







always @(posedge CLK or negedge RST)

begin

	if(!RST)

	begin

		send_CNT <= 1;

	end

	else

	begin

		if(send_CNT == 2 )

		begin

			send_CNT <= 1;

		end

		else if (WR_INC && ALU_EN)

		begin

			send_CNT <= send_CNT +1;

		end

	end

end







always @(posedge CLK or negedge RST)

begin

	if(!RST)

	begin

		CU_STATE <= IDLE;

		

	end

	else

	begin

		CU_STATE <= NXT_STATE;

	end

end





//Mealy 

always @(*)

begin

	case(CU_STATE)

	IDLE:

	begin

		

		ALU_EN = 0;

		ALU_FUN = 0;		

		Gate_En = 0;

		Address = 0;

		Wr_En = 0;

		Rd_En = 0;

		Wr_Data = 0;

		Wr_Data_FIFO = 0;

		WR_INC = 0;

		sys_Error = 0 ;

		//one_time =0;

		

		

		

		//NXT_STATE

		if(Rx_D_VLD)

		begin

			

			NXT_STATE = Recieving;

		end

		else

		begin

			NXT_STATE = IDLE;

		end

		

	end

	

	

	

	Recieving:

	begin	

		ALU_EN = 0;

		ALU_FUN = 0;		

		Gate_En = 0;

		Address = 0;

		Wr_En = 0;

		Rd_En = 0;

		Wr_Data = 0;

		Wr_Data_FIFO = 0;

		WR_INC = 0;

		sys_Error = 0 ;

		//one_time =0;

		

		

		

		case(Rx_P_Data)

		RF_Wr_CMD: 

		begin

			NXT_STATE = Reg_File_Write;

		end

		

		RF_Rd_CMD: 

		begin

			NXT_STATE = Reg_File_Read;

		end

		

		ALU_OPER_W_OP_CMD: 

		begin

			NXT_STATE = ALU_with_operand;

		end

		

		ALU_OPER_W_NOP_CMD: 

		begin

			NXT_STATE = ALU_with_No_operand;

		end

		

		default: // other commands [unknown]

		begin

			NXT_STATE = ERROR;

		end

		

		endcase

	

	end

	

	

	Reg_File_Write:
	

	begin
		ALU_EN = 0;
		ALU_FUN = 0;		
		Gate_En = 0;
		Address = 0;
		Wr_En = 0;
		Rd_En = 0;
		Wr_Data = 0;
		Wr_Data_FIFO = 0;
		WR_INC = 0;
		sys_Error = 0 ;
		

		case(Frame_Counter)

		3'd1:

		begin

			NXT_STATE = Reg_File_Write;

			//one_time =0;

		end

		3'd2:

		begin

			NXT_STATE = Reg_File_Write;

			//

			ALU_EN = 0;

			ALU_FUN = 0;		

			Gate_En = 0;

			Address = Rx_P_Data[3:0];

			

			Wr_En = 0;

			Rd_En = 0;

			Wr_Data = 0;

			Wr_Data_FIFO = 0;

			WR_INC = 0;

			sys_Error = 0 ;

			

			

			

		end

		3'd3:

		begin

			ALU_EN = 0;

			ALU_FUN = 0;		

			Gate_En = 0;

			Address = 0;

			Wr_En = 1;

			Rd_En = 0;

			Wr_Data = Rx_P_Data;

			Wr_Data_FIFO = 0;

			WR_INC = 0;

			sys_Error = 0 ;

			//one_time =0;

		

			if(Rx_D_VLD)

			begin

				NXT_STATE = Recieving ;	

			end

			else

			begin

				NXT_STATE = IDLE;

			end	

		

		end			

		default:

		begin

			NXT_STATE = ERROR;

			

			

		end

		endcase

		

		

	end

	

	

	Reg_File_Read:

	begin
		ALU_EN = 0;
		ALU_FUN = 0;		
		Gate_En = 0;
		Address = 0;
		Wr_En = 0;
		Rd_En = 0;
		Wr_Data = 0;
		Wr_Data_FIFO = 0;
		WR_INC = 0;
		sys_Error = 0 ;

		

		case(Frame_Counter)

		3'd1:

		begin

			//one_time =0;

			NXT_STATE = Reg_File_Read;

		end

		3'd2:

		begin

			

			//

			ALU_EN = 0;

			ALU_FUN = 0;		

			Gate_En = 0;

			Address = Rx_P_Data[3:0];

			

			Wr_En = 0;

			Rd_En = 1;

			Wr_Data = 0;

			Wr_Data_FIFO = 0;

			WR_INC = 0;

			sys_Error = 0 ;

			

			// out_to_Tx

			if(Rd_Data_VALID)

			begin

				Wr_Data_FIFO =  Rd_Data;

				WR_INC = 1;

				if(Rx_D_VLD)

				begin

					NXT_STATE = Recieving ;	

				end

				else

				begin

					NXT_STATE = IDLE;

				end

			end

			else

			begin

				NXT_STATE = Reg_File_Read ;	
				Wr_Data_FIFO =  Rd_Data;
				WR_INC = 1;

			end

				

			

			

			

			

			

		end

		

		

		

		default:

		begin

			NXT_STATE = ERROR;

			

			

		end

		endcase

	end

	

	

	

	ALU_with_operand:
	

	begin
		ALU_EN = 0;
		ALU_FUN = 0;		
		Gate_En = 0;
		Address = 0;
		Wr_En = 0;
		Rd_En = 0;
		Wr_Data = 0;
		Wr_Data_FIFO = 0;
		WR_INC = 0;
		sys_Error = 0 ;
		
		case(Frame_Counter)

		3'd1:

		begin

			NXT_STATE = ALU_with_operand;

		end

		3'd2:

		begin

			ALU_EN = 0;

			ALU_FUN = 0;

			Gate_En = 0;

			Wr_En = 1;

			Address = 8'h0 ;

			Rd_En = 0;

			Wr_Data = Rx_P_Data;

			Wr_Data_FIFO = 0;

			WR_INC = 0;

			sys_Error = 0 ;

			//one_time =0;

		

			NXT_STATE = wait_for_B;

		end

		

		3'd3:

		begin

			ALU_EN = 0;

			ALU_FUN = 0;

			Gate_En = 1;

			Wr_En = 1;

			Address = 8'h1 ;

			Rd_En = 0;

			Wr_Data = Rx_P_Data;

			Wr_Data_FIFO = 0;

			WR_INC = 0;

			//one_time =0;

			NXT_STATE = turn_off_Wr_EN;

		end

		

		3'd4:

		begin

			ALU_EN = 1;

			ALU_FUN = Rx_P_Data[3:0];

			Gate_En = 1;

			Wr_En = 0;

			Address = 0 ;

			Rd_En = 0;

			Wr_Data = 0;

			Wr_Data_FIFO = 0;

			WR_INC = 0;

			//one_time =0;

			if(OUT_VALID)

			begin

				case(send_CNT)

				'd1:

				begin

					Wr_Data_FIFO =  ALU_OUT[7:0];

					WR_INC = 1;

					NXT_STATE = turn_off_Wr_inc;

					Wr_En = 0;

				end

				

				default:

				begin

					NXT_STATE = ERROR;

						

				end

				endcase

				

			end

			else

			begin

				NXT_STATE = ALU_with_operand;

			end

			

			

		end

		

		default:

		begin

			NXT_STATE = ERROR;

			

		end

		endcase

		

	end

	

	wait_for_B:

	begin

		ALU_EN = 0;

		ALU_FUN = 0;

		Gate_En = 0;

		Wr_En = 0;

		Address = 8'h1 ;

		Rd_En = 0;

		Wr_Data = 0;

		Wr_Data_FIFO = 0;

		WR_INC = 0;
		sys_Error = 0 ;

		

		if(Frame_Counter == 2)

			NXT_STATE = wait_for_B;

		else // it is 3 

			NXT_STATE = ALU_with_operand;

		

	end

	turn_off_Wr_EN:

	begin

		ALU_EN = 0;

		ALU_FUN = 0;

		Gate_En = 1;

		Wr_En = 0;

		Address = 0 ;

		Rd_En = 0;

		Wr_Data = 0;

		Wr_Data_FIFO = 0;

		WR_INC = 0;
		sys_Error = 0 ;

		if(Frame_Counter == 4)

			NXT_STATE = ALU_with_operand;

		else

			NXT_STATE = turn_off_Wr_EN;

	end

	turn_off_Wr_inc:

	begin

		ALU_EN = 1;

		ALU_FUN = 0;

		Gate_En = 1;

		Wr_En = 0;

		Address = 0 ;

		Rd_En = 0;

		Wr_Data = 0;
		WR_INC = 0;

		Wr_Data_FIFO = 0;

		
		sys_Error = 0 ;
		

		NXT_STATE = final_send;

	end

	final_send:

	begin

		ALU_EN = 1;

		ALU_FUN = 0;

		Gate_En = 1;

		

		Address = 0 ;

		Rd_En = 0;

		Wr_Data = 0;

		Wr_Data_FIFO =  ALU_OUT[15:8];

		WR_INC = 1;

		Wr_En = 0;
		sys_Error = 0 ;

		//NXT_STATE = ALU_with_operand;

		if(Rx_D_VLD)

		begin

			NXT_STATE = Recieving ;	

		end

		else

		begin

			NXT_STATE = IDLE;

		end	

	end

	ALU_with_No_operand:

	

	begin
		ALU_EN = 0;
		ALU_FUN = 0;		
		Gate_En = 0;
		Address = 0;
		Wr_En = 0;
		Rd_En = 0;
		Wr_Data = 0;
		Wr_Data_FIFO = 0;
		WR_INC = 0;
		sys_Error = 0 ;
		
		case(Frame_Counter)

		3'd1:

		begin

			NXT_STATE = ALU_with_No_operand;

		end

		3'd2:

		begin

			ALU_EN = 1;

			ALU_FUN = Rx_P_Data[3:0];

			Gate_En = 1;

			Wr_En = 0;

			Address = 0 ;

			Rd_En = 0;

			Wr_Data = 0;

			Wr_Data_FIFO = 0;

			WR_INC = 0;

			sys_Error = 0 ;

			//one_time =0;

			if(OUT_VALID)

			begin

				case(send_CNT)

				'd1:

				begin

					Wr_Data_FIFO =  ALU_OUT[7:0];

					WR_INC = 1;

					NXT_STATE = turn_off_Wr_inc;

					Wr_En = 0;

				end

				

				default:

				begin

					NXT_STATE = ERROR;

						

				end

				endcase

				

			end

			else

			begin

				NXT_STATE = ALU_with_operand;

			end

			

			

		end

		

		default:

		begin

			NXT_STATE = ERROR;

			

		end

		endcase

		

		

	end

	

	ERROR:

	begin

		ALU_EN = 0;

		ALU_FUN = 0;

		Gate_En = 0;

		Wr_En = 0;

		Address = 0 ;

		Rd_En = 0;

		Wr_Data = 0;

		Wr_Data_FIFO = 0;

		WR_INC = 0;

		sys_Error = 1 ;

		//one_time =0;
		NXT_STATE = ERROR;

	end

	default:

	begin

		NXT_STATE = ERROR;
		ALU_EN = 0;
		ALU_FUN = 0;		
		Gate_En = 0;
		Address = 0;
		Wr_En = 0;
		Rd_En = 0;
		Wr_Data = 0;
		Wr_Data_FIFO = 0;
		WR_INC = 0;
		sys_Error = 0 ;

	end

	endcase

	

end













always @(posedge CLK or negedge RST)

begin

	if(!RST)

	begin

		Expected_NO_Frames <= 4; // any value so it doesnt zero the frame couner again

	end

	else

	begin

		if(Rx_D_VLD) // else retain its old value

		begin

			case(Rx_P_Data)

			RF_Wr_CMD: // 3 frames

			begin

				Expected_NO_Frames  <= 3;

			end

			RF_Rd_CMD: // 2 frames

			begin

				Expected_NO_Frames  <= 2;

			end

			ALU_OPER_W_OP_CMD: // 4 frames

			begin

				Expected_NO_Frames  <= 4;

			end

			ALU_OPER_W_NOP_CMD: // 2 frames

			begin

				Expected_NO_Frames  <= 2;

			end

			default: // other commands such alu_op1 ALU_op2

			begin

				// retain its old value so Frame_Counter continue comparing

			end

			endcase

		end

		

		

		

	end

end









always @(posedge CLK or negedge RST)

begin

	if(!RST)

	begin

		Frame_Counter <= 0; 

	end

	else

	begin

		if(Rx_D_VLD) 

		begin

			case(Rx_P_Data)

				RF_Wr_CMD: 

				begin

					if(Frame_Counter == Expected_NO_Frames)

						Frame_Counter <= 1; // this is frame no 1 // for consecutive commands

					else	

						Frame_Counter <= Frame_Counter +1;  // for the first time  program run

				end

				RF_Rd_CMD: 

				begin

					if(Frame_Counter == Expected_NO_Frames)

						Frame_Counter <= 1; // this is frame no 1 // for consecutive commands

					else	

						Frame_Counter <= Frame_Counter +1;  // for the first time  program run

				end

				ALU_OPER_W_OP_CMD: 

				begin

					if(Frame_Counter == Expected_NO_Frames)

						Frame_Counter <= 1; // this is frame no 1 // for consecutive commands

					else	

						Frame_Counter <= Frame_Counter +1;  // for the first time  program run

				end

				ALU_OPER_W_NOP_CMD: 

				begin

					if(Frame_Counter == Expected_NO_Frames)

						Frame_Counter <= 1; // this is frame no 1 // for consecutive commands

					else	

						Frame_Counter <= Frame_Counter +1;  // for the first time  program run

				end

				default: 

				begin

					if(Frame_Counter != Expected_NO_Frames)

						Frame_Counter <= Frame_Counter +1;

					else ; // retain your value 

				end

			endcase

		end	

	end				

	

end



















endmodule






