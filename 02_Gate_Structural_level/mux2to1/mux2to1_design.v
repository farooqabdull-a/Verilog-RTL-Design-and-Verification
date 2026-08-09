module mux2to1(input a,b,sel,output y);

    wire sel_n, w1, w2;
    not(sel_n, sel);
    and(w1, a, sel_n);
    and(w2, b, sel);
    or(y, w1, w2);
endmodule
