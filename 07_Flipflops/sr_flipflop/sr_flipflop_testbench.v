module SR_FF_TB;
 reg clk;
 reg reset;
 reg S;
 reg R;
 wire q;
 wire q_bar;

 SR_FF uut(.clk(clk),.reset(reset),.S(S),.R(R),.q(q),.q_bar(q_bar));



  initial begin
  clk=0 ;
  forever #5 clk=~clk;
  end
  initial begin

  reset= 0;S=0;R=0;
  #10 reset=1;


                                       44
 S=0;R=0;
 #10
 S=0;R=1;
 #10
 S=1;R=0;
 #10
 S=1;R=1;

$display("Time=%0t,clk=%b,reset=%b,S=%b,R=%b,q=%b,q_bar=%b",$time,clk,reset,S,R
,q,q_bar);
 end

endmodule
