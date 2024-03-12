module RST_SYNC  #(parameter NUM_STAGES=2)  (

input	RST,CLK,
output	reg SYNC_RST



);


reg [NUM_STAGES-1:0] SYN_FLOPS ;
wire constant ;

assign constant =1'b1;
always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
	  SYN_FLOPS<=0;
	  SYNC_RST<=0;
	end

	else
		begin
	
			SYN_FLOPS  <=  {constant ,SYN_FLOPS[NUM_STAGES-1:1]};
			SYNC_RST  <=  SYN_FLOPS[0];
	  end

end



endmodule