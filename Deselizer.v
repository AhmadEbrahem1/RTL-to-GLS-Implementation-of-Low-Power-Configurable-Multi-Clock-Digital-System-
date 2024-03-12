module DESERILIZER  #(parameter   data_width=8)(
input CLK,RST,deser_en,
input  sampled_bit,
output reg [data_width-1:0] P_DATA



);
reg [data_width-1:0] sampled_bit_inside;
reg signed [3:0] deser_count ;
integer i;
always @(posedge CLK )
begin 

	if(!RST)
	begin
		P_DATA<=0;
		deser_count<=0;
	end
	
	else if(deser_en) 
		begin 
			P_DATA[deser_count]<=sampled_bit;
			deser_count<=deser_count+1;
			
			if(deser_count==data_width-1)
			begin
				deser_count<=0;
			end
		
		end
	else 
		begin
			//keep the value
		end
	
	
	
	
	
	
end
/*
always @(posedge CLK )
begin 

if(!RST) begin
P_DATA<=0;
sampled_bit_inside<=0;
deser_count=0;
 end
 else
sampled_bit_inside<= sampled_bit;

end
*/
endmodule

/*

remove counter and take edfe_counter-2 as a refence point

*/