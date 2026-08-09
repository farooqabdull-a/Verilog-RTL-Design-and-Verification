module fourbit_upcounter_TB;
  reg clk, reset;
  wire [3:0] count;

  fourbit_upcounter uut (.clk(clk),.reset(reset),.count(count));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    reset = 1;
    #15 reset = 0;
    #250 reset = 1;
    #10 reset = 0;
    #30 $finish;
  end

  initial begin
    $monitor("time=%0t,reset=%b,clk=%b,count=%t", $time, reset, clk, count);
  end
endmodule
