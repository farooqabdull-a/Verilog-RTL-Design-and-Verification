module Fibonacci_series(input clk,reset,output reg [31:0] fib);

   reg [31:0] prev;
   always @(posedge clk or posedge reset) begin
     if (reset) begin
       fib <= 32'd0;
       prev <= 32'd1;
     end else begin
       fib <= fib + prev;
       prev <= fib;
     end
   end
 endmodule
