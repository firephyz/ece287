module Test(instr_in, data_in, exec, data_out_pin, rw_pin, rs_pin, power_pin, enable, clk);

	parameter
		RS_INSTRUCTION = 0,
		RS_DATA = 1,
		WRITE = 0,
		READ = 1;

	input clk;											// clock signal
	input [7:0]instr_in;								// Instruction to execute
	input [7:0]data_in;								// Data to process on execution
	input exec;											// Tells this module to send the instruction and data to the LCD display
	output [7:0]data_out_pin;						// Output lines to LCD display
	output enable, rw_pin, rs_pin, power_pin;		// Various control related wires to the display
	
	wire busy_signal;
	reg [1:0] has_init;
	reg has_executed; // Ensures that once the instruction is executed once, it doesn't get
							// executed again until exec goes low first. (protects against constant execution)
	
	// Connect internal regs with output wires
	reg rw, rs;
	reg [7:0]data_out;
	reg power;
	assign power_pin = power;
	assign data_out_pin = data_out;
	assign rw_pin = rw;
	assign rs_pin = rs;
	
	// Turn on the display and init wires
	assign enable = 1;
	assign busy_signal = data_out[7];
	
	initial begin
		power = 0;
		has_init = 3;
		has_executed = 0;
		rs = RS_INSTRUCTION;
		rw = READ;
		data_out = 0;
	end
	
	// Main data loop
	always @(posedge clk) begin
		// Always check if we are busy
		rs = RS_INSTRUCTION;
		rw = READ;

		// Initialize the display. Skip on clock cycle to ensure that the
		// dispay has turned on. 
		if(has_init[1] == 1) begin
			has_executed = 0;
			has_init = 1;
			power = 0;
		end
		else if(has_init[0] == 1) begin
			has_executed = 0;
			has_init = 0;
			power = 1;
		end
		// Only send data to the lcd if it isn't busy
		else if(!busy_signal) begin
			// Send data if we are requested to
			if(exec) begin
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
				has_executed = 0;
			end
		end
	end
	
endmodule
