`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: case_select_tb
/////////////////////////////////////////////////////////////////

module case_select_tb();
    integer i;
    reg [2:0] sel;
    reg [3:0] a, b, c, d, e, f;
    reg [3:0] out;
    
    case_select dut (.sel(sel), .data0(a), .data1(b), .data2(c), .data3(d), .data4(e), .data5(f), .out(out));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 a = 4'ha;
        #10 b = 4'hb;
        #10 c = 4'hc;
        #10 d = 4'hd;
        #10 e = 4'he; 
        #10 f = 4'hf;


        #10 sel = 3'b000;
        #10 sel = 3'b001; 
        #10 sel = 3'b111;

      
        for(i = 0; i < 8; i = i + 1) begin
            #10 sel = i;
        end
      
      	#100 $finish;
    end
   
endmodule