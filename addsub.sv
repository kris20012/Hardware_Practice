module addsub(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout;
    reg [31:0] b_xor;
    
    assign b_xor = b ^ {32{sub}};
    
    add16 add1 ( .a(a[15:0]), .b(b_xor[15:0]), .cin(sub), .sum(sum[15:0]), .cout(cout) );
    add16 add2 ( .a(a[31:16]), .b(b_xor[31:16]), .cin(cout), .sum(sum[31:16]) );

endmodule

module add16 ( 
    input[15:0] a, 
    input[15:0] b, 
    input cin, 
    output[15:0] sum, 
    output cout 
);

    assign {cout, sum} = a + b + cin;

endmodule