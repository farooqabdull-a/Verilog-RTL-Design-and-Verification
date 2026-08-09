module Basic_Gates(input a, b,output reg
not_out,and_out,nand_out,or_out,nor_out,xor_out,xnor_out);
    always @(*) begin
        not_out = ~a;
        and_out = a & b;
        nand_out = ~(a & b);
        or_out   = a | b;

                                      25
        nor_out = ~(a | b);
        xor_out = a ^ b;
        xnor_out = ~(a ^ b);
    end
endmodule
