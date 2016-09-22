module lab5(x0, x1, y0, y1, led0, led1, led2);
	input x0, x1, y0, y1;
	output led0, led1, led2;
	
	assign led0 = x1 ^ y1;
	assign led1 = x0 ^ y0 ^ (x1 & y1);
	assign led2 = (x0 & x1 & y1) | (y0 & x1 & y1) | (x0 & y0);

endmodule
