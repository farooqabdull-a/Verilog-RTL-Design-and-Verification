module JK_FF_TB;
reg clk;
reg reset;
reg J;
reg K;
wire q;
wire q_bar;

JK_FF uut (.clk(clk),.reset(reset),.J(J),.K(K),.q(q),.q_bar(q_bar));



  initial begin
$display("Time=%0t reset=%b J=%b K=%b q=%b q_bar=%b", $time, reset, J,K, q,
q_bar);
    clk = 0;
    forever #5 clk = ~clk;
  end
    initial begin
    reset= 0; J = 0; K = 0;
    #10 reset = 1;

    #10 J = 0; K = 0;
    #10 J = 0; K = 1;
    #10 J = 1; K = 0;
    #10 J = 1; K = 1;
    #10 $finish;
  end
endmodule
