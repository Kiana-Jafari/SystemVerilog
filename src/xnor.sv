// a simple xnor gate
// Several ways: Could we use A ~^ B, ~(A ^ B), or composition (through xor_gate that we defined previously)
module xnor_gate(
  input logic A,
  input logic B,
  output logic F
);

assign F = A ~^ B; // Also -> ~(A ^ B)

endmodule
