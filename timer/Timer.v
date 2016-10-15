module Timer(clk, out_pin);

	input clk;
	output out_pin;
	
	reg [31:0]counter;
	reg out;
	
	assign out_pin = out;
	
	initial begin
		counter = 0;
		out = 0;
	end
	
	always@(posedge clk) begin
		counter = counter + 1;
		
		if(counter >= 50000000) begin
			counter = 0;
			out = !out;
		end
	end
endmodule
