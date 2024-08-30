`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: carry_select_adder_tb
/////////////////////////////////////////////////////////////////

module carry_select_adder_tb();
    integer i;
    reg [31:0] a, b;
    reg [31:0] sum;

    carry_select_adder dut3 (.a(a), .b(b), .sum(sum));
	
  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 a = 4'd0000; //reset
        #10 b = 4'd0001; 
        #10 a = 19'd0011;
        #10 b = 19'd0100; 
        #10 a = 32'd99999; //trigge
        #10 b = 32'd99999; 
        #10 a = 4'b1000; //trigger
        #10 b = 4'b1111; //trigge
        #10 a = 32'hffffffff;
        #10 b = 32'hffffffff; //trigger
      
      	for(i = 0; i < 128; i++) begin
            #10 a = i;
            #10 b = 128 - i;
		end
      
      	#100 $finish;
    end

   
endmodule