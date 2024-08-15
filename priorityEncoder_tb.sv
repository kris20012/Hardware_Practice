`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: priorityEncoder_tb
/////////////////////////////////////////////////////////////////

module priorityEncoder_tb();
    integer i;
  reg [3:0] inp;
    reg [1:0] out;

    priorityEncoder dut (.in(inp), .pos(out));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 inp = 4'b0000; //reset
        #10 inp = 4'b0001; 
        #10 inp = 4'b0010; //trigge
        #10 inp = 4'b0011;
        #10 inp = 4'b0100; 
        #10 inp = 4'b0101;
        #10 inp = 4'b0110; //trigge
        #10 inp = 4'b0111;
        #10 inp = 4'b1000; 
        #10 inp = 4'b1000; //trigger
        #10 inp = 4'b1111; //trigge
        #10 inp = 4'b1111; //trigger
        #10 inp = 4'b1010;
        #10 inp = 4'b1110; //trigger
        #10 inp = 4'b1001; //trigger
      
      	for(i = 0; i < 16; i = i + 1) begin
        #10 inp = i;
		end
      
      	#100 $finish;
    end

   
endmodule