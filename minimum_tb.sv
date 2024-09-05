`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: minimum_tb
/////////////////////////////////////////////////////////////////

module minimum_tb();
    
    reg [7:0] inp_a, inp_b, inp_c, inp_d;
    reg [7:0] out;

    minimum dut (.a(inp_a), .b(inp_b), .c(inp_c), .d(inp_d),
                    .min(out));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 inp_a = 8'b10100000; //reset
        #10 inp_b = 8'b10100001; //trigger
        #10 inp_c = 8'b10100010; //trigger
        #10 inp_d = 8'b10110011;
        #10 inp_a = 8'b10110100; 
        #10 inp_b = 8'b10100101;
        #10 inp_c = 8'b10110110; //trigger
        #10 inp_d = 8'b10110111;
        #10 inp_a = 8'b10101000; 
        #10 inp_b = 8'b10101001; //trigger
        #10 inp_c = 8'b10111010; //trigger
        #10 inp_d = 8'b10111011; //trigger
        #10 inp_a = 8'b10111100;
        #10 inp_b = 8'b10111101; //trigger
        #10 inp_c = 8'b10101100; //trigger
        #10 inp_d = 8'b10101110; //trigger
      	#100 
        $finish;
    end

endmodule