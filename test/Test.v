module Test(clk, data_in, data_out_pin, enable, rw_pin, rs_pin, power, display_out);

	input clk;
	input [7:0]data_in;
	output [7:0]data_out_pin;
	output [6:0]display_out;
	output enable, rw_pin, rs_pin, power;
	wire busy_signal;
	
	// Connect internal regs with output wires
	reg [7:0]data_out;
	reg rw, rs;
	assign data_out_pin = data_out;
	assign rw_pin = rw;
	assign rs_pin = rs;
	
	// Turn on the display and init wires
	assign power = 1;
	assign enable = 1;
	assign busy_signal = data_out[7];
	
	// Main data loop
	always @(posedge clk)
	begin
		rs = 0;
		rw = 1;
		
		// Only send data to the lcd if it isn't busy
		if(!busy_signal)
		begin
			rs = 0;
			rw = 1;
			data_out = 8'h0f;
		end
		// If busy, keep checking until we aren't busy
		else
		begin
			rs = 0;
			rw = 1;
			data_out = 8'h00;
		end
	end
	
	// Send output to seven seg
	seven_seg display(data_out[3:0], display_out);
	
endmodule
