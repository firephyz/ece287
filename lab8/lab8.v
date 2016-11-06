module lab8(decider_pin, done, g0, y0, r0, g1, y1, r1, clk, rst);

	output reg g0, y0, r0;
	output reg g1, y1, r1;
	output reg done;
	
	input [1:0]decider_pin;
	input clk, rst;
	
	reg [30:0] counter;
	reg [1:0]decider;

	always@(posedge clk or negedge rst)
		begin
			if(rst == 1'b0)
				begin
					counter <= 30'd0;
					done <= 1'b0;
				end
			else if (done == 1'b1)
				begin
					counter <= 30'd0;
					done <= 1'b0;
				end
			else
				begin
					if(counter == 0)
						begin
							decider <= decider_pin;
						end
					case(decider)
						2'b00: 
							begin
								if(counter != 700000000)
									counter <= counter + 1'd1;
								else
									begin
										counter <= 30'd0;
										done <= 1'd1;
									end
							end
						2'b01:
							begin
								if(counter != 350000000)
									counter <= counter + 1'd1;
								else
									begin
										counter <= 30'd0;
										done <= 1'd1;
									end
							end
						2'b10:
							begin
								if(counter < 10)
									counter <= 350000000; // Move clock to only execute last half of light cycle
									
								if(counter != 700000000)
									counter <= counter + 1'd1;
								else
									begin
										counter <= 30'd0;
										done <= 1'd1;
									end
							end
						2'b11:
							begin
								if(counter != 200000000)
									counter <= counter + 1'd1;
								else
									begin
										counter <= 1'd0;
										done <= 1'd1;
									end
							end
					endcase
				end
		end
	
	always@(*)
		begin
			if(decider == 2'b11) 
				begin
					if(counter < 25000000)
						begin
							g0 = 1'b1;
							y0 = 1'b1;
							r0 = 1'b0;
							
							g1 = 1'b1;
							y1 = 1'b1;
							r1 = 1'b0;
						end
					else if(counter < 50000000)
						begin
							g0 = 1'b1;
							y0 = 1'b1;
							r0 = 1'b1;
							
							g1 = 1'b1;
							y1 = 1'b1;
							r1 = 1'b1;
						end
					else if(counter < 75000000)
						begin
							g0 = 1'b1;
							y0 = 1'b1;
							r0 = 1'b0;
							
							g1 = 1'b1;
							y1 = 1'b1;
							r1 = 1'b0;
						end
					else if(counter < 100000000)
						begin
							g0 = 1'b1;
							y0 = 1'b1;
							r0 = 1'b1;
							
							g1 = 1'b1;
							y1 = 1'b1;
							r1 = 1'b1;
						end
					else if(counter < 125000000)
						begin
							g0 = 1'b1;
							y0 = 1'b1;
							r0 = 1'b0;
							
							g1 = 1'b1;
							y1 = 1'b1;
							r1 = 1'b0;
						end
					else if(counter < 150000000)
						begin
							g0 = 1'b1;
							y0 = 1'b1;
							r0 = 1'b1;
							
							g1 = 1'b1;
							y1 = 1'b1;
							r1 = 1'b1;
						end
					else if(counter < 175000000)
						begin
							g0 = 1'b1;
							y0 = 1'b1;
							r0 = 1'b0;
							
							g1 = 1'b1;
							y1 = 1'b1;
							r1 = 1'b0;
						end
					else 
						begin
							g0 = 1'b1;
							y0 = 1'b1;
							r0 = 1'b1;
							
							g1 = 1'b1;
							y1 = 1'b1;
							r1 = 1'b1;
						end
				end
			else 
				begin
					// First light turn
					if(counter < 250000000)
						begin
							g0 = 1'b0;
							y0 = 1'b1;
							r0 = 1'b1;
							
							g1 = 1'b1;
							y1 = 1'b1;
							r1 = 1'b0;
						end
					else if(counter < 300000000)
						begin
							g0 = 1'b1;
							y0 = 1'b0;
							r0 = 1'b1;
							
							g1 = 1'b1;
							y1 = 1'b1;
							r1 = 1'b0;
						end
					else if(counter < 350000000)
						begin
							g0 = 1'b1;
							y0 = 1'b1;
							r0 = 1'b0;
							
							g1 = 1'b1;
							y1 = 1'b1;
							r1 = 1'b0;
						end
					else if(counter < 600000000)
						begin
							g0 = 1'b1;
							y0 = 1'b1;
							r0 = 1'b0;
							
							g1 = 1'b0;
							y1 = 1'b1;
							r1 = 1'b1;
						end
					// Second light turn
					else if(counter < 650000000)
						begin
							g0 = 1'b1;
							y0 = 1'b1;
							r0 = 1'b0;
							
							g1 = 1'b1;
							y1 = 1'b0;
							r1 = 1'b1;
						end
					else
						begin
							g0 = 1'b1;
							y0 = 1'b1;
							r0 = 1'b0;
							
							g1 = 1'b1;
							y1 = 1'b1;
							r1 = 1'b0;
						end
				end
		end
endmodule
	