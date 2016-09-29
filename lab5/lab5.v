module lab5(aors, x, y, out);

	input aors;
	input [3:0]x, [3:0]y;
	output [6:0]out;
	
	wire c0, c1, c2;
	wire [3:0]sum, cout;
	
	reg cin;
	reg [3:0]ywire;
	
	always@(*)
	begin
		if(aors == 1'b0)
		begin
			cin = 1'b0;
			ywire = y;
		end
		else
		begin
			cin = 1'b1;
			ywire = ~y;
		end
	end
	
	full_adder adder0(x[0], ywire[0], cin, sum[0], c0);
	full_adder adder1(x[1], ywire[1], c0, sum[1], c1);
	full_adder adder2(x[2], ywire[2], c1, sum[2], c2);
	full_adder adder3(x[3], ywire[3], c2, sum[3], cout);
	
	seven_seg answer(sum[0], sum[1], sum[2], sum[3],
						  out[0], out[1], out[2], out[3], out[4], out[5], out[6]);

endmodule
