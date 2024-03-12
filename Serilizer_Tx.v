module SERILIZER  #(parameter data_width=8)(

input [data_width-1:0] P_DATA,
input CLK,RST,ser_en,Data_Valid,
output reg ser_data,
output wire ser_done


);
reg [3:0] bit_counter;
// logic is that serilizer caspture inout at the same pulse of valid 
//if(Data_Valid && !ser_en)_     valid sig_____|-data is captured here-------|________
//if( !Busy) _________datas here only _____|------not here-------|___________
//it takes 11 CLK cycle of busy up and to cpmpleteley transmit data

always @(posedge CLK  or negedge RST )
begin 

if(!RST)
begin	
	bit_counter<=0;
	ser_data<=0;

end
else
begin
	if(ser_en )
	begin 
		
		ser_data <= P_DATA[bit_counter];
		bit_counter <= bit_counter+1;

	end
	else
	begin
	
		bit_counter<=0;
	end
end





end








assign ser_done= (bit_counter==8);







endmodule
