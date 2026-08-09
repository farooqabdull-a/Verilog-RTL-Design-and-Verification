module Full_Substractor(input a,b,cin,output d,bo);

    wire w1, w2, w3, w4;
    xor (w1, a, b);
    xor (d, w1, cin);
    and (w2, ~a, b);
    and (w3, b, cin);
    and (w4, cin, ~a);
    or (bo, w2, w3, w4);
endmodule
