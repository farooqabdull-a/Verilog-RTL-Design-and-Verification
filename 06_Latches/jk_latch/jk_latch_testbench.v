module JK_latch_TB;
    reg J,K,enable,reset;
    wire Q, Qn;

    JK_latch uut (.J(J),.K(K),.enable(enable),.reset(reset),.Q(Q),.Qn(Qn));

    initial begin
$monitor("Time=%0t,reset=%b,enable=%b,J=%b,K=%b,Q=%b,Qn=%b", $time, reset,
enable, J, K, Q, Qn);

        reset = 1; enable = 0; K = J; K = 0; #10;
        reset = 0;

        enable = 0; J = 0; K = 0; #10;
        enable = 0; J = 0; K = 1; #10;
        enable = 0; J = 1; K = 0; #10;
        enable = 0; J = 1; K = 1; #10;
        enable = 1; J = 0; K = 0; #10;
        enable = 1; J = 0; K = 1; #10;
        enable = 1; J = 1; K = 0; #10;
        enable = 1; J = 1; K = 1; #10;
        enable = 0; J = 0; K = 0; #10;

        $finish;
    end
endmodule
