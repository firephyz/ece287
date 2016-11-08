module lab8(sensors, g0, y0, r0, g1, y1, r1, clk, rst);

	input [2:0] sensors;
	input clk, rst;
	output g0, y0, r0;
	output g1, y1, r1;
	
	parameter PED = 3'b100,
				 EAST_WEST = 3'b010,
				 NORTH_SOUTH = 3'b001;
				 
	parameter NORMAL_STATE = 2'b00,
				 NORTH_SOUTH_STATE = 2'b01,
				 EAST_WEST_STATE = 2'b10,
				 BLINKING_STATE = 2'b11;
	
	reg [1:0] state;
	reg [1:0] next_state;
	wire done;
	
	light_timing t0(state, done, g0, y0, r0, g1, y1, r1, clk, rst);
	
	always@(posedge clk or negedge rst) begin
		if(rst == 1'b0)
			state <= NORMAL_STATE;
		else if(done)
			state <= next_state;
		else
			state <= state;
	end
	
	always@(*) begin
		next_state[0] = (!sensors[2] && !sensors[1] && sensors[0]) || (sensors[2] && !state[1]) || (sensors[2] && !state[0]);
		next_state[1] = (!sensors[2] && sensors[1] && !sensors[0]) || (sensors[2] && !state[1]) || (sensors[2] && !state[0]);
	end
	
endmodule
