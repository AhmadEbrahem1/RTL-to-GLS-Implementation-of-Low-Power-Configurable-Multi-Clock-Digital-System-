module PARITY_CALC  #(parameter data_width=8)(
input PAR_TYP,Data_Valid ,par_EN,CLK,RST,
input [data_width-1:0] P_DATA, 
output reg PARITY_BIT


);

//reg  [data_width-1:0] P_DATA_FF;
always @(*)
begin 
	if(par_EN)
		if(PAR_TYP==1) // odd parity
			PARITY_BIT = !(^P_DATA);
		else
			PARITY_BIT = (^P_DATA);
	else 	
		PARITY_BIT = 0;
end



/*
always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
		P_DATA_FF<=0;
	end
	else
	begin
		if(Data_Valid)
		begin
			P_DATA_FF<=P_DATA;
		end
	end
end
*/





endmodule