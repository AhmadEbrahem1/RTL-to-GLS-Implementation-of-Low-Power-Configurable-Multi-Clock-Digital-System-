

module REG_FILE #(parameter width=8,depth=16,address_width=4)(
input [address_width-1:0] adress,
input        [width-1:0] WrData,
input              clk,RST,WrEn,RdEn,
output reg   [width-1:0] RdData,
output wire	 [width-1:0] REG0,REG1,REG2,REG3,
output reg RdData_Valid

);
reg [width-1:0] REG_MEM [depth-1:0];
reg [address_width-1:0] adress_FF;


assign REG0 = REG_MEM[0];
assign REG1 = REG_MEM[1];
assign REG2 = REG_MEM[2];
assign REG3 = REG_MEM[3];

wire [1:0] select ={WrEn,RdEn};
integer i ;
always @(posedge clk or negedge RST)
	begin
	  
	if(!RST)
	begin 
	  // for loop or do this : 
		for (i=0; i < depth; i = i + 1)
			begin
				if(i==2)
					REG_MEM[i]<='b100000_01;
				else if (i==3)
					REG_MEM[i]<='b00_100000;
				else
					REG_MEM[i] <= 0;
			end
		
	end
	else begin
	 
		
		if(WrEn)
		begin
			REG_MEM[adress_FF]<=WrData;
			
		end
    
    
	end
	
end


always @(posedge clk or negedge RST)
begin
	  
	if(!RST)
	begin 
		adress_FF<=0;
	end
	else
	begin
		adress_FF<=adress;
	end

end










always @ (*)
begin
	if(RdEn)
	begin
		RdData=REG_MEM[adress];
		RdData_Valid = 1;
	end
	else
	begin
		RdData=0;
		RdData_Valid = 0;
	end
end
endmodule