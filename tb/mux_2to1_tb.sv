module mux_2to1_tb;

logic A;
logic B;
logic sel;
logic F;

// Design Under Test (DUT)
mux_2to1 mux(
    .A(A),
    .B(B),
    .sel(sel),
    .F(F)
);

initial begin
    $display("A | B | Select | F");
    $display("------------------------");

    A = 0; B = 0; sel = 0;
    #10;
    $display("%b | %b |  %b  |  %b",
             A, B, sel, F);

    A = 0; B = 0; sel = 1;
    #10;
    $display("%b | %b |  %b  |  %b",
             A, B, sel, F);

    A = 0; B = 1; sel = 0;
    #10;
    $display("%b | %b |  %b  |  %b",
             A, B, sel, F);

    A = 0; B = 1; sel = 1;
    #10;
    $display("%b | %b |  %b  |  %b",
             A, B, sel, F);

    A = 1; B = 0; sel = 0;
    #10;
    $display("%b | %b |  %b  |  %b",
             A, B, sel, F);

    A = 1; B = 0; sel = 1;
    #10;
    $display("%b | %b |  %b  |  %b",
             A, B, sel, F);

    A = 1; B = 1; sel = 0;
    #10;
    $display("%b | %b |  %b  |  %b",
             A, B, sel, F);

    A = 1; B = 1; sel = 1;
    #10;
    $display("%b | %b |  %b  |  %b",
             A, B, sel, F);

    $finish;
end

endmodule

/*
A | B | Select | F
------------------------
0 | 0 |  0  |  0
0 | 0 |  1  |  0
0 | 1 |  0  |  0
0 | 1 |  1  |  1
1 | 0 |  0  |  1
1 | 0 |  1  |  0
1 | 1 |  0  |  1
1 | 1 |  1  |  1
tb\mux_2to1_tb.sv:60: $finish called at 80 (1s)
*/
