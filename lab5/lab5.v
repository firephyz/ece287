module lab5(x0, x1, x2, x3, y0, y1, y2, y3, s0, s1, s2, s3, cout);

	input x0, x1, x2, x3;
	input y0, y1, y2, y3;
	output s0, s1, s2, s3;
	output cout;
	
	assign s0 = x1 ^ y1;
	assign s1 = x0 ^ y0 ^ (x1 & y1);
	assign s2 = (x0 & x1 &  y1) | (y0 & x1 & y1) | (x0 & y0);
	assign s3 = (x2) ^ (y2) ^ ((x2 & s2) | (y2 & s2) | (x2 & y2));
	assign cout = (x2) ^ (y2) ^((x3 & s3) | (y3 & s3) | (x3 & y3));

endmodule
