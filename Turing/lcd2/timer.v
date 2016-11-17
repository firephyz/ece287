module timer(max, start, done, clk);

	input clk;
	input [32:0] max;
	input start;
	output done;
	
	reg [32:0] count;
	reg done_reg;
	
	assign done = done_reg;
	
	always@(posedge clk) begin
		if(start == 0) begin
			done_reg <= 0;
			count <= 0;
		end
		else begin
			count <= count + 32'b1;
		end
			
		if(count == max) begin
			done_reg <= 1;
			count <= 0;
		end
	end
	
endmodule
