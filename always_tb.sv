`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: always_hw_tb
/////////////////////////////////////////////////////////////////

module always_hw_tb();
    
    reg inp_a;
    reg inp_b;
    reg clk;
    reg out_a;
    reg out_b;
    reg out_b;
    reg out_b;

    always_hw dut (.clk(clk), .a(inp_a), .b(inp_b), .out_assign(out_b), .out_always_comb(out_c), .out_always_ff(out_d));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 clk = 1'b0;
        #10 inp_a = 1'b0; //reset
        #10 inp_b = 1'b0; 
        #10 inp_a = 1'b0; //trigge
        #10 inp_b = 1'b1;
        #10 inp_a = 1'b1; 
        #10 inp_b = 1'b0;
        #10 inp_a = 1'b1; //trigge
        #10 inp_b = 1'b1;
        #10 inp_a = 1'b0; 
        #10 inp_b = 1'b0; //trigger
        #10 inp_a = 1'b1; //trigge
        #10 inp_b = 1'b1; //trigger
        #10 inp_a = 1'b1;
        #10 inp_b = 1'b1; //trigger
        #10 inp_a = 1'b0; //trigger
      	#100 
        $finish;
    end

    always
        #5 clk = ~clk;
endmodule