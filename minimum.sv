module minimum (
    input [7:0] a, b, c, d,
    output [7:0] min);
	
    assign min = (a < b && a < c && a < d) ? a : (b < a && b < c && b < d) ? b : (c < a && c < b && c < d) ? c : d;

endmodule