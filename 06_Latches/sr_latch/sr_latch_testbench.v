module SR_latch_TB;
    reg S,R,enable,reset;
    wire Q, Qn;

    SR_latch uut (.S(S),.R(R),.enable(enable),.reset(reset),.Q(Q),.Qn(Qn));

    initial begin
        reset = 1; enable = 0; S = 0; R = 0;
        #10;
        reset = 0;

        enable = 0; S = 0; R = 0; #10;
        enable = 0; S = 1; R = 0; #10;
        enable = 1; S = 0; R = 0; #10;
        enable = 1; S = 0; R = 1; #10;
        enable = 1; S = 1; R = 0; #10;
        enable = 1; S = 1; R = 1; #10;
        enable = 0; S = 0; R = 0; #10;
 $monitor("Time=%0t ,reset=%b,enable=%b,S=%b R=%b,Q=%b Qn=%b", $time, reset,
enable, S, R, Q, Qn);
        $finish;
    end
endmodule
