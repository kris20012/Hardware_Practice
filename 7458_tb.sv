`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: 7458_tb
/////////////////////////////////////////////////////////////////

module m7458_tb();
    
    reg inp_a, inp_b, inp_c, inp_d, inp_e, inp_f, inp_g, inp_h, inp_i, inp_j;
    reg out_a, out_b;
    reg [9:0] inp;

    m7458 dut (.p1a(inp_a), .p1b(inp_b), .p1c(inp_c), .p1d(inp_d), .p1e(inp_e), .p1f(inp_f),
              .p2a(inp_g), .p2b(inp_h), .p2c(inp_i), .p2d(inp_j),
              .p1y(out_a), .p2y(out_b));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 inp = 10'd0; //reset
        #10 inp = 10'd1; //trigger
        #10 inp = 10'd2; //trigger
        #10 inp = 10'd12;
        #10 inp = 10'd17; 
        #10 inp = 10'd25;
        #10 inp = 10'd23; //trigger
        #10 inp = 10'h3ff;
        #10 inp = 10'd12; 
        #10 inp = 10'd256; //trigger
        #10 inp = 10'd21; //trigger
        #10 inp = 10'd45; //trigger
        #10 inp = 10'd253;
        #10 inp = 10'd093; //trigger
        #10 inp = 10'd048; //trigger
      	#100 
        $finish;
    end

    assign {inp_a, inp_b, inp_c, inp_d, inp_e, inp_f, inp_g, inp_h, inp_i, inp_j} = inp;

endmodule