`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: signed_overflow_tb
/////////////////////////////////////////////////////////////////

module signed_overflow_tb();
    integer i;
    reg outflow;
    reg [7:0] a, b, s;
    
    signed_overflow dut (.a(a), .b(b), .s(s), .overflow(overflow));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 a = 8'h90;
        #10 b = 8'h90;
        #10 a = 8'h12;
        #10 b = 8'h56;
        #10 a = 8'h70;
        #10 b = 8'h75;
        #10 a = 8'h91;
        #10 b = 8'h12;
        #10 a = 8'h70;
        #10 b = 8'h70;
        #10 a = 8'h98; 
        #10 b = 8'hfe;
        #10 a = 8'h1d;
        #10 a = 8'h90;
        #10 b = 8'h92;
        #10 b = 8'hbc;
        #10 a = 8'hef;

      
        for(i = 0; i < 128; i = i + 1) begin
            #10 a = i;
            #10 b = 128 - i;
        end
      
      	#100 $finish;
    end
   
endmodule