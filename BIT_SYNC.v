module BIT_SYNC #(parameter NUM_STAGES=2,BUS_WIDTH=8)(
input [BUS_WIDTH-1:0]	ASYNC,
input 					CLK,RST,
output reg [BUS_WIDTH-1:0]  SYNC
);


reg [NUM_STAGES-1:0] SYN_FLOPS [BUS_WIDTH-1:0];

integer i;



always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
	  SYNC  <=  0;
	  for(i=0;i<BUS_WIDTH;i=i+1)
		begin
			SYN_FLOPS[i]<=0; 
		end
	end

	else
		begin
	
		for(i=0;i<BUS_WIDTH;i=i+1)
		begin
			SYN_FLOPS[i]  <=  {ASYNC[i] ,SYN_FLOPS[i][NUM_STAGES-1:1]};
			SYNC[i]  <=  SYN_FLOPS[i][0];
		end
	end

end



endmodule