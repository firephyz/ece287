module Lcd(data_out_pin, rw_pin, rs_pin, power_pin, enable_pin, clk);

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

	input clk;													// clock signal
	
	output [7:0]data_out_pin;								// Output lines to LCD display
	output enable_pin, rw_pin, rs_pin, power_pin;	// Various control related wires to the display
	
	// Connect internal regs with output wires
	reg [7:0]data_out;
	reg power;
	reg enable;
	reg rw;
	reg rs;
	assign enable_pin = enable;
	assign power_pin = power;
	assign data_out_pin = data_out;
	assign rw_pin = rw;
	assign rs_pin = rs;
	
	// Extra internal wires
	wire busy_signal;
	reg has_init;
	reg busyTick;
	reg [9:0] commands[0:15];
	reg [15:0]instrCounter;
	
	// Connect the wire we will probe to see if the module is busy
	assign busy_signal = data_out[7];
	
	initial begin
		power = 1;
		has_init = 0;
		data_out = 0;
		enable = 1;
		rw = 0;
		rs = 0;
		busyTick = 1;
		
		instrCounter = 16'd0;
		commands[0] = 8'b0000000001;
		commands[1] = 8'b0000000110;
		commands[2] = 8'b0000001111;
		commands[3] = 8'b0000110000;
	end

	// Main data loop
	always @(posedge clk) begin
		// Initialize the display
		if(!has_init) begin
		
			busyTick = !busyTick;
		
			if(busyTick) begin
				rw = RW_READ;
				rs = RS_INSTRUCTION;
				data_out = 8'd0;
			end
			else begin
				if(!busy_signal) begin
					rs = commands[instrCounter][9];
					rw = commands[instrCounter][8];
					data_out = commands[instrCounter][7:0];
					instrCounter = instrCounter + 16'd1;
				end
			end
		end
	end
	
	always@(negedge clk) begin
		// Only send data to the lcd if it isn't busy
		if(!busy_signal) begin
		end
		else begin
		end
	end
endmodule