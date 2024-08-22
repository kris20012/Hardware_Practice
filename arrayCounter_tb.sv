`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: array_counter_tb
/////////////////////////////////////////////////////////////////

module array_counter_tb();
    
    reg [254:0] inp;
    reg [7:0] out;

    array_counter dut (.in(inp), .out(out));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 inp = 255'd0; //reset
        #10 inp = 255'd1; //trigger
        #10 inp = 255'd2; //trigger
        #10 inp = 255'd12;
        #10 inp = 255'd17; 
        #10 inp = 255'd25;
        #10 inp = 255'd23; //trigger
        #10 inp = 255'h3ff;
        #10 inp = 255'd12; 
        #10 inp = 255'd256; //trigger
        #10 inp = 255'd21; //trigger
        #10 inp = 255'd45; //trigger
        #10 inp = 255'd253;
        #10 inp = 255'd093; //trigger
        #10 inp = 255'd048; //trigger
      	#100 
        $finish;
    end

endmodule