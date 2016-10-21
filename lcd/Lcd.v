module Lcd(test, start, data_out_pin, rw_pin, rs_pin, power_pin, enable_pin, clk);

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
	
	input start;
	input clk;													// clock signal
	inout [7:0]data_out_pin;								// Data lines to LCD display
	output enable_pin, rw_pin, rs_pin, power_pin;	// Various control related wires to the display
	
	// Connect internal regs with output wires
	reg power;
	reg enable;
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
	reg has_init;
	reg busyTick;
	reg [9:0] commands[0:15];
	reg [15:0] instrCounter;
	reg [7:0] data_out_reg;
	
	// Connect the wire we will probe to see if the module is busy
	assign data_out_pin = busyTick ? 8'bZ : data_out_reg;
	assign busy_signal = busy_signal_storage;
	assign com = commands[instrCounter];
	
	output reg test;
	
	initial begin
		power = 1;
		has_init = 0;
		data_out_reg = 8'bZ;
		enable = 1;
		rw = 0;
		rs = 0;
		busyTick = 0;
		busy_signal_storage = 0;
		
		instrCounter = 16'd0;
		commands[0] = 8'b0000000001;
		commands[1] = 8'b0000000110;
		commands[2] = 8'b0000001111;
		commands[3] = 8'b0000110000;
		
		test = 0;
	end

	// Main data loop
	always @(posedge clk) begin
		
		if(start) begin
			// Initialize the display
			if(!has_init) begin
			
				busyTick = !busyTick;
			
				if(busyTick) begin
					//rw = RW_READ;
					rs = RS_INSTRUCTION;
					instrCounter = instrCounter;
					busy_signal_storage = data_out_pin[7];
					
					if(test) begin
						rw = RW_WRITE;
						data_out_reg = data_out_reg;
					end
					else begin
						rw = RW_READ;
						data_out_reg = 8'bZ;
					end
				end
				else begin
				
					busy_signal_storage = busy_signal_storage;
				
					if(!busy_signal) begin
						rs = com[9];
						rw = com[8];
						data_out_reg = com[7:0];
						//instrCounter = instrCounter + 16'b1;
						instrCounter = instrCounter;
						test = 1;
					end
					else begin
						rw = RW_READ;
						rs = RS_INSTRUCTION;
						data_out_reg = 8'bZ;
						instrCounter = instrCounter;
					end
				end
			end
		end
	end
endmodule
