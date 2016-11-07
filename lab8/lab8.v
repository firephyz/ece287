module lab8(state, out_state, g0, y0, r0, g1, y1, r1, clk, rst);

	input [1:0] state;
	output [1:0] out_state;
	assign out_state = state;
	input clk, rst;
	output g0, y0, r0;
	output g1, y1, r1;
	
	wire done;
	
	light_timing t0(state, done, g0, y0, r0, g1, y1, r1, clk, rst);
	
endmodule
