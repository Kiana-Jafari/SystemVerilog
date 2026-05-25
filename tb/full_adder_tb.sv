module full_adder_tb;

logic A;
logic B;
logic Cin;

logic Sum;
logic Cout;

// Design Under Test
full_adder dut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    $display("A | B | Cin | Cout | Sum");
    $display("------------------------");

    A = 0; B = 0; Cin = 0;
    #10;
    $display("%b | %b |  %b  |  %b   |  %b",
             A, B, Cin, Cout, Sum);

    A = 0; B = 0; Cin = 1;
    #10;
    $display("%b | %b |  %b  |  %b   |  %b",
             A, B, Cin, Cout, Sum);

    A = 0; B = 1; Cin = 0;
    #10;
    $display("%b | %b |  %b  |  %b   |  %b",
             A, B, Cin, Cout, Sum);

    A = 0; B = 1; Cin = 1;
    #10;
    $display("%b | %b |  %b  |  %b   |  %b",
             A, B, Cin, Cout, Sum);

    A = 1; B = 0; Cin = 0;
    #10;
    $display("%b | %b |  %b  |  %b   |  %b",
             A, B, Cin, Cout, Sum);

    A = 1; B = 0; Cin = 1;
    #10;
    $display("%b | %b |  %b  |  %b   |  %b",
             A, B, Cin, Cout, Sum);

    A = 1; B = 1; Cin = 0;
    #10;
    $display("%b | %b |  %b  |  %b   |  %b",
             A, B, Cin, Cout, Sum);

    A = 1; B = 1; Cin = 1;
    #10;
    $display("%b | %b |  %b  |  %b   |  %b",
             A, B, Cin, Cout, Sum);

    $finish;
end

endmodule

/*
A | B | Cin | Cout | Sum
------------------------
0 | 0 |  0  |  0   |  0
0 | 0 |  1  |  0   |  1
0 | 1 |  0  |  0   |  1
0 | 1 |  1  |  1   |  0
1 | 0 |  0  |  0   |  1
1 | 0 |  1  |  1   |  0
1 | 1 |  0  |  1   |  0
1 | 1 |  1  |  1   |  1
tb\full_adder_tb.sv:63: $finish called at 80 (1s)
*/
