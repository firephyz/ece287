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
	
	output reg [1:0] test;
	
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
		commands[0] <= 10'b0000000001;
		commands[1] <= 10'b0000000111;
		commands[2] <= 10'b0000001111;
		commands[3] <= 10'b0000111100;
		commands[4] <= 10'b1000110000;
		commands[5] <= 10'b1001000001;
		commands[6] <= 10'b1001000001;
		commands[7] <= 10'b1001000001;
		commands[8] <= 10'b1001000001;
		commands[9] <= 10'b1001000001;
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
		
			if(test == 2'd1) begin
				busyTick <= 0;
				test <= 2'd2;
			end
		
			counter <= counter + 8'b1;
			
			if (counter == 8'd30 || counter == 8'd60) begin
				enable <= !enable;
			end
			
			if (counter == 8'd60) begin
			
				if(test == 2'd2) begin
					test <= 0;
				end
			
				counter <= 8'd0;
				
				busyTick <= !busyTick;
			
				if(busyTick || test == 2'd2) begin
					//rw = RW_READ;
					rs <= RS_INSTRUCTION;
					busy_signal_storage <= data_out_pin[7];
					rw <= RW_READ;
				end
				else begin
				
					busy_signal_storage <= busy_signal_storage;
				
					if(!busy_signal) begin
						if(instrCounter < 16'd10) begin
							test <= 2'd1;
							instrCounter <= instrCounter + 16'b1;
							rs <= com[9];
							rw <= com[8];
							data_out_reg <= com[7:0];
						end
						else begin
							rs <= RS_INSTRUCTION;
							rw <= RW_READ;
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
