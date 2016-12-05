module keyboard_wrapper(keycode, breakcode, is_pressed, PS2_DATA, PS2_CLOCK, clk, state);

	input clk;
	input PS2_DATA;
	input PS2_CLOCK;

	wire [7:0] keycode_wire;
	output is_pressed; // Goes high the moment we get the first breakcode. Pulse
	output reg [7:0] keycode;
	output reg [15:0] breakcode;
	
	output reg [1:0] state;
	reg [1:0] next_state;
	
	parameter 	GET_MAKE 		= 2'h0,
					GET_BREAK		= 2'h1,
					GET_MAKE_END 	= 2'h2;
	
	keyboard keyboard(keycode_wire, is_pressed, PS2_DATA, PS2_CLOCK, clk);
	
	initial begin
		state <= GET_MAKE;
	end
	
	always@(posedge clk) begin
		state <= next_state;
	end
	
	always@(*) begin
		case(state)
			GET_MAKE: begin
				if(is_pressed) begin
					next_state = GET_BREAK;
				end
				else begin
					next_state = GET_MAKE;
				end
			end
			GET_BREAK: begin
				if(is_pressed) begin
					next_state = GET_MAKE_END;
				end
				else begin
					next_state = GET_BREAK;
				end
			end
			GET_MAKE_END: begin
				if(is_pressed) begin
					next_state = GET_MAKE;
				end
				else begin
					next_state = GET_MAKE_END;
				end
			end
			default: next_state = GET_MAKE;
		endcase
	end
	
	always@(posedge clk) begin
		case(state)
			GET_MAKE: 	if(is_pressed) keycode <= keycode_wire;
			GET_BREAK: 	if(is_pressed) breakcode[15:8] <= keycode_wire;
			GET_MAKE_END: if(is_pressed) breakcode[7:0] <= keycode_wire;
		endcase
	end
	
endmodule
