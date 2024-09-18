module karnaugh_map (
    input [4:1] x, 
    output f );
    
    assign f = (~x[1] & x[3]) || (x[1] & x[2] & ~x[3] & x[4]);

endmodule
