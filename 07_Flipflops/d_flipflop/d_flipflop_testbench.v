module D_FF_TB;
 reg clk,reset,D;
 wire q,q_bar;

 D_FF uut (.clk(clk),.reset(reset),.D(D),.q(q),.q_bar(q_bar));

 initial begin
 clk = 0;
 forever #5 clk = ~clk;
 end

 initial begin
 reset = 0; D = 0;
 #10 reset = 1;
 #10 D = 0;
 #10 D = 1;
 #10 D = 0;
 #10 reset = 0;
 #10 reset = 1;
 D = 1;
 $display("Time=%0t,reset=%b,D=%b,q=%b,q_bar=%b",$time,reset,D,q,q_bar);
 #10 $finish;
 end
 endmodule
