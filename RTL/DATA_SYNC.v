module DATA_SYNC #(parameter BUS_WIDTH=8 ,NUM_STAGES=2) (
input [BUS_WIDTH-1:0] 	Unsync_bus,
input 					CLK, RST,bus_enable,
output 	reg			enable_pulse,
output  reg [BUS_WIDTH-1:0]  sync_bus

);

reg [NUM_STAGES-1:0] SYN_FLOPS ;

reg Multi_FF,PG_FF;
wire Pulse_Gen;

always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
	  SYN_FLOPS<=0;
          Multi_FF  <= 0;
	end

	else
		begin
	
			SYN_FLOPS  <=  {bus_enable ,SYN_FLOPS[NUM_STAGES-1:1]};
			Multi_FF  <=  SYN_FLOPS[0];
	  end

end



always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
		PG_FF <=0;
	end 
	else
	begin
		PG_FF <= Multi_FF;
	end


end


always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
		sync_bus <=0;	
	end 
	else
	begin
		if(Pulse_Gen==1)
			sync_bus <= Unsync_bus;
		else 
		begin
		// retain its old value
		end
		
	end


end


always @(posedge CLK or negedge RST)
begin
	if(!RST)
	begin
		enable_pulse<=0;
	end 
	else
	begin
		enable_pulse<=Pulse_Gen;
	end


end



assign Pulse_Gen= ~(PG_FF) & Multi_FF ;

endmodule