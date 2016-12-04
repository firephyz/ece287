module keyboard_wrapper(keycode, breakcode, is_pressed, PS2_DATA, PS2_CLOCK);

	input PS2_DATA;
	input PS2_CLOCK;

	wire keycode_wire;
	output is_pressed;
	output reg [7:0] keycode;
	output reg [7:0] breakcode;
	
	keyboard keyboard(keycode_wire, is_pressed, PS2_DATA, PS2_CLOCK);
	
	/*
	 * TODO
	 */
	
endmodule
