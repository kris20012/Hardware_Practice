`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: dffwithreset_tb
/////////////////////////////////////////////////////////////////

module dffwithreset_tb();
    integer i;
    reg [7:0] inp;
    reg [7:0] out;
    reg clk;
    reg reset;  // async active-high reset to zero
    
    dffwithreset dut (.clk(clk), .reset(reset), .d(inp), .q(out));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 clk = 1'b0;
        #10 reset = 1'b0;
        #10 inp = 4'b0000; //reset
        #10 inp = 4'b0001;
        #10 reset = 1'b1; 
        #10 reset = 1'b0;
        #10 inp = 4'b0010; //trigge
        #10 inp = 4'b0011;
        #10 inp = 4'b0110; //trigge
        #10 inp = 4'b0111;
        #10 inp = 4'b1000; 
        #10 inp = 4'b1000; //trigger
        #10 inp = 4'b1111; //trigge
        #10 inp = 4'b1111; //trigger
        #10 inp = 4'b1010;
        #10 inp = 4'b1110; //trigger
        #10 inp = 4'b1001; //trigger
      
        for(i = 0; i < 128; i = i + 1) begin
            #10 inp = i;
        end
      
      	#100 $finish;
    end

    always begin
          #5 clk = ~clk;
        end
   
endmodule