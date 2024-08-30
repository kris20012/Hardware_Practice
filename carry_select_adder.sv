module add_16_bit(
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout
);
    assign {cout, sum} = a + b + cin;
    
endmodule
    
module carry_select_adder(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    reg [15:0] sum1, sum2;
    wire cout;
    
    add_16_bit stage1 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(cout));
                         
    add_16_bit stage2a (.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(sum1[15:0]));
    add_16_bit stage2b (.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(sum2[15:0]));
	
    assign sum[31:16] = (cout == 0) ? sum1 : sum2;
                          
endmodule
