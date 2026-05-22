// a simple not gate (inverter)
module not_gate(
  input logic A,
  output logic F
);

assign F = ~A;

endmodule
