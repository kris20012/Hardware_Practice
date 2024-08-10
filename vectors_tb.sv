`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: vectors_tb
/////////////////////////////////////////////////////////////////

module vectors_tb();
    
    reg [15:0] inp;
    reg [7:0] out_a;
    reg [7:0] out_b;

    vectors dut (.in(inp), .out_hi(out_a), .out_lo(out_b));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 inp = 16'h0000; //reset
        #10 inp = 16'h0001; 
        #10 inp = 16'h0002; //trigge
        #10 inp = 16'haaaa;
        #10 inp = 16'haabb; 
        #10 inp = 16'hff2f;
        #10 inp = 16'hffee; //trigge
        #10 inp = 16'habcd;
        #10 inp = 16'hdede; 
        #10 inp = 16'hbaaa; //trigger
        #10 inp = 16'hf0f0; //trigge
        #10 inp = 16'h00ff; //trigger
        #10 inp = 16'hff00;
        #10 inp = 16'hfedc; //trigger
        #10 inp = 16'hffff; //trigger
      	#100 
        $finish;
    end
endmodule