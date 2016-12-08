module lcd_interface(print_start, print_done, string_num, keycode, head_loc, mem_access, mem_in, mem_rw, mem_addr, en, rs, rw, io, rst, clk, did_print, data, is_ready);

	input clk;
	input rst;

	// LCD connections
	output en;
	output rs, rw;
	inout [7:0] io;
	
	// Interface wires with turing machine and super module
	input print_start;
	output wire print_done;
	input [4:0] string_num;
	input [7:0] keycode;
	input [9:0] head_loc;
	output mem_access;
	input [1:0] mem_in;
	output mem_rw;
	output [9:0] mem_addr;
	
	// LCD control wires
	reg rs_sel, rw_sel;
	output reg [7:0] data;
	reg execute;
	output wire is_ready;
	output reg [1:0] did_print;
	
	assign print_done = is_ready;
	
	// Instantiate the lcd module
	lcd_controller lcd_module(rs_sel, rw_sel, data, execute, is_ready, en, rs, rw, io, rst, clk);
	
	always@(posedge clk or negedge rst) begin
		if(rst == 0) begin
			rs_sel <= 0;
			rw_sel <= 0;
			data <= 0;
			execute <= 0;
			did_print <= 0;
		end
		else begin
			if(did_print == 2'h3) begin
				execute <= 0;
			end
			else if(is_ready) begin
				execute <= 1;
				case(did_print)
					2'h0: begin
						rs_sel <= 1;
						rw_sel <= 0;
						data <= 8'h41;
						did_print <= 2'h1;
					end
					2'h1: begin
						rs_sel <= 1;
						rw_sel <= 0;
						data <= 8'h42;
						did_print <= 2'h2;
					end
					2'h2: begin
						rs_sel <= 1;
						rw_sel <= 0;
						data <= 8'h43;
						did_print <= 2'h3;
					end
				endcase
			end
			else begin
				execute <= 0;
			end
		end
	end

endmodule
