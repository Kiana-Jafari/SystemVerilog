// a simple full adder gate implemented from half_adder gate and or_gate
module full_adder(
    input logic A,
    input logic B,
    input logic Cin,
    output logic Sum,
    output logic Cout
);

// first half adder

logic partial_sum;
logic carry1;

half_adder half1(
    .A(A),
    .B(B),
    .Sum(partial_sum),
    .Carry(carry1)
);

// second half adder

logic carry2;

half_adder half2(
    .A(partial_sum),
    .B(Cin),
    .Sum(Sum),
    .Carry(carry2)
);

// or_gate for comparing carry1 and carry2

or_gate or1(
    .A(carry1),
    .B(carry2),
    .F(Cout)
);

endmodule
