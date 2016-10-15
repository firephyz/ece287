module lab_verilog_example(a, b, c, d, e, g, out1, out2, out3);
input a, b, c, d, e;
input [1:0]g;
wire [1:0]g;
output out1, out2;
output[1:0]out3;
reg out1, out2;
wire [1:0]out3;

assign out3[0] = a ? b : c;
assign out3[1] = a ? d : e;

always @(*)
begin
	if (a == 1'b1)
	begin
		if ({b,c} == 2'b01)
		begin
			out1 = 1'b1;
		end
		else if ({b,c} == 2'b11)
		begin
			out1 = 1'b0;
		end
		else
		begin
			out1 = 1'b0;
		end
		out2 = 1'b0;
	end
	else
	begin
		case (g)
			2'b00: out2 = 1'b0;
			2'b01: out2 = 1'b1;
			2'b10: out2 = 1'b0;
			2'b11: out2 = 1'b1;
			default: out2 = 1'b0;
		endcase
		out1 = 1'b0;
	end
end
endmodule
