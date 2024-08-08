`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: xnor_tb
/////////////////////////////////////////////////////////////////

module xnor_tb();
    
    reg inp_a;
    reg inp_b;
    reg oup;

    xnor dut (.a(inp_a), .b(inp_b), .out(oup));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 inp_a = 1'b0; //reset
        #10 inp_b = 1'b0; 
        #10 inp_a = 1'b1; //trigge
        #10 inp_b = 1'b0;
        #10 inp_a = 1'b1; 
        #10 inp_b = 1'b1;
        #10 inp_a = 1'b0; //trigge
        #10 inp_b = 1'b1;
        #10 inp_a = 1'b1; 
        #10 inp_a = 1'b1; //trigger
        #10 inp_a = 1'b1; //trigge
        #10 inp_a = 1'b0; //trigger
        #10 inp_b = 1'b0;
        #10 inp_a = 1'b0; //trigger
        #10 inp_a = 1'b1; //trigger
      	#100 
        $finish;
    end
endmodule