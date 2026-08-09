module Half_Substractor(input a,b,output d,bo);
    xor gate_xor(d, a, b);
    and gate_and(bo, ~a, b);
endmodule
