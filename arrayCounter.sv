module array_counter( 
    input [254:0] in,
    output [7:0] out );
    
    function integer count_ones (input [254:0] a);
   		count_ones = 0;
        for (integer i = 0 ; i<255 ; i=i+1) begin
            if (a[i] ==1'b1)begin
              count_ones=count_ones+1;
            end

          end
    
    endfunction
    
    assign out = count_ones(in);

endmodule
