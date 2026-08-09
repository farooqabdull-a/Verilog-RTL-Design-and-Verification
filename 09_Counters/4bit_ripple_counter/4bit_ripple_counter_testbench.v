module four_bit_Ripple_counter_TB;
  reg clk, reset,t;
   wire [3:0] q;

   four_bit_ripple_counter uut(.clk(clk),.reset(reset),.t(t),.q(q));

   initial begin


                                       67
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
  t=1'b1;
  end

  initial begin
    reset = 1;
    #15 reset = 0;
    repeat(20) begin
      #10;
      $display("Time=%0t,reset=%b,q=%b,t=%b", $time,t,reset, q);
    end
    $finish;
  end
endmodule
