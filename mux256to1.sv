module mux_256_to_1( 
    input [255:0] in,
    input [7:0] sel,
    output reg out );
    
    always@(*) begin
        for(int i = 0; i < 256; i++) begin
            if (i == sel) 
                out = in[i];
        end
    end

endmodule
