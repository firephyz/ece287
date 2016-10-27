module Lcd(test, com, go_pin, data_out_pin, rw_pin, rs_pin, power_pin, enable_pin, clk);

	parameter
		RS_INSTRUCTION = 0,
		RS_DATA = 1,
		RW_WRITE = 0,
		RW_READ = 1;
		
	parameter
		Dsp_Clear 						= 8'b00000001,
		Ret_Home 						= 8'b00000010,
		Mode_Inc_No_Shift 			= 8'b00000110,
		Control_Show_Cursor_Blink 	= 8'b00001111,
		Func_8bit_2line_NormFont	= 8'b00110000;
	
	input go_pin;
	input clk;													// clock signal
	inout [7:0]data_out_pin;								// Data lines to LCD display
	output enable_pin, rw_pin, rs_pin, power_pin;	// Various control related wires to the display
	
	// Connect internal regs with output wires
	reg power;
	reg rw;
	reg rs;
	assign enable_pin = enable;
	assign power_pin = power;
	assign rw_pin = rw;
	assign rs_pin = rs;
	
	// Extra internal wires
	wire busy_signal;
	reg busy_signal_storage;
	output wire [9:0]com;
	reg busyTick;
	reg [9:0] commands[0:15];
	reg [15:0] instrCounter;
	reg [7:0] data_out_reg;
	reg enable;
	
	reg[31:0]start_counter;
	reg [7:0]counter;
	reg start;
	
	// Connect the wire we will probe to see if the module is busy
	assign data_out_pin = busyTick ? 8'bZ : data_out_reg;
	assign busy_signal = busy_signal_storage;
	assign com = commands[instrCounter];
	
	output reg test;
	
	initial begin
		power <= 1;
		data_out_reg <= com[7:0];
		rw <= 1;
		rs <= 0;
		busyTick <= 1;
		busy_signal_storage <= 0;
		enable <= 1;
		
		start <= 0;
		counter <= 8'd0;
		start_counter <= 32'd0;
		
		test <= 0;
		
		instrCounter <= 16'd0;
		commands[0] <= 8'b0000000001;
		commands[1] <= 8'b0000000110;
		commands[2] <= 8'b0000001111;
		commands[3] <= 8'b0000110000;
		commands[4] <= 8'b1000110000;
	end
	
	// Main data loop
	always @(posedge clk) begin
		
		// Wait for the switch to start the init process
		if(go_pin == 1) begin
			start <= 1;
		end
		else begin
			start <= start;
		end
		
		if(start) begin
			counter <= counter + 8'b1;
			
			if (counter == 8'd30 || counter == 8'd60) begin
				enable <= !enable;
			end
			
			if (counter == 8'd60) begin
				counter <= 8'd0;
				
				busyTick <= !busyTick;
			
				if(busyTick) begin
					//rw = RW_READ;
					rs <= RS_INSTRUCTION;
					instrCounter <= instrCounter;
					busy_signal_storage <= data_out_pin[7];
					rw <= RW_READ;
					data_out_reg <= data_out_reg;
				end
				else begin
				
					busy_signal_storage <= busy_signal_storage;
				
					if(!busy_signal) begin
						if(instrCounter < 16'd1) begin
							test <= 1;
							instrCounter <= instrCounter + 16'b1;
							rs <= com[9];
							rw <= com[8];
							data_out_reg <= com[7:0];
						end
						else begin
							instrCounter <= instrCounter;
							rs <= RS_INSTRUCTION;
							rw <= RW_READ;
							data_out_reg <= data_out_reg;
						end
					end
					else begin
						rw <= RW_READ;
						rs <= RS_INSTRUCTION;
						data_out_reg <= 8'bZ;
						instrCounter <= instrCounter;
					end
				end
			end
		end
	end
	
endmodule
