`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////
// Module Name: full_adder_tb
/////////////////////////////////////////////////////////////////

module full_adder_tb();
    integer i;
    reg out, cout;
    reg a, b, cin;
    
    full_adder dut (.a(a), .b(b), .cin(cin), .out(out), .cout(cout));

  	initial begin
      	$dumpfile("dump.vcd");
        $dumpvars;
        #10 {a,b,cin} = 3'b0;
        #10 {a,b,cin} = 3'b111;
        #10 {a,b,cin} = 3'b101;
        #10 {a,b,cin} = 3'b010;
        

      
        for(i = 0; i < 8; i = i + 1) begin
            #10 {a,b,cin} = i;
        end
      
      	#100 $finish;
    end
   
endmodule