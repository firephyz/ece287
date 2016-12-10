module lcd_interface(print_start, print_done, string_num, keycode, head_loc, mem_access, mem_in, mem_rw, mem_addr, en, rs, rw, io, rst, clk, state);

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
	output reg mem_access;
	input [1:0] mem_in;
	output reg mem_rw;
	output reg [9:0] mem_addr;
	
	reg [127:0] line1;
	reg [127:0] line2;
	
	output reg [3:0] state;
	reg [3:0] line_index; // Used within the various print states to record where it is along the line
	
	// Instantiate the lcd module
	LCD_Display lcd_module(clk, rst, line2, line1, rs, en, rw, io);
	
	parameter WAIT 	= 4'h0,
				 PRINT	= 4'h1,
				 SPIN		= 4'h2,
				 PRINT_TURING_MEM_SETUP		= 4'h3,
				 PRINT_TURING_MEM_RECORD 	= 4'h4,
				 PRINT_TURING_MEM_SHIFT		= 4'h5,
				 PRINT_PRESENT_CHOICE		= 4'h6,
				 PRINT_GET_STATE				= 4'h7;
				 
	parameter 	GET_STATE_STRING 		= 5'h0,
					GET_STATE_0_STRING 	= 5'h1,
					GET_STATE_1_STRING 	= 5'h2,
					GET_READ_STRING		= 5'h3,
					GET_READ_0_STRING 	= 5'h4,
					GET_WRITE_STRING		= 5'h5,
					GET_WRITE_0_STRING	= 5'h6,
					GET_DIR_STRING			= 5'h7,
					GET_DIR_0_STRING 		= 5'h8,
					GET_NS_STRING			= 5'h9,
					GET_NS_0_STRING		= 5'hA,
					GET_NS_1_STRING		= 5'hB,
					PRESENT_CHOICE			= 5'hC,
					DISPLAY_TAPE			= 5'hD;
	
	parameter LCD_ZERO 	= 8'h30,
				 LCD_ONE	 	= 8'h31,
				 LCD_HASH	= 8'h23,
				 LCD_SPACE	= 8'h20,
				 LCD_EXP		= 8'h5E;
	
	parameter SYM_BLANK = 	2'b00,
				 SYM_ZERO = 	2'b01,
				 SYM_ONE = 		2'b10,
				 SYM_HASH = 	2'b11;
	
	always@(posedge clk or negedge rst) begin
		if(rst == 0) begin
			state <= WAIT;
			line_index <= 0;
			print_done <= 0;
			line1 <= 0;
			line2 <= 0;
		end
		else begin
			case(state)
				WAIT: begin
					if(print_start) begin
						line_index <= 4'h0;
						line1 <= 0;
						line2 <= 0;
						state <= PRINT;
					end
				end
				PRINT: begin
					case(string_num)
						DISPLAY_TAPE: state <= PRINT_TURING_MEM_SETUP;
						PRESENT_CHOICE: state <= PRINT_PRESENT_CHOICE;
						GET_STATE_STRING: state <= PRINT_GET_STATE;
						default: state <= WAIT;
					endcase
				end
				SPIN: begin
					print_done <= 0;
					if(!print_start) begin
						state <= WAIT;
					end
				end
				/*
				 * Print the tape contents
				 */
				PRINT_TURING_MEM_SETUP: begin
					mem_addr <= head_loc - 4'h8 + line_index;
					mem_rw <= 1;
					mem_access <= 1;
					state <= PRINT_TURING_MEM_RECORD;
				end
				PRINT_TURING_MEM_RECORD: begin
					// This if statement effectively makes us wait in this state for two ticks instead of one.
					// Gives the turing machine time to report back the tape contents
					if(mem_access) begin
						mem_access <= 0;
						state <= PRINT_TURING_MEM_RECORD;
					end
					else begin
						state <= PRINT_TURING_MEM_SHIFT;
						
						// Print the head pointer
						if(line_index == 4'h8) begin
							line2[7:0] <= LCD_EXP;
						end
						else begin
							line2[7:0] <= LCD_SPACE;
						end
						
						// Print the tape contents
						case(mem_in)
							SYM_BLANK:	line1[7:0] = LCD_SPACE;
							SYM_ZERO:	line1[7:0] = LCD_ZERO;
							SYM_ONE:		line1[7:0] = LCD_ONE;
							SYM_HASH:	line1[7:0] = LCD_HASH;
						endcase
					end
				end
				PRINT_TURING_MEM_SHIFT: begin
					line_index <= line_index + 4'h1;
					
					// Change state if we must
					if(line_index == 4'hF) begin
						state <= SPIN;
						print_done <= 1;
					end
					else begin
						state <= PRINT_TURING_MEM_SETUP;
						line1 <= line1 << 8;
						line2 <= line2 << 8;
					end
				end
				/*
				 * Present the user with the choice to edit the tape or edit states
				 */
				 PRINT_PRESENT_CHOICE: begin
					line1 <= 128'h4564697420546170653A203020202020;
					line2 <= 128'h45646974205374617465733A20312020;
					state <= SPIN;
					print_done <= 1;
				 end
				 /*
				 * Prompt the user for getting the state to edit
				 */
				 PRINT_GET_STATE: begin
					line1 <= 128'h456E7465722053746174653A20202020;
					line2 <= 128'h20202020202020202020202020202020;
					state <= SPIN;
					print_done <= 1;
				 end
			endcase
		end
	end

endmodule
