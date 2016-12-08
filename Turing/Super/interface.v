module lcd_interface(print_start, print_done, string_num, keycode, head_loc, mem_access, mem_in, mem_rw, mem_addr, en, rs, rw, io, rst, clk);

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
	
	reg [127:0] line1;
	reg [127:0] line2;
	
	// Instantiate the lcd module
	LCD_Display lcd_module(clk, rst, line2, line1, rs, en, rw, io);
	
	reg [3:0] line_index;
	
	parameter KEY_ZERO 	= 8'h45,
				 KEY_ONE	 	= 8'h16,
				 KEY_HASH	= 8'h26,
				 KEY_SPACE	= 8'h29;
	
	parameter SYM_BLANK = 	2'b00,
				 SYM_ZERO = 	2'b01,
				 SYM_ONE = 		2'b10,
				 SYM_HASH = 	2'b11;
	
	always@(posedge clk or negedge rst) begin
		if(rst == 0) begin
			line_index <= 0;
		end
		else begin
			case(state)
				TURING_MEM_SETUP: begin
					mem_addr <= head_loc - 4'h8 + line_index;
					mem_rw <= 1;
					mem_access <= 1;
					state <= TURING_MEM_RECORD;
				end
				TURING_MEM_RECORD: begin
					case(mem_in)
						SYM_BLANK:	line1[127:120] = KEY_SPACE;
						SYM_ZERO:	line1[127:120] = KEY_ZERO;
						SYM_ONE:		line1[127:120] = KEY_ONE;
						SYM_HASH:	line1[127:120] = KEY_HASH;
					endcase
				end
			endcase
		end
	end

endmodule
