module reverse_vector( 
    input [7:0] in,
    output [7:0] out
);
generate
  genvar c;
    for (c = 0; c < 8; c = c + 1) begin
          assign  out[c] = in[7-c];
    end
endgenerate
        
endmodule