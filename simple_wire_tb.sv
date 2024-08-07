`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: simple_wire_tb
/////////////////////////////////////////////////////////////////

module simple_wire_tb();
    
    reg inp;
    reg oup;

    simple_wire dut (.in(inp), .out(oup));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 inp = 1'b0; //reset
        #10 inp = 1'b1; //trigge
        #10 inp = 1'b1; 
        #10 inp = 1'b1; //trigger
        #10 inp = 1'b0; //trigge
        #10 inp = 1'b1; 
        #10 inp = 1'b1; //trigger
        #10 inp = 1'b1; //trigge
        #10 inp = 1'b0; //trigger
        #10 inp = 1'b0; //trigger
        #10 inp = 1'b1; //trigger
      	#100 
        $finish;
    end
endmodule