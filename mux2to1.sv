module mux2to1( 
    input [99:0] a, b,
    input sel,
    output [99:0] out );
    
    assign out = (~sel) ? a : b; 

endmodule