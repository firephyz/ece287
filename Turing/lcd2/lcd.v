module lcd_controller(rs_in, rw_in, data, ex, ready, en, rs, rw, io, rst, clk, state, timer_done, instr);

	// Module control IO
	input rs_in, rw_in;
	input [7:0] data;
	input ex;
	output ready;
	
	// LCD control IO
	output en, rs, rw;
	inout [7:0] io;
	
	// System IO
	input rst, clk;
	
	// Internal state variables
	output reg [3:0] state;
	reg [3:0] next_state;
	output reg [1:0] instr;
	wire busy;
	reg done_init;
	
	reg [7:0] io_buffer;
	reg rw_reg, rs_reg, en_reg, ready_reg;
	
	// Connect the IO pins to the internal variables above
	assign busy = io[7];
	assign io = (state == INIT_START) ||
					(state == WTI)
					? 8'bZ : io_buffer;
	assign rw = rw_reg;
	assign rs = rs_reg;
	assign en = en_reg;
	assign ready = ready_reg;
	
	// Timer module
	reg timer_start;
	output wire timer_done;
	timer nano_500(32'd30, timer_start, timer_done, clk);
	
	// States
	parameter // Init states
				 INIT_START = 4'h0,
				 WTI			= 4'h1,
				 CLEAR		= 4'h2,
				 FUNC_SET	= 4'h3,
				 TURN_ON		= 4'h4,
				 INC_ADDR	= 4'h5,
				 INIT_SEND	= 4'h6,
				 INC_INSTR	= 4'h7,
				 
				 // Idle state
				 DATA_WAIT	= 4'h8,
				 
				 // Execute states
				 EX_SETUP	= 4'hA,
				 EX_SEND		= 4'hB,
				 EX_SPIN		= 4'hC;
				 
				 // Timer set state. Used when the current state also required the timer
	
	// Reset and state transition
	always@(posedge clk or negedge rst) begin
		if(rst == 0) begin
			state <= INIT_START;
		end
		else begin
			state <= next_state;
		end
	end
	
	// Finds the next state
	always@(*) begin
	
		if(rst == 0) begin
			next_state = INIT_START;
			timer_start = 0;
		end
		else begin
			case(state)
				INIT_START: begin
					if(timer_done == 1) begin
						next_state = WTI;
						timer_start = 0;
					end
					else begin
						next_state = INIT_START;
						timer_start = 1;
					end
				end
				WTI: begin
					if(timer_done == 1) begin
						if(busy == 1) begin
							next_state = INIT_START;
							timer_start = 0;
						end
						else begin
							if(done_init == 1) begin
								timer_start = 0;
								next_state = DATA_WAIT;
							end
							else begin
								timer_start = 1;
								case(instr)
									2'b00: next_state = CLEAR;
									2'b01: next_state = FUNC_SET;
									2'b10: next_state = TURN_ON;
									2'b11: next_state = INC_ADDR;
								endcase
							end
						end
					end
					else begin
						next_state = WTI;
						timer_start = 1;
					end
				end
				CLEAR: begin
					if(timer_done == 1) begin
						next_state = INIT_SEND;
						timer_start = 0;
					end
					else begin
						next_state = CLEAR;
						timer_start = 1;
					end
				end
				FUNC_SET: begin
					if(timer_done == 1) begin
						next_state = INIT_SEND;
						timer_start = 0;
					end
					else begin
						next_state = FUNC_SET;
						timer_start = 1;
					end
				end
				TURN_ON: begin
					if(timer_done == 1) begin
						next_state = INIT_SEND;
						timer_start = 0;
					end
					else begin
						next_state = TURN_ON;
						timer_start = 1;
					end
				end
				INC_ADDR: begin
					if(timer_done == 1) begin
						next_state = INIT_SEND;
						timer_start = 0;
					end
					else begin
						next_state = INC_ADDR;
						timer_start = 1;
					end
				end
				INIT_SEND: begin
					if(timer_done) begin
						next_state = INC_INSTR;
						timer_start = 0;
					end
					else begin
						next_state = INIT_SEND;
						timer_start = 1;
					end
				end
				INC_INSTR: begin
					next_state = INIT_START;
					timer_start = 0;
				end
				DATA_WAIT: begin
					if(rst == 0) begin
						next_state = INIT_START;
						timer_start = 0;
					end
					else begin
						if(ex == 1) begin
							next_state = DATA_WAIT;
							timer_start = 0;
						end
						else begin
							next_state = EX_SETUP;
							timer_start = 1;
						end
					end
				end
				EX_SETUP: begin
					if(timer_done) begin
						next_state = EX_SEND;
						timer_start = 0;
					end
					else begin
						next_state = EX_SETUP;
						timer_start = 1;
					end
				end
				EX_SEND: begin
					if(timer_done) begin
						next_state = EX_SPIN;
						timer_start = 0;
					end
					else begin
						next_state = EX_SEND;
						timer_start = 1;
					end
				end
				EX_SPIN: begin
					if(ex == 1) begin
						next_state = DATA_WAIT;
					end
					else begin
						next_state = EX_SPIN;
					end
					timer_start = 0;
				end
				default: begin
					next_state = INIT_START;
					timer_start = 0;
				end
			endcase
		end
	end
	
	// Set regs and variables
	always@(posedge clk or negedge rst) begin
		if(rst == 0) begin
			instr <= 2'b00;
			en_reg <= 1'b1;
			rs_reg <= 1'b0;
			rw_reg <= 1'b1;
			ready_reg <= 1'b0;
			done_init <= 0;
		end
		else begin
			case(state)
				INIT_START: begin
					en_reg <= 0;
					rs_reg <= 0;
					rw_reg <= 1;
				end
				WTI: begin
					en_reg <= 1;
				end
				CLEAR: begin
					en_reg <= 0;
					rs_reg <= 0;
					rw_reg <= 0;
					io_buffer <= 8'h01;
				end
				FUNC_SET: begin
					en_reg <= 0;
					rs_reg <= 0;
					rw_reg <= 0;
					io_buffer <= 8'h38;
				end
				TURN_ON: begin
					en_reg <= 0;
					rs_reg <= 0;
					rw_reg <= 0;
					io_buffer <= 8'h0E;
				end
				INC_ADDR: begin
					en_reg <= 0;
					rs_reg <= 0;
					rw_reg <= 0;
					io_buffer <= 8'h06;
				end
				INIT_SEND: begin
					en_reg <= 1;
					if(instr == 2'b11) begin
						done_init = 1;
					end
				end
				INC_INSTR: begin
					case(instr)
						2'b00: instr <= 2'b01;
						2'b01: instr <= 2'b10;
						2'b10: instr <= 2'b11;
						2'b11: instr <= 2'b11;
					endcase
				end
				DATA_WAIT: begin
					ready_reg <= 1;
					en_reg <= 0;
				end
				EX_SETUP: begin
					rs_reg <= rs_in;
					rw_reg <= rw_in;
					io_buffer <= data;
					ready_reg <= 0;
				end
				EX_SEND: en_reg <= 1;
				EX_SPIN: en_reg <= 0;
				default: begin
					en_reg <= en_reg;
					rs_reg <= rs_reg;
					rw_reg <= rw_reg;
					ready_reg <= ready_reg;
				end
			endcase
		end
	end
	
endmodule
