class temp;
	rand int multi_x;
	real w, y;
endclass
module mytest;

temp_tt = new();

initial begin
	tt.w=3.2345;
	for(int j = 0; j<4; j++)begin
		std::randomize(tt);
		tt.y = tt.w*(real'(tt.multi_x));
		$display("Value tt.y = %f, val tt.w = %f, val tt.multi_x = %f", tt.y,tt.w,tt.multi_x);
	end
end
endmodule

