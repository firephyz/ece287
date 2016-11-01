module ps2(data, index, isReading, PS2_CLK, PS2_DAT, clk, a1, b1, c1, d1, e1, f1, g1,
															  a2, b2, c2, d2, e2, f2, g2);

	input clk;
	input PS2_CLK;
	input PS2_DAT;
	
	reg [15:0] counter;
	reg oldClkValue;
	output reg isReading;
	
	output reg [7:0] data;
	output reg [3:0] index;
	
	output a1, b1, c1, d1, e1, f1, g1;
	output a2, b2, c2, d2, e2, f2, g2;
	seven_seg seg0(data[0], data[1], data[2], data[3], a1, b1, c1, d1, e1, f1, g1);
	seven_seg seg1(data[4], data[5], data[6], data[7], a2, b2, c2, d2, e2, f2, g2);
	
	
	initial begin
		counter <= 0;
		data <= 0;
		index <= 0;
		isReading <= 0;
	end
	
	always@(posedge clk) begin
	
		counter <= counter + 1;
		oldClkValue <= PS2_CLK;
		
		if(oldClkValue && !PS2_CLK) begin
			counter <= 0;
		end
		
		// Regulate the PS2 clk to be 12.5 kHz
//		if(counter == 16'd2000) begin // 40 microseconds
//			counter <= 0;
//		end
		
		if(!PS2_CLK) begin
			// Wait until we are half way into the low state of the clock
			if(counter == 16'd1000) begin
				// Keep index at 0 if we are in idle state
				if(!isReading) begin
					if(PS2_DAT == 0) begin
						index <= 1;
						data <= 0;
						isReading <= 1;
					end
				end
				// Store data and increase index
				else if(index >= 1 && index <= 8) begin
					data[index - 1] <= PS2_DAT;
					index <= index + 1;
				end
				// Reset index back to zero after we have went through one data transmition cycle
				else if (index == 10) begin
					index <= 0;
					isReading <= 0;
				end
				else begin
					index <= index + 1;
				end
			end
		end
	end
	
endmodule
