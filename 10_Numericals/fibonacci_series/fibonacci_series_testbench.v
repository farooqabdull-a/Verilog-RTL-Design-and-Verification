module fibonacci_tb;
   reg clk, reset;
   wire [31:0] fib;

   Fibonacci_series uut (.clk(clk),.reset(reset),.fib(fib));

   initial begin
     clk = 0;
     forever #5 clk = ~clk;
   end
   initial begin
     reset = 1;
     #15 reset = 0;
     repeat (20) begin
       #10;
       $display("Time=%0t,fib= %d", $time, fib);
     end
     $finish;
   end
 endmodule
