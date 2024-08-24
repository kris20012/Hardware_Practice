`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: mux_256_to_1_tb
/////////////////////////////////////////////////////////////////

module mux_256_to_1_tb();
    
    reg [255:0] inp;
    reg [7:0] sel;
    reg out;

  mux_256_to_1 dut (.in(inp), .sel(sel), .out(out));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 inp = 256'd0; //reset
        #10 sel = 8'd0;
        #10 inp = 256'd1; //trigger
        #10 sel = 8'd1;
        #10 inp = 256'd2; //trigger
        #10 sel = 8'd1;
        #10 inp = 256'd12;
        #10 sel = 8'd0;
        #10 inp = 256'd17; 
        #10 sel = 8'd17;
        #10 inp = 256'd25;
        #10 sel = 8'd17;
        #10 inp = 256'd23; //trigger
        #10 sel = 8'hff;
        #10 inp = 256'h3ff;
        #10 sel = 8'hff;
        #10 inp = 256'd12;
        #10 sel = 8'hff; 
        #10 inp = 256'd256; //trigger
        #10 sel = 8'hff;
        #10 inp = 256'd21; //trigger
        #10 sel = 8'hff;
        #10 inp = 256'd45; //trigger
        #10 sel = 8'd0;
        #10 inp = 256'd253;
        #10 sel = 8'd0;
        #10 inp = 256'd093; //trigger
        #10 sel = 8'd0;
        #10 inp = 256'd048; //trigger
        #10 sel = 8'd48;
      	#100 
        $finish;
    end

endmodule