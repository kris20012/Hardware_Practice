module vector_reversal( 
    input [99:0] in,
    output [99:0] out
);
    
    always@(*) begin
        for(int i = 0; i < 100; i++) begin
            out[i] = in[100 - i - 1];
        end
    end

endmodule