module D_latch_TB;
     reg D;
     reg enable;
     reg reset;
     wire Q,Q_bar;
     D_latch uut (.D(D),.enable(enable),.reset(reset),.Q(Q),.Q_bar(Q_bar));

     initial begin

          D = 0; enable = 0; reset = 0;

          #5 reset = 1;
          #10 reset = 0;

          #10 enable = 1; D = 0;
          #10 D = 1;
          #10 enable = 0; D = 0;
          #10 D = 1;
          #10 enable = 1;
          #10 D = 0;
          #10 reset = 1;
          #10 reset = 0;


                                          41
           #10 $finish;
     end

 endmodule
