// a simple 2x1 multiplexer gate implemented from not, and, or gates
// It's used to choose one signal from two inputs
// Formula: F = (A ∧ ¬Select) ∨ (B ∧ Select)

module mux_2to1(
    input logic A,
    input logic B,
    input logic sel,
    output logic F
);

logic sel_complement;

not_gate not1(
    .A(sel),
    .F(sel_complement)
);

logic a_path;

and_gate and1(
    .A(A),
    .B(sel_complement),
    .F(a_path)
);

logic b_path;

and_gate and2(
    .A(B),
    .B(sel),
    .F(b_path)
);

or_gate or1(
    .A(a_path),
    .B(b_path),
    .F(F)
);

endmodule

// If both signals happen to carry the same value, 
// you can’t tell from the output alone which path was selected — 
// but the circuit still selected one. 
// It is done based on the 'Select' signal.
