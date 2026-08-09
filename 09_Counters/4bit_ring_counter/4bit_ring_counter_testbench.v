module Ring_counter_4bit_TB;

   reg clk;
   reg reset;
   wire [3:0] q;

   Ring_counter_4bit uut (.clk(clk),.reset(reset),.q(q));

   initial begin
     clk = 0;
     forever #5 clk = ~clk;
   end

   initial begin
     $display("Time=%0t,reset=%b,q=%b",$time, reset, q);

     reset = 1; #10;
     reset = 0; #100;

     $finish;
   end
 endmodule
