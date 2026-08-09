module Half_adder_TB;
  reg a, b;
  wire s, c;
Half_adder uut (.a(a),.b(b),.s(s),.c(c));
  initial begin
    a = 0; b = 0;
     #10;
    a = 0; b = 1;
     #10;
    a = 1; b = 0;
    #10;
    a = 1; b = 1;
    #10;
    $display("%b %b|%b %b", a, b, s, c);

    $finish;
    end
endmodule
