`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: vec_concat_tb
/////////////////////////////////////////////////////////////////

module vec_concat_tb();
    
    reg [4:0] inp_a, inp_b, inp_c, inp_d, inp_e, inp_f;
    reg [7:0] out_a, out_b, out_c, out_d;

    vec_concat dut (.a(inp_a), .b(inp_b), .c(inp_c), .d(out_d), .e(out_e), .f(out_f),
                    .w(out_a), .x(out_b), .y(out_c), .z(out_d));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 inp_a = 5'b00000; //reset
        #10 inp_b = 5'b00001; //trigger
        #10 inp_c = 5'b00010; //trigger
        #10 inp_d = 5'b10011;
        #10 inp_a = 5'b10100; 
        #10 inp_b = 5'b00101;
        #10 inp_c = 5'b10110; //trigger
        #10 inp_d = 5'b10111;
        #10 inp_a = 5'b01000; 
        #10 inp_b = 5'b01001; //trigger
        #10 inp_c = 5'b11010; //trigger
        #10 inp_d = 5'b11011; //trigger
        #10 inp_a = 5'b11100;
        #10 inp_b = 5'b11101; //trigger
        #10 inp_c = 5'b01100; //trigger
      	#100 
        $finish;
    end

endmodule