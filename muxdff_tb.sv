`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: mux_dff_tb
/////////////////////////////////////////////////////////////////

module mux_dff_tb();
    integer i;
    reg clk;
	reg L;
	reg r_in;
	reg q_in;
	reg Q;
    
    mux_dff dut (.clk(clk), .L(L), .r_in(r_in), .q_in(q_in), .Q(Q));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 clk = 1'b0;
        #10 L = 1'b0;
        #10 r_in = 1'b0;
        #10 q_in = 1'b0;
        #10 L = 1'b0;
        #10 r_in = 1'b1;
        #10 q_in = 1'b0;
        #10 L = 1'b0;
        #10 r_in = 1'b0;
        #10 q_in = 1'b1;
        #10 L = 1'b1;
        #10 r_in = 1'b0;
        #10 q_in = 1'b1;
        #10 L = 1'b1;
        #10 r_in = 1'b1;
        #10 q_in = 1'b0;
        
      
        for(i = 0; i < 8; i = i + 1) begin
            #10 {L, r_in, q_in} = i;
        end
      
      	#100 $finish;
    end

    always begin
        #5 clk = ~clk;
    end
   
endmodule