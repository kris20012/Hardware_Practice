`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: adders_100_bit_tb
/////////////////////////////////////////////////////////////////

module adders_100_bit_tb();
    integer i;
    reg [99:0] a, b;
  reg [99:0] sum, cout;
    reg cin;

    adders_100_bit dut3 (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
	
  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 a = 4'd0000; //reset
        #10 b = 4'd0001; 
        #10 cin = 1'b0; //trigge
        #10 a = 19'd0011;
        #10 b = 19'd0100; 
        #10 cin = 1'b1;
        #10 a = 99'd99999; //trigge
        #10 b = 99'd99999;
        #10 cin = 1'b1; 
        #10 a = 4'b1000; //trigger
        #10 b = 4'b1111; //trigge
        #10 cin = 1'b1; //trigger
        #10 a = 100'hfffffffffff;
        #10 b = 100'hfffffffffff; //trigger
        #10 cin = 1'b1; //trigger
      
      	for(i = 0; i < 128; i++) begin
            #10 a = i;
            #10 b = 128 - i;
            #10 cin = (i % 7 == 0) ? 1 : 0;
		end
      
      	#100 $finish;
    end

   
endmodule