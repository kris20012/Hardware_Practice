module signed_overflow (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 
 
    assign {s} = a + b;
    assign overflow = (s[7] == 1'b1 && (a[7] == 1'b0 && b[7] == 1'b0)) ? 1'b1 : 
        			  (s[7] == 1'b0 && (a[7] == 1'b1 && b[7] == 1'b1)) ? 1'b1 : 1'b0;

endmodule
