module lcd_controller(data, ex, ready, en, rs, rw, io, rst, clk, state, instr, timer_done);

	// Module control IO
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
	reg [3:0] prev_state; // Used when the next state is TIMER_SET. It needs this information to decide where to go
	output reg [1:0] instr;
	reg timer_start;
	output wire timer_done;
	wire busy;
	
	reg [7:0] io_buffer;
	reg rw_reg, rs_reg, en_reg, ready_reg;
	
	// Connect the IO pins to the internal variables above
	assign busy = io[7];
	assign io = (state == INIT_START) ||
					(state == INC_ADDR) ||
					(state == EX_START)
					? 8'bZ : io_buffer;
	assign rw = rw_reg;
	assign rs = rs_reg;
	assign en = en_reg;
	assign ready = ready_reg;
	
	// Timer module
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
				 EX_START	= 4'h9,
				 EX_SETUP	= 4'hA,
				 EX_SEND		= 4'hB,
				 EX_SPIN		= 4'hC,
				 
				 // Timer set state. Used when the current state also required the timer
				 TIMER_SET	= 4'hD;
	
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
					if(timer_done) begin
						next_state = WTI;
						timer_start = 0;
					end
					else begin
						next_state = next_state;
						timer_start = 1;
					end
					prev_state = state;
				end
				WTI: begin
					if(busy) begin
						next_state = WTI;
						timer_start = 0;
					end
					else begin
						case(instr)
							2'b00: next_state = CLEAR;
							2'b01: next_state = FUNC_SET;
							2'b10: next_state = TURN_ON;
							2'b11: next_state = INC_ADDR;
						endcase
						timer_start = 0;
					end
					prev_state = state;
				end
				CLEAR: begin
					if(timer_done) begin
						prev_state = state;
						next_state = TIMER_SET;
						timer_start = 0;
					end
					else begin
						prev_state = prev_state;
						next_state = next_state;
						timer_start = 1;
					end
				end
				FUNC_SET: begin
					if(timer_done) begin
						prev_state = state;
						next_state = TIMER_SET;
						timer_start = 0;
					end
					else begin
						prev_state = prev_state;
						next_state = next_state;
						timer_start = timer_start;
					end
				end
				TURN_ON: begin
					if(timer_done) begin
						prev_state = state;
						next_state = TIMER_SET;
						timer_start = 0;
					end
					else begin
						prev_state = prev_state;
						next_state = next_state;
						timer_start = timer_start;
					end
				end
				INC_ADDR: begin
					if(timer_done) begin
						prev_state = state;
						next_state = TIMER_SET;
						timer_start = 0;
					end
					else begin
						prev_state = prev_state;
						next_state = next_state;
						timer_start = timer_start;
					end
				end
				TIMER_SET: begin
					if((prev_state == CLEAR) ||
						(prev_state == FUNC_SET) ||
						(prev_state == TURN_ON) ||
						(prev_state == INC_ADDR))
					begin
						next_state = INIT_SEND;
					end
					else begin
						case(prev_state)
							EX_START: begin
								next_state = EX_SETUP;
							end
							EX_SETUP: begin
								next_state = EX_SEND;
								end
							default: begin
								next_state = next_state;
							end
						endcase
					end
					timer_start = 1;
					prev_state = prev_state;
				end
				INIT_SEND: begin
					if(timer_done) begin
						if(instr == 2'b11) begin
							next_state = DATA_WAIT;
							timer_start = 0;
						end
						else begin
							next_state = INC_INSTR;
							timer_start = 0;
						end
					end
					else begin
						next_state = next_state;
						timer_start = timer_start;
					end
					prev_state = state;
				end
				INC_INSTR: begin
					prev_state = state;
					next_state = WTI;
					timer_start = 0;
				end
				DATA_WAIT: begin
					if(rst == 0) begin
						next_state = INIT_START;
						timer_start = 1;
					end
					else begin
						if(ex == 0) begin
							next_state = next_state;
							timer_start = timer_start;
						end
						else begin
							next_state = EX_START;
							timer_start = 1;
						end
					end
					prev_state = state;
				end
				EX_START: begin
					if(timer_done) begin
						prev_state = state;
						next_state = TIMER_SET;
						timer_start = 0;
					end
					else begin
						prev_state = prev_state;
						next_state = next_state;
						timer_start = timer_start;
					end
				end
				EX_SETUP: begin
					if(timer_done) begin
						prev_state = state;
						next_state = TIMER_SET;
						timer_start = 0;
					end
					else begin
						prev_state = prev_state;
						next_state = next_state;
						timer_start = timer_start;
					end
				end
				EX_SEND: begin
					if(timer_done) begin
						next_state = EX_SPIN;
						timer_start = 0;
					end
					else begin
						next_state = next_state;
						timer_start = timer_start;
					end
					prev_state = prev_state;
				end
				EX_SPIN: begin
					if(ex == 0) begin
						next_state = DATA_WAIT;
					end
					else begin
						next_state = next_state;
					end
					timer_start = 0;
					prev_state = prev_state;
				end
				default: begin
					next_state = next_state;
					prev_state = prev_state;
					timer_start = timer_start;
				end
			endcase
		end
	end
	
	// Set regs and variables
	always@(posedge clk or negedge rst) begin
		if(rst == 0) begin
			instr <= 2'b00;
			io_buffer <= 8'bZ;
			en_reg <= 1'b1;
			rs_reg <= 1'b0;
			rw_reg <= 1'b1;
		end
		else begin
			case(state)
				INIT_START: begin
					en_reg <= 1;
					rs_reg <= 0;
					rw_reg <= 1;
					io_buffer <= 8'hZ;
					instr <= 2'b00;
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
					io_buffer <= 8'h0C;
				end
				INC_ADDR: begin
					en_reg <= 0;
					rs_reg <= 0;
					rw_reg <= 0;
					io_buffer <= 8'h06;
				end
				INIT_SEND: en_reg <= 1;
				INC_INSTR: begin
					case(instr)
						2'b00: instr <= 2'b01;
						2'b01: instr <= 2'b10;
						2'b10: instr <= 2'b11;
						default: instr <= instr;
					endcase
					rs_reg <= 0;
					rw_reg <= 1;
					io_buffer <= 8'hZ;
				end
				DATA_WAIT: ready_reg <= 1;
				EX_START: begin
					en_reg <= 1;
					rs_reg <= 0;
					rw_reg <= 1;
					io_buffer <= 8'hZ;
					ready_reg <= 0;
				end
				EX_SETUP: begin
					en_reg <= 0;
					rs_reg <= 1;
					rw_reg <= 0;
					io_buffer <= data;
				end
				EX_SEND: en_reg <= 1;
				default: begin
					en_reg <= en_reg;
					rs_reg <= rs_reg;
					rw_reg <= rw_reg;
					io_buffer <= io_buffer;
					ready_reg <= ready_reg;
				end
			endcase
		end
	end
	
endmodule
