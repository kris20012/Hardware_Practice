`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: mux9to1_tb
/////////////////////////////////////////////////////////////////

module mux9to1_tb();
    integer i;
    reg [3:0] inp;
    reg [15:0] a, b, c, d, e, f, g, h, i;
    
  mux9to1 dut (.sel(inp), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h), .i(i));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 a = 16'h1234;
        #10 b = 16'h5678;
        #10 c = 16'h9101;
        #10 d = 16'h1213;
        #10 e = 16'h9873; //reset
        #10 f = 16'hfefd;
        #10 g = 16'h1ddd;
        #10 h = 16'hbcde;
        #10 i = 16'hefdd;


        #10 inp = 4'b0001;
        #10 inp = 4'b0010; //trigge
        #10 inp = 4'b0011;

      
        for(i = 0; i < 16; i = i + 1) begin
            #10 inp = i;
        end
      
      	#100 $finish;
    end
   
endmodule