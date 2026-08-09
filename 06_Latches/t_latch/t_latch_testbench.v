module T_latch_TB;
    reg T;
    reg enable;
    reg reset;
    wire Q,Q_bar;
    T_latch uut (.T(T),.enable(enable),.reset(reset),.Q(Q),.Q_bar(Q_bar));

    initial begin

          T = 0; enable = 0; reset = 1;

          #10 reset = 0;
          #10 T = 1;
          #10 T = 0; enable = 1;
          #10 T = 1;
          #20 T = 0;
          #10 T = 1;
          #10 reset = 1;
          #10 reset = 0;
          #10 $finish;
    end

endmodule
