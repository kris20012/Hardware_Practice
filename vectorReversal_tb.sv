`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: vector_reversal_tb
/////////////////////////////////////////////////////////////////

module vector_reversal();
    integer i;
    reg [99:0] inp;
    reg [99:0] out;

    vector_reversal dut (.in(inp), .out(out));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 inp = 4'b0000; //reset
        #10 inp = 4'b0001; 
        #10 inp = 4'b0010; //trigge
        #10 inp = 4'b0011;
        #10 inp = 4'b0100; 
        #10 inp = 4'b0101;
        #10 inp = 100'b0110; //trigge
        #10 inp = 100'b0111;
        #10 inp = 100'b1000; 
        #10 inp = 100'b1000; //trigger
        #10 inp = 100'd11; //trigge
        #10 inp = 100'd31; //trigger
        #10 inp = 100'd99;
        #10 inp = 100'd52; //trigger
        #10 inp = 100'd77; //trigger
      
      	for(i = 0; i < 100; i++) begin
        #10 inp = i;
		end
      
      	#100 $finish;
    end

   
endmodule