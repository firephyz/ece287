module Lcd(start_pin, data_in, wreq, data_out_pin, rw_pin, rs_pin, power_pin, enable_pin, clk);

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
	
	input start_pin;
	reg start;
	
	input [7:0] data_in;
	input wreq;
	
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
	wire [9:0]com;
	reg busyTick;
	reg [9:0] commands[0:19];
	reg [1:0] instrCounter;
	reg [7:0] data_out_reg;
	reg enable;
	
	reg [7:0]counter;
	
	// Connect the wire we will probe to see if the module is busy
	assign data_out_pin = busyTick ? 8'bZ : data_out_reg;
	assign busy_signal = busy_signal_storage;
	assign com = commands[instrCounter];
	
	reg has_init;
	reg done;
	reg [1:0] test;
	
	initial begin
		power <= 1;
		data_out_reg <= com[7:0];
		rw <= 1;
		rs <= 0;
		busyTick <= 1;
		busy_signal_storage <= 0;
		enable <= 1;

		counter <= 8'd0;
		
		test <= 0;
		done = 0;
		has_init = 0;
		start = 0;
		
		instrCounter <= 2'd0;
		commands[0] <= 10'b0000111000; // set 8-bit data mode, 2 lines and 5x8 font
		commands[1] <= 10'b0000000001; // Clear dislay
		commands[2] <= 10'b0000001111; // Set display on, cursor on and blinking off
		commands[3] <= 10'b0000000110; // Set cursor location to increment and no shift
	end
	
	// Main data loop
	always @(posedge clk) begin
	
		if(start_pin) begin
			start <= 1;
		end
	
		if(start) begin
			if(test == 2'd1) begin
				busyTick <= 0;
				test <= 2'd2;
			end
		
			counter <= counter + 8'b1;
			
			if (counter == 8'd30 || counter == 8'd60) begin
				enable <= !enable;
			end
			
			if (counter == 8'd60) begin
				counter <= 8'd0;
				
				busyTick <= !busyTick;
			
				if(busyTick || test == 2'd2) begin
					//rw = RW_READ;
					rs <= RS_INSTRUCTION;
					busy_signal_storage <= data_out_pin[7];
					rw <= RW_READ;
					test <= 0;
				end
				else begin
				
					busy_signal_storage <= busy_signal_storage;
				
					// Write data if requested
					if(!busy_signal) begin
						// Init the module
						if(!has_init) begin
							if(instrCounter <= 2'd3) begin
								test <= 2'd1;
								instrCounter <= instrCounter + 2'b1;
								rs <= com[9];
								rw <= com[8];
								data_out_reg <= com[7:0];
							end
							else begin
								has_init <= 1;
								rs <= RS_INSTRUCTION;
								rw <= RW_READ;
							end
						end
						// Write from given data
						else if(wreq && !done) begin
							test <= 2'd1;
							rs <= com[9];
							rw <= com[8];
							data_out_reg <= com[7:0];
							done <= 1;
						end
						else begin
							rs <= RS_DATA;
							rw <= RW_WRITE;
							data_out_reg <= data_in;
							done <= 0;
						end
					end
					else begin
						rw <= RW_READ;
						rs <= RS_INSTRUCTION;
						data_out_reg <= 8'bZ;
					end
				end
			end
		end
	end
	
endmodule
