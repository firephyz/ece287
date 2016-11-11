module ps2(test, data, index, isReading, PS2_CLK, PS2_DAT, clk, a1, b1, c1, d1, e1, f1, g1,
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
	seven_seg seg0(result[0], result[1], result[2], result[3], a1, b1, c1, d1, e1, f1, g1);
	seven_seg seg1(result[4], result[5], result[6], result[7], a2, b2, c2, d2, e2, f2, g2);
	
	reg [1:0] catch;
	reg [7:0] result;
	
	initial begin
		counter <= 0;
		data <= 0;
		index <= 0;
		isReading <= 0;
		catch = 2'd0;
	end
	
	always@(posedge clk) begin
		
		if(oldClkValue && !PS2_CLK) begin
			oldClkValue <= PS2_CLK;
			counter <= 16'd0;
		end
		else if(!oldClkValue) begin
			counter <= counter + 16'd1;
			oldClkValue <= PS2_CLK;
		end
		else begin
			counter <= 16'd0;
		end
		
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
					data <= (data >> 1) | (PS2_DAT << 7);
					index <= index + 4'd1;
				end
				else begin
					index <= index + 4'd1;
				end
			end
		end
		// Reset index back to zero after we have went through one data transmition cycle
		else if (index == 10) begin
			index <= 0;
			isReading <= 0;
			if(catch == 2'd0) begin
				if(data != 8'hf0)
					result <= data;
				catch <= 2'd1;
			end
			else if(catch == 2'd1) begin
				catch <= 2'd2;
			end
			else begin
				catch <= 2'd0;
			end
		end
	end
	
endmodule
