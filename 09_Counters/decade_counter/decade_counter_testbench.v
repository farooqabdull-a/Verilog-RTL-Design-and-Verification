module Decade_Counter_TB;
  reg clk, reset;
  wire [3:0] count;

  Decade_counter uut (.clk(clk),.reset(reset),.count(count));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    reset = 1;
    #15 reset = 0;
    #270 reset = 1;
    #10 reset = 0;
    #30 $finish;
  end

  initial begin
    $monitor("time=%0d | reset=%b | clk=%b | count=%d", $time, reset, clk,
count);
    end
endmodule
