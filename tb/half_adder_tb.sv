module half_adder_tb;

logic A;
logic B;

logic Sum;
logic Carry;

// Design Under Test (DUT)
half_adder dut(
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    $display("A B | Sum Carry");
    $display("----------------");

    A = 0; B = 0;
    #10;
    $display("%b %b |  %b     %b", A, B, Carry, Sum);

    A = 0; B = 1;
    #10;
    $display("%b %b |  %b     %b", A, B, Carry, Sum);

    A = 1; B = 0;
    #10;
    $display("%b %b |  %b     %b", A, B, Carry, Sum);

    A = 1; B = 1;
    #10;
    $display("%b %b |  %b     %b", A, B, Carry, Sum);

    $finish;
end

endmodule


/*
OUTPUT:
A B | Sum Carry
----------------
0 0 |  0     0
0 1 |  0     1
1 0 |  0     1
1 1 |  1     0
tb/half_adder_tb.sv:37: $finish called at 40 (1s)
*/
