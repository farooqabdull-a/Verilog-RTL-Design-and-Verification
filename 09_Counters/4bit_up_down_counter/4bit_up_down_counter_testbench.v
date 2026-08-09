module fourbit_upanddown_counter_TB;
   reg clk, reset,up_down;
   wire [3:0] count;

   fourbit_upanddown_counter uut
 (.clk(clk),.reset(reset),.count(count),.up_down(up_down));




                                        61
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    reset = 1;
    #10 up_down=1;
    #15 reset = 0;
    #160 reset = 1;
    #10 reset = 0;
    #10 up_down=0;
    #160 reset=1;
    #10 reset=0;
    #30 $finish;
  end
  initial begin
    $monitor("time=%0d | reset=%b | clk=%b | count=%d", $time, reset, clk,
count);
  end
endmodule
