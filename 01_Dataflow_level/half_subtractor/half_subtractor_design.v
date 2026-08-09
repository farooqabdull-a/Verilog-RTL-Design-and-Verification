module Half_Substractor(input a,b,output d,bo);
    assign d = a ^ b;
    assign bo = a & b;
endmodule
