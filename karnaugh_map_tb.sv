`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: karnaugh_map_tb
/////////////////////////////////////////////////////////////////

module karnaugh_map_tb();
    integer i;
    reg [3:0] inp;
    reg out;
    
    karnaugh_map dut (.x(inp), .f(out));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;

        #10 inp = 4'b0000; 
        #10 inp = 4'b1111;
        #10 inp = 4'b0101; 
        #10 inp = 4'b1010;
        #10 inp = 4'b0100; 
      
        for(i = 0; i < 16; i = i + 1) begin
            #10 inp = i;
        end
      
      	#100 $finish;
    end
   
endmodule