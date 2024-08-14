`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: bitwise_tb
/////////////////////////////////////////////////////////////////

module bitwise_tb();
    
    reg [2:0] inp_a;
    reg [2:0] inp_b;
    reg [2:0] out_a;
    reg out_b;
    reg [5:0] out_c;

    bitwise dut (.a(inp_a), .b(inp_b), .out_or_bitwise(out_a), .out_or_logical(out_b), .out_not(out_c));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 inp_a = 3'b000; //reset
        #10 inp_b = 3'b001; 
        #10 inp_a = 3'b010; //trigge
        #10 inp_b = 3'b011;
        #10 inp_a = 3'b100; 
        #10 inp_b = 3'b101;
        #10 inp_a = 3'b110; //trigge
        #10 inp_b = 3'b111;
        #10 inp_a = 3'b000; 
        #10 inp_b = 3'b000; //trigger
        #10 inp_a = 3'b111; //trigge
        #10 inp_b = 3'b111; //trigger
        #10 inp_a = 3'b010;
        #10 inp_b = 3'b110; //trigger
        #10 inp_a = 3'b001; //trigger
      	#100 
        $finish;
    end
endmodule