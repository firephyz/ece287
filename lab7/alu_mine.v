module alu_mine(in1, o, con, clk, rst);

	input [3:0] in1;
	input [4:0] con;
	input clk, rst;
	output [3:0] o;

	reg [3:0]a;
	reg [3:0]b;
	reg [3:0]c;

	assign o = c;

	reg [3:0] alu_to_c;				

	// Chooses which alu function to output
	always@(*) begin
		if(con[1:0] == 2'b00) begin
			alu_to_c = a & b;
		end
		else if(con[1:0] == 2'b01) begin
			alu_to_c = a | b;
		end
		else if(con[1:0] == 2'b10) begin
			alu_to_c = a + b;
		end
		else if(con[1:0] == 2'b11) begin
			alu_to_c = a - b;
		end
	end

	// Stores results into registers
	always@(posedge clk or negedge rst) begin
	
		if(!rst == 1'b1) begin
			a <= 0;
			b <= 0;
			c <= 0;
		end
		else if(con[3:2] == 2'b00) begin
			a <= a;
			b <= c;
			c <= c;
		end
		else if(con[3:2] == 2'b01) begin
			a <= a;
			b <= in1;
			c <= c;
		end
		else if(con[3:2] == 2'b10) begin
			a <= in1;
			b <= b;
			c <= c;
		end
		else if(con[3:2] == 2'b11)
		begin
			a <= a;
			b <= b;
			c <= alu_to_c;
		end
	end

endmodule
