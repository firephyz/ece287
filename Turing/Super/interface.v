module lcd_interface(print_start, print_done, string_num, keycode, head_loc, mem_access, mem_in, mem_rw, mem_addr, en, rs, rw, io, rst, clk);

	input clk;
	input rst;

	// LCD connections
	output en;
	output rs, rw;
	inout [7:0] io;
	
	// Interface wires with turing machine and super module
	input print_start;
	output reg print_done;
	input [4:0] string_num;
	input [7:0] keycode;
	input [9:0] head_loc;
	output mem_access;
	input [1:0] mem_in;
	output mem_rw;
	output [9:0] mem_addr;
	
	// LCD control wires
	reg rs_sel, rw_sel;
	reg [7:0] data;
	reg execute;
	wire is_ready;
	reg did_print;
	
	// Instantiate the lcd module
	lcd_controller lcd_module(rs_sel, rw_sel, data, execute, is_ready, en, rs, rw, io, rst, clk);
	
	always@(posedge clk or negedge rst) begin
		if(rst == 0) begin
			rs_sel <= 0;
			rw_sel <= 0;
			data <= 0;
			execute <= 0;
		end
		else begin
			if(is_ready) begin
				rs_sel <= 1;
				rw_sel <= 0;
				data <= 8'h41;
				execute <= 1;
			end
			else if(did_print) begin
				execute <= 0;
			end
			else begin
				execute <= 0;
			end
		end
	end

endmodule
