`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: replication_xor_tb
/////////////////////////////////////////////////////////////////

module replication_xor_tb();
    
    reg inp_a, inp_b, inp_c, inp_d, inp_e;
    reg [24:0] out;

    replication_xor dut (.a(inp_a), .b(inp_b), .c(inp_c), .d(inp_d), .e(inp_e),
                    .out(out));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b00000; //reset
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b00001; //trigger
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b00010; //trigger
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b10011;
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b10111;
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b10100; 
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b00101;
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b10110; //trigger
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b10111;
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b10101;
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b01000; 
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b01001; //trigger
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b11010; //trigger
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b11011; //trigger
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b11101;
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b11100;
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b11101; //trigger
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b01100; //trigger
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b10011;
        #10 {inp_a, inp_b, inp_c, inp_d, inp_e} = 5'b10111;
      	#100 
        $finish;
    end

endmodule