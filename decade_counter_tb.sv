`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: decade_counter_tb
/////////////////////////////////////////////////////////////////

module decade_counter_tb();
    integer i;
    
    reg [3:0] out;
    reg clk;
    reg reset;  // async active-high reset to zero


    
    decade_counter dut (.clk(clk), .reset(reset), .q(out));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 clk = 1'b0;
        #10 reset = 1'b0;
        #10 reset = 1'b1;
        #10 reset = 1'b0;
        #50 reset = 1'b1;
        #10 reset = 1'b0;
      
      	#100 $finish;
    end

    always begin
          #5 clk = ~clk;
        end
   
endmodule