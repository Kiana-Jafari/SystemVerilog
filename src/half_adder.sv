// a simple half adder gate using existing xor_gate & and_gate (composition)

/*
Truth table of a half adder:
A	B	SUM	CARRY
0	0	0	0
0	1	1	0
1	0	1	0
1	1	0	1
*/

module half_adder(
  input logic A,
  input logic B,
  output logic SUM,
  output logic CARRY
);

// SUM (XOR)
xor_gate xor1(
  .A(A),
  .B(B),
  .F(SUM)
);

// CARRY (AND)
and_gate and1(
  .A(A),
  .B(B),
  .F(CARRY)
);

endmodule
