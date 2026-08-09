module Half_Substractor_TB;
  reg a, b;
  wire d, bo;
  Half_Substractor uut (.a(a),.b(b),.d(d),.bo(bo));
  initial begin
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $display("%b %b|%b %b", a, b, d, bo);
    $finish;
    end
endmodule
