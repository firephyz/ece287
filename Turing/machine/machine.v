module turing_machine(execute, print_start, mem_rw, mem_addr, state_rw, state_addr, clk, rst, state, next_state);

	parameter TURING_MEMORY_SIZE = 1024;

	// Tape symbols
	parameter SYM_BLANK = 	2'b00,
				 SYM_ZERO = 	2'b01,
				 SYM_ONE = 		2'b10,
				 SYM_HASH = 	2'b11;
				 
	parameter LEFT = 	1'b0,
				 RIGHT = 1'b1;
	
	// State names
	parameter STATE_PRINT = 	3'h0,
				 STATE_READ = 		3'h1,
				 STATE_FETCH = 	3'h2,
				 STATE_WRITE = 	3'h3,
				 STATE_UPDATE = 	3'h4,
				 STATE_DONE = 		3'h5;

	// Clock and reset
	input clk, rst;
	
	// Control wires
	input execute;

	// Interfacing with the lcd control module
	wire 		print_done;
	input 		mem_rw,
					state_rw;
	input [9:0] mem_addr;
	input [9:0] state_addr;
	
	output reg	print_start;
	
	// Memories
	reg [10:0] index; // Used to initialize the memory contents in a for loop
	reg [1:0] memory[TURING_MEMORY_SIZE - 1:0];
	reg [10:0] t_states[2047:0];
	
	// Internal state registeres
	output reg [2:0] 	state; // This FSM state
	output reg [2:0] 	next_state;
	reg [1:0]	read;
	reg [9:0] 	head;
	reg [7:0]	t_state; // Turing machine state
	reg [10:0] 	instr;
	
	timer(30, print_start, print_done, clk);
	
	// Update the state
	always@(posedge clk or negedge rst) begin
		if(rst == 0) begin
			state <= STATE_PRINT;
			
			t_states[{8'h00, 2'b01}] <= {2'b10, 1'b1, 8'h01};
			t_states[{8'h00, 2'b10}] <= {2'b01, 1'b0, 8'h02};
			t_states[{8'h01, 2'b00}] <= {2'b00, 1'b0, 8'h00};
			t_states[{8'h01, 2'b01}] <= {2'b01, 1'b1, 8'h01};
			t_states[{8'h01, 2'b10}] <= {2'b10, 1'b1, 8'h01};
			t_states[{8'h02, 2'b00}] <= {2'b10, 1'b1, 8'h01};
			t_states[{8'h02, 2'b01}] <= {2'b10, 1'b1, 8'h01};
			t_states[{8'h02, 2'b10}] <= {2'b01, 1'b0, 8'h02};
		end
		else begin
			state <= next_state;
		end
	end
	
	// Toggle wires and regs
	always@(posedge clk or negedge rst) begin
		if(rst == 0) begin
			read <= 0;
			head <= TURING_MEMORY_SIZE / 2;
			instr <= 0;
			t_state <= 0;
			print_start <= 0;
			
			for(index = 0; index < TURING_MEMORY_SIZE; index = index + 1) begin
				if(index == TURING_MEMORY_SIZE / 2)
					memory[index] <= SYM_ZERO;
				else
					memory[index] <= SYM_BLANK;
			end
		end
		else begin
			case(state)
				STATE_PRINT: 	print_start <= 1;
				STATE_READ: begin
					print_start <= 0;
					read <= memory[head];
				end
				STATE_FETCH: 	instr <= t_states[{t_state, read}];
				STATE_WRITE: 	memory[head] <= instr[10:9];
				STATE_UPDATE: begin
					if(instr[8] == LEFT) head <= head + 10'b1;
					else head <= head - 10'b1;
					t_state <= instr[7:0];
				end
				default:;
			endcase
		end
	end
	
	// Compute the next state
	always@(*) begin
		case(state)
				STATE_PRINT: begin
					if(print_done) next_state = STATE_READ;
					else next_state = STATE_PRINT;
				end
				STATE_READ: next_state = STATE_FETCH;
				STATE_FETCH: next_state = STATE_WRITE;
				STATE_WRITE: next_state = STATE_UPDATE;
				STATE_UPDATE: begin
					if(instr[7:0] == 8'hFF) next_state = STATE_DONE;
					else next_state = STATE_PRINT;
				end
				default: next_state <= STATE_PRINT;
			endcase
	end
	
endmodule
