module Basic_Gates_TB;
 reg a, b;
  wire not_out, and_out, nand_out, or_out, nor_out, xor_out, xnor_out;

  Basic_Gates uut
(.a(a),.b(b),.not_out(not_out),.and_out(and_out),.nand_out(nand_out),.or_out(or
_out),
  .nor_out(nor_out),.xor_out(xor_out),.xnor_out(xnor_out));

  initial begin
    a = 0; b = 0;
    #10;
    a = 0; b = 1;
    #10;
    a = 1; b = 0;
    #10;
    a = 1; b = 1; #10;
    $display("%b %b|%b %b %b %b %b %b %b", a, b, not_out, and_out, nand_out,
or_out, nor_out, xor_out, xnor_out);
    $finish;
  end
endmodule
