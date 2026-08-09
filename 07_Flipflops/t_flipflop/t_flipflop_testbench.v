module T_FF_tb;
    reg clk;
    reg reset;
    reg T;
    wire q;
    wire q_bar;

    T_FF uut (.clk(clk),.reset(reset),.T(T),.q(q),.q_bar(q_bar));
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 0; T = 0;
        #10;

        reset = 0;
        #10;
        reset = 1;

#10; T = 0;
#10; T = 1;
#10; T = 1;
#10; T = 0;
#10; T = 1;

#10; reset = 0;
#10; reset = 1;
#20;
$finish;
end
initial begin
$monitor("Time=%0t,reset=%b, T=%b, q=%b, q_bar=%b", $time, reset, T, q, q_bar);
end
endmodule
