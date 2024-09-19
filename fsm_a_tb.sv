`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: fsm_a_tb
/////////////////////////////////////////////////////////////////

module fsm_a_tb();
    integer i;

    reg clk;
    reg areset;    // Asynchronous reset to state B
    reg in;
    reg out;
    
    fsm_a dut (.clk(clk), .areset(areset), .in(in), .out(out));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 clk = 1'b0;
        #10 areset = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b1;
        #10 areset = 1'b1;
        #10 areset = 1'b0;
         #10 in = 1'b1;
        #10 in = 1'b1;
        #10 in = 1'b0;
        #10 in = 1'b1;
      
      	#100 $finish;
    end

    always begin
        #5 clk = ~clk;
    end
   
endmodule