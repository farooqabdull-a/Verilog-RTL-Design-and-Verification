module Basic_Gates(input a,b,output
not_out,and_out,nand_out,or_out,nor_out,xor_out,xnor_out);
    not G1 (not_out, a);
    and G2 (and_out, a, b);
    nand G3 (nand_out, a, b);
    or G4 (or_out, a, b);
    nor G5 (nor_out, a, b);
    xor G6 (xor_out, a, b);
    xnor G7 (xnor_out, a, b);
 endmodule
