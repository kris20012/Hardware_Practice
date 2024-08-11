`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: concatenation_tb
/////////////////////////////////////////////////////////////////

module concatenation_tb();
    
    reg [7:0] inp;
    reg [31:0] out;

    concatenation dut (.in(inp), .out(out));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 inp = 8'h00; //reset
        #10 inp = 8'h01; 
        #10 inp = 8'h02; //trigge
        #10 inp = 8'haa;
        #10 inp = 8'hbb; 
        #10 inp = 8'h2f;
        #10 inp = 8'hee; //trigge
        #10 inp = 8'hcd;
        #10 inp = 8'hde; 
        #10 inp = 8'haa; //trigger
        #10 inp = 8'hf0; //trigge
        #10 inp = 8'hff; //trigger
        #10 inp = 8'h00;
        #10 inp = 8'hdc; //trigger
        #10 inp = 8'hff; //trigger
      	#100 
        $finish;
    end
endmodule