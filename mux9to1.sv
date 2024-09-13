module mux9to1( 
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out );
    
    always@(*) begin
        if(sel == 4'b0) begin
            out = a;
        end else if(sel == 4'd1) begin
            out = b;
        end else if(sel == 4'd2) begin
            out = c;
        end else if(sel == 4'd3) begin
            out = d;
        end else if(sel == 4'd4) begin
            out = e;
        end else if(sel == 4'd5) begin
            out = f;
        end else if(sel == 4'd6) begin
            out = g;
        end else if(sel == 4'd7) begin
            out = h;
        end else if(sel == 4'd8) begin
            out = i;
        end else begin
            out = 16'hffff;
        end
    end

endmodule
