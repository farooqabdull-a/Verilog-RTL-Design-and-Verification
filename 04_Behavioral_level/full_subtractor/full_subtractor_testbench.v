module Full_Substractor_TB;

  reg a, b, cin;
  wire d,bo;

  Full_Substractor uut (.a(a),.b(b),.cin(cin),.d(d),.bo(bo));
  initial begin
    a = 0; b = 0; cin = 0; #10;
    a = 0; b = 0; cin = 1; #10;
    a = 0; b = 1; cin = 0; #10;
    a = 0; b = 1; cin = 1; #10;
    a = 1; b = 0; cin = 0; #10;
    a = 1; b = 0; cin = 1; #10;
    a = 1; b = 1; cin = 0; #10;
    a = 1; b = 1; cin = 1; #10;
    $display("%b %b %b | %b       %b", a, b, cin, d, bo);
    $finish;
  end
endmodule
