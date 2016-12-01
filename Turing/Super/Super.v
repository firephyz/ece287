module Super(lcd_data, lcd_enable, lcd_rw, lcd_rs, lcd_on, key_clock, key_data, clk, rst);

	input clk, rst;

	inout lcd_data;
	output lcd_enable;
	output lcd_rw;
	output lcd_rs;
	output lcd_on;
	
	input key_clock;
	input key_data;
	
	// Interface with the turing machine module
	reg execute;
	wire print_start, print_done;
	
	reg mem_access;
	wire [1:0] mem_io_wire;
	reg [1:0] mem_io;
	reg mem_rw;
	reg [10:0] mem_addr;
	reg head_dir;
	reg move_head;
	
	reg state_access;
	reg [10:0] state_addr;
	reg [10:0] state_in;
	
	// Internal state stuff
	reg [4:0] state;
	reg [4:0] next_state;
	
	/* TODO
	 * Must complete this assign statement
	 */
	assign mem_io_wire = state == 0 ? 2'hZ : mem_io;
	
	turing_machine turing_machine(execute, print_start, print_done, mem_access, mem_io_wire, mem_rw, mem_addr, head_dir, move_head, state_access, state_addr, state_in, clk, rst);
	
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
				 WRITE_TAPE 	= 5'h11;
				 
	// Update the state
	always@(posedge clk or negedge rst) begin
		if(rst == 0) begin
			state <= CHOICE;
		end
		else begin
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
		end
		else begin
			case(state)
				CHOICE:;
				GET_STATE:;
				GET_STATE_0:;
				GET_STATE_1:;
				GET_READ:;
				GET_READ_0:;
				GET_WRITE:;
				GET_WRITE_0:;
				GET_DIR:;
				GET_DIR_0:;
				GET_NS:;
				GET_NS_0:;
				GET_NS_1:;
				WRITE_STATE:;
				PRINT_TAPE:;
				GET_KEY:;
				DELETE_TAPE:;
				WRITE_TAPE:;
				default:;
			endcase
		end
	end
	
	// Calculate next state
	always@(*) begin
		case(state)
			CHOICE:;
			GET_STATE:;
			GET_STATE_0:;
			GET_STATE_1:;
			GET_READ:;
			GET_READ_0:;
			GET_WRITE:;
			GET_WRITE_0:;
			GET_DIR:;
			GET_DIR_0:;
			GET_NS:;
			GET_NS_0:;
			GET_NS_1:;
			WRITE_STATE:;
			PRINT_TAPE:;
			GET_KEY:;
			DELETE_TAPE:;
			WRITE_TAPE:;
			default:;
		endcase
	end

endmodule
