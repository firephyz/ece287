module Super(lcd_data, lcd_enable, lcd_rw, lcd_rs, key_clock, key_data, clk, rst);

	input clk, rst;

	inout lcd_data;
	output lcd_enable;
	output lcd_rw;
	output lcd_rs;
	
	input key_clock;
	input key_data;
	wire is_pressed;
	wire [7:0] keycode;
	wire [7:0] break_code;
	
	reg [31:0] timer_max;
	reg timer_start;
	wire timer_done;
	
	// Interface with the turing machine module
	reg execute;
	wire execute_is_done;
	reg print_start;
	wire print_start_wire;
	wire print_done;
	
	reg mem_access; // Set by super to access memory
	wire mem_access_wire; // Set by lcd interface to access memory
	wire [1:0] mem_io_wire;
	reg [1:0] mem_io;
	reg mem_rw;
	wire mem_rw_wire;
	reg [9:0] mem_addr;
	wire [9:0] mem_addr_wire;	
	wire [9:0] head_loc;
	reg head_dir;
	reg move_head;
	
	reg state_access;
	reg [10:0] state_addr;
	reg [10:0] state_in;
	
	reg [4:0] string_num;
	
	// Internal state stuff
	reg [4:0] state;
	reg [4:0] next_state;
	reg [4:0] prev_state;
	
	/* TODO
	 * Must complete this assign statement
	 */
	// Passes mem_io data into the turing machine for some states.
	// For others, it relays mem_io from the turing machine to the Super and lcd modules
	assign mem_io_wire = state == 0 ? 2'hZ : mem_io;
	
	assign mem_access_wire = state == 0 ? 1'hZ : mem_access;
	assign mem_rw_wire = state == 0 ? 1'hZ : mem_rw;
	assign mem_addr_wire = state == 0 ? 10'hZ : mem_addr;
	assign print_start_wire = state == 0 ? 1'hZ : print_start;
	
	turing_machine turing_machine(execute, execute_is_done, print_start_wire, print_done, mem_access, mem_io_wire, mem_rw, mem_addr, head_loc, head_dir, move_head, state_access, state_addr, state_in, clk, rst);
	keyboard_wrapper keyboard_wrapper(keycode, break_code, is_pressed, key_data, key_clock);
	timer timer(timer_max, timer_start, timer_done, clk);
	lcd_interface lcd_interface(print_start_wire, print_done, string_num, keycode, head_loc, mem_access_wire, mem_io_wire, mem_rw_wire, mem_addr_wire, lcd_enable, lcd_rs, lcd_rw, lcd_data, rst, clk);
	
	parameter CHOICE 			= 5'h0,
				 GET_STATE 		= 5'h1,
				 GET_STATE_0 	= 5'h2,
				 GET_STATE_1 	= 5'h3,
				 GET_READ 		= 5'h4,
				 GET_READ_0 	= 5'h5,
				 GET_WRITE 		= 5'h6,
				 GET_WRITE_0 	= 5'h7,
				 GET_DIR 		= 5'h8,
				 GET_DIR_0 		= 5'h9,
				 GET_NS 			= 5'hA,
				 GET_NS_0 		= 5'hB,
				 GET_NS_1 		= 5'hC,
				 WRITE_STATE 	= 5'hD,
				 PRINT_TAPE 	= 5'hE,
				 GET_KEY 		= 5'hF,
				 DELETE_TAPE 	= 5'h10,
				 WRITE_TAPE 	= 5'h11,
				 TURING_START  = 5'h12,
				 LCD_OFF_TIMER_START	= 5'h13;
			
	parameter KEY_ZERO 	= 8'h45,
				 KEY_ONE	 	= 8'h16,
				 KEY_HASH	= 8'h26,
				 KEY_SPACE	= 8'h29,
				 KEY_LEFT	= 8'h1C,
				 KEY_RIGHT	= 8'h23,
				 KEY_ENTER	= 8'h5A,
				 KEY_BACK	= 8'h66;
				 
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
					GET_NS_1_STRING		= 5'hB;
				 
	parameter HALF_SECOND = 32'd25000000;
				 
	// Update the state
	always@(posedge clk or negedge rst) begin
		if(rst == 0) begin
			state <= CHOICE;
			prev_state <= CHOICE;
		end
		else begin
			if(state == LCD_OFF_TIMER_START)
				if(timer_done && print_done) begin
					state <= next_state;
					prev_state <= state;
				end
			else if(state == GET_STATE ||
					  state == GET_READ  ||
					  state == GET_WRITE ||
					  state == GET_DIR   ||
					  state == GET_NS)
				if(print_done) begin
					state <= next_state;
					prev_state <= state;
				end
			else
				prev_state <= state;
				state <= next_state;
		end
	end
	
	// Set control wires
	always@(posedge clk or negedge rst) begin
		if(rst == 0) begin
			execute <= 0;
			
			mem_access <= 0;
			mem_io <= 0;
			mem_rw <= 0;
			mem_addr <= 0;
			head_dir <= 0;
			move_head <= 0;
			
			state_access <= 0;
			state_addr <= 0;
			state_in <= 0;
			
			string_num <= 0;
			timer_start <= 0;
			timer_max <= 0;
			print_start <= 0;
		end
		else begin
			case(state)
				GET_STATE: begin
					print_start <= 1;
					string_num <= GET_STATE_STRING;
					timer_start <= 0;
				end
				GET_READ: begin
					print_start <= 1;
					string_num <= GET_READ_STRING;
					timer_start <= 0;
				end
				GET_WRITE: begin
					print_start <= 1;
					string_num <= GET_WRITE_STRING;
					timer_start <= 0;
				end
				GET_DIR: begin
					print_start <= 1;
					string_num <= GET_DIR_STRING;
					timer_start <= 0;
				end
				GET_NS: begin
					print_start <= 1;
					string_num <= GET_NS_STRING;
					timer_start <= 0;
				end
				WRITE_STATE:;
				PRINT_TAPE:;
				GET_KEY:;
				DELETE_TAPE:;
				WRITE_TAPE:;
				TURING_START:;
				LCD_OFF_TIMER_START: begin
					case(prev_state)
						GET_STATE_0: begin
							timer_max <= HALF_SECOND;
							timer_start <= 1;
							print_start <= 1;
							string_num 	<= GET_STATE_0_STRING;
						end
						GET_STATE_1: begin
							timer_max <= HALF_SECOND;
							timer_start <= 1;
							print_start <= 1;
							string_num <= GET_STATE_1_STRING;
						end
						GET_READ_0: begin
							timer_max <= HALF_SECOND;
							timer_start <= 1;
							print_start <= 1;
							string_num <= GET_READ_0_STRING;
						end
						GET_WRITE_0: begin
							timer_max <= HALF_SECOND;
							timer_start <= 1;
							print_start <= 1;
							string_num <= GET_WRITE_0_STRING;
						end
						GET_DIR_0: begin
							timer_max <= HALF_SECOND;
							timer_start <= 1;
							print_start <= 1;
							string_num <= GET_DIR_0_STRING;
						end
						GET_NS_0: begin
							timer_max <= HALF_SECOND;
							timer_start <= 1;
							print_start <= 1;
							string_num <= GET_NS_0_STRING;
						end
						GET_NS_1: begin
							timer_max <= HALF_SECOND;
							timer_start <= 1;
							print_start <= 1;
							string_num <= GET_NS_1_STRING;
						end
					endcase
					print_start <= 0;
				end
				default:	begin
					execute <= 0;
			
					mem_access <= 0;
					mem_io <= 0;
					mem_rw <= 0;
					mem_addr <= 0;
					head_dir <= 0;
					move_head <= 0;
					
					state_access <= 0;
					state_addr <= 0;
					state_in <= 0;
					
					string_num <= 0;
					timer_start <= 0;
					timer_max <= 0;
				end
			endcase
		end
	end
	
	// Calculate next state
	always@(*) begin
		case(state)
			CHOICE: begin
				if(is_pressed) begin
					if(keycode == KEY_ZERO)
						next_state = PRINT_TAPE;
					else if(keycode == KEY_ONE)
						next_state = GET_STATE;
					else
						next_state = CHOICE;
				end
				else
					next_state = CHOICE;
			end
			GET_STATE: 		next_state = LCD_OFF_TIMER_START;
			GET_STATE_0: begin
				if(is_pressed) begin
					if(keycode == KEY_ENTER)
						next_state = TURING_START;
					else
						next_state = LCD_OFF_TIMER_START;
				end
				else next_state = GET_STATE_0;
			end
			GET_STATE_1: begin
				if(is_pressed)
					next_state = LCD_OFF_TIMER_START;
				else
					next_state = GET_STATE_1;
			end
			GET_READ: 		next_state = LCD_OFF_TIMER_START;
			GET_READ_0: begin
				if(is_pressed)
					next_state = LCD_OFF_TIMER_START;
				else
					next_state = GET_READ_0;
			end
			GET_WRITE:		next_state = LCD_OFF_TIMER_START;
			GET_WRITE_0: begin
				if(is_pressed)
					next_state = LCD_OFF_TIMER_START;
				else
					next_state = GET_WRITE_0;
			end
			GET_DIR:			next_state = LCD_OFF_TIMER_START;
			GET_DIR_0: begin
				if(is_pressed)
					next_state = LCD_OFF_TIMER_START;
				else
					next_state = GET_DIR_0;
			end
			GET_NS:			next_state = LCD_OFF_TIMER_START;
			GET_NS_0: begin
				if(is_pressed)
					next_state = LCD_OFF_TIMER_START;
				else
					next_state = GET_NS_0;
			end
			GET_NS_1: begin
				if(is_pressed)
					next_state = LCD_OFF_TIMER_START;
				else
					next_state = GET_NS_1;
			end
			WRITE_STATE:	next_state = GET_STATE;
			PRINT_TAPE:		next_state = GET_KEY;
			GET_KEY: begin
				if(is_pressed) begin
					if(keycode == KEY_BACK)
						next_state = DELETE_TAPE;
					else if(keycode == KEY_ENTER)
						next_state = GET_STATE;
					else
						next_state = WRITE_TAPE;
				end
				else next_state = GET_KEY;
			end
			DELETE_TAPE: 	next_state = PRINT_TAPE;
			WRITE_TAPE:		next_state = PRINT_TAPE;
			TURING_START: begin
				if(execute_is_done)
					next_state = PRINT_TAPE;
				else
					next_state = TURING_START;
			end
			LCD_OFF_TIMER_START: begin
				case(prev_state)
					GET_STATE: 		next_state = GET_STATE_0;
					GET_STATE_0: 	next_state = GET_STATE_1;
					GET_STATE_1:	next_state = GET_READ;
					GET_READ: 		next_state = GET_READ_0;
					GET_READ_0: 	next_state = GET_WRITE;
					GET_WRITE:		next_state = GET_WRITE_0;
					GET_WRITE_0:	next_state = GET_DIR;
					GET_DIR:			next_state = GET_DIR_0;
					GET_DIR_0:		next_state = GET_NS;
					GET_NS:			next_state = GET_NS_0;
					GET_NS_0:		next_state = GET_NS_1;
					GET_NS_1:		next_state = WRITE_STATE;
					default: 		next_state = CHOICE;
				endcase
			end
			default: 		next_state = CHOICE;
		endcase
	end

endmodule
