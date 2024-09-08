`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: addsub_tb
/////////////////////////////////////////////////////////////////

module addsub_tb();
    integer i;
    reg [31:0] a;
    reg [31:0] b;
    reg [31:0] sum;
    reg sub;
    
    addsub dut (.a(a), .b(b), .sub(sub), .sum(sum));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 a = 32'hffffffff; //trigger
        #10 b = 32'hffffffff; //trigger
        #10 sub = 1'b0; //trigger
        #10 a = 32'b0; //trigger
        #10 b = 32'b0; //trigger
        #10 sub = 1'b1; //trigger
        #10 a = 32'hffffffff; //trigger
        #10 b = 32'hffffffff; //trigger
        #10 sub = 1'b0; //trigger
        #10 a = 32'b0; //trigger
        #10 b = 32'b0; //trigger
        #10 sub = 1'b1; //trigger
       
      
        for(i = 0; i < 128; i = i + 1) begin
            #10 a = i;
            #10 b = i%17;
            #10 sub = i % 2;
        end
      
      	#100 $finish;
    end
   
endmodule