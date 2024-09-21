`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: mux2to1_tb
/////////////////////////////////////////////////////////////////

module mux2to1_tb();
    integer i;
    reg [99:0] a, b, out;
    reg inp;
    
  mux2to1 dut (.sel(inp), .a(a), .b(b), .out(out));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 inp = 1'b1;
        #10 inp = 1'b0; 
        #10 inp = 1'b1;

        #10 a = 20'hdecaf;
        #10 b = 20'hfaced;

        #10 inp = 1'b1;
        #10 inp = 1'b0; 
        #10 inp = 1'b1;

        #10 a = 16'hcafe;
        #10 b = 16'hface;

        #10 inp = 1'b1;
        #10 inp = 1'b0; 
        #10 inp = 1'b1;

      
        for(i = 0; i < 32; i = i + 1) begin
            #10 a = i;
            #10 b = 32 - i;
        end
      
      	#100 $finish;
    end
   
endmodule