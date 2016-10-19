module IOTest(in_out, io, peaker);

	input in_out;
	output [1:0] peaker;
	inout [1:0] io;
	
	wire [1:0] test;
	
	assign io = in_out ? 2'b11 : test;
	assign peaker = io;
	
	MakeOutput out_0(test);

endmodule
