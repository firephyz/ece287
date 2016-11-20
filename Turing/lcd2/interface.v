module lcd_interface(en, rs, rw, io, rst, clk);

	input clk;
	input rst;

	// LCD connections
	output en;
	output rs, rw;
	inout [7:0] io;
	
	// LCD control wires
	reg rs_sel, rw_sel;
	reg [7:0] data;
	reg execute;
	wire is_ready;
	
	// Misc stuff
	reg is_done;
	
	// Instantiate the lcd module
	lcd_controller lcd_module(rs_sel, rw_sel, data, execute, is_ready, en, rs, rw, io, clk, rst);
	
	always@(posedge clk or negedge rst) begin
		if(rst == 0) begin
			rs_sel <= 0;
			rw_sel <= 0;
			data <= 0;
			execute <= 0;
			is_done <= 0;
		end
		else begin
			if(!is_done && is_ready) begin
				is_done <= 1;
				
				rs_sel <= 1;
				rw_sel <= 0;
				data <= 8'h41;
				execute <= 1;
			end
			else begin
				execute <= 0;
			end
		end
	end

endmodule
