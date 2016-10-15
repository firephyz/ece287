module LCD_Interface(data_out_pin, rw_pin, rs_pin, power_pin, enable_pin, clk);

	parameter
		RS_INSTRUCTION = 0,
		RS_DATA = 1,
		WRITE = 0,
		READ = 1;
		
	parameter
		Dsp_Clear 						= 8'b00000001,
		Ret_Home 						= 8'b00000010,
		Mode_Inc_No_Shift 			= 8'b00000110,
		Control_Show_Cursor_Blink 	= 8'b00001111,
		Func_8bit_2line_NormFont	= 8'b00110000;

	input clk;													// clock signal
	wire [7:0]instr_in;										// Instruction to execute
	wire [7:0]data_in;										// Data to process on execution
	wire exec;													// Tells this module to send the instruction and data to the LCD display
	output [7:0]data_out_pin;								// Output lines to LCD display
	output enable_pin, rw_pin, rs_pin, power_pin;	// Various control related wires to the display
	
	wire busy_signal;
	reg [23:0]counter;
	reg has_init;
	reg [9:0]dataReg; // Used to store the next things to execute
							//  9   8   7   6   5   4   3   2   1   0
							//  rs  rw  d7  d6  d5  d4  d3  d2  d1  d0
	reg has_executed; // Ensures that once the instruction is executed once, it doesn't get
							// executed again until exec goes low first. (protects against constant execution)
	
	// Connect internal regs with output wires
	reg [7:0]data_out;
	reg power;
	assign enable_pin = enableNegReg | enablePosReg;
	assign power_pin = power;
	assign data_out_pin = data_out;
	assign rw_pin = rwNegReg | rwPosReg;
	assign rs_pin = rsNegReg | rsPosReg;
	
	// Connect the wire we will probe to see if the module is busy
	assign busy_signal = data_out[7];
	
	initial begin
		power = 1;
		has_init = 0;
		has_executed = 0;
		data_out = 0;
		counter = 0;
		dataReg = 0;
	end
	
	reg rsPosReg;
	reg rwPosReg;
	reg enablePosReg;
	// Main data loop
	always @(posedge clk) begin
	
		// Read the busy flag
		enablePosReg = 1;
		rwPosReg = READ;
		rsPosReg = RS_INSTRUCTION;
	
		//Increment counter
		counter = counter + 24'd1;

		// Initialize the display. Must properly time the execution of these
		// instructions.
		if(!has_init) begin
			// clock start
			if(counter == 1) begin
				dataReg[9] = RS_INSTRUCTION;
				dataReg[8] = WRITE;
				dataReg[7:0] = Dsp_Clear;
			end
			// 1.5 ms later
			//else if(counter == 75000) begin
			
			//end
		end
		// Send data if we are requested to
		else if(exec) begin
			dataReg = 10'd0;
		
			// Execute the instruction and set the has_executed flag 
			// to ensure that it only runs once
			if(!has_executed) begin
				has_executed = 1;
			end
			else begin
				has_executed = 1;
			end
		end
		else begin
			dataReg = 10'd0;
			has_executed = 0;
		end
	end
	
	reg rsNegReg;
	reg rwNegReg;
	reg enableNegReg;
	always@(negedge clk) begin
		// Only send data to the lcd if it isn't busy
		if(!busy_signal) begin
			// Load the data onto the buses and send it
			rsNegReg = dataReg[9];
			rwNegReg = dataReg[8];
			enableNegReg = 1;
			data_out = dataReg[7:0];
		end
		else begin
			rsNegReg = 0;
			rwNegReg = 0;
			enableNegReg = 0;
			data_out = 8'd0;
		end
	end
endmodule
