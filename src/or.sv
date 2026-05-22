// a simple or gate
module or_gate(
    input logic A,
    input logic B,
    output logic F
);

assign F = A | B;

endmodule
