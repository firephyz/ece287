module lab8(green, yellow, red, clk, rst);
	output reg green, yellow, red;
	input clk, rst;
	reg [29:0] counter;

	always@(posedge clk or negedge rst)
		begin
			if(rst == 1'b0)
				counter <= 29'd0;
			else
				begin
					if(counter != 650000000)
						counter <= counter + 1'd1;
					else
						counter <= 1'd0;
				end
		end
	
	always@(*)
		begin
			if(counter < 250000000)
				begin
					green = 1'b1;
					yellow = 1'b0;
					red = 1'b0;
				end
			else if(counter < 300000000)
				begin
					green = 1'b0;
					yellow = 1'b1;
					red = 1'b0;
				end
			else
				begin
					green = 1'b0;
					yellow = 1'b0;
					red = 1'b1;
				end
		end
endmodule
	