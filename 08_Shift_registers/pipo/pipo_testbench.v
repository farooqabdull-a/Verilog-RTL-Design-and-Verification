module PIPO_TB;

   reg clk,reset,load, [3:0] parallel_in;
   wire [3:0] parallel_out;

 PIPO uut
 (.clk(clk),.reset(reset),.load(load),.parallel_in(parallel_in),.parallel_out(parallel_out));

   initial begin
     clk = 0;
     forever #5 clk = ~clk;
   end
   initial begin
      $display("Time=%0t,reset=%b,load=%b,parallel_in=%b,parallel_out=%b", $time, reset, load, parallel_in, parallel_out);

     reset = 1; load = 0; parallel_in = 4'b0000; #10;
     reset = 0; #10;

     load = 1; parallel_in = 4'b1010; #10;
     load = 0; #20;

     load = 1; parallel_in = 4'b1100; #10;
     load = 0; #20;

     reset = 1; #10;
     reset = 0; #10;

     load = 1; parallel_in = 4'b0110; #10;
     load = 0; #20;

     $finish;
   end
 endmodule
