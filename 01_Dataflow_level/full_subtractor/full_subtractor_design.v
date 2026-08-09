module Full_substractor(input a,b,cin,output d, bo);
    assign d = a ^ b ^ cin;
    assign bo = (~a & b)| (b & cin) | (cin & ~a);
endmodule
