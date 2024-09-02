module shift_register_4_bit(
    input clk,
    input areset,  // async active-high reset to zero
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q); 
    
   always@(posedge areset, posedge clk) begin
        if(areset)
            q <= 4'b0;
        else if(load)
            q <= data;
         else if(ena) begin
             //q <= {1'b0, q[3:1]};
             q <= q >> 1;
         end
    end

endmodule