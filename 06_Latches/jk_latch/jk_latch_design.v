module JK_latch (J,K,enable,reset,Q,Qn);
     input J,K,enable,reset;
     output reg Q, Qn;

     always @(*) begin
         if (reset) begin
             Q = 0;
             Qn = 1;
         end
         else if (enable) begin

                 if   (J == 0 && K == 0) begin
                      Q = Q;
                      Qn = Qn;
              end
             else if (J == 0 && K == 1) begin
                  Q = 0;
                  Qn = 1;
              end
             else if (J == 1 && K == 0) begin
                  Q = 1;
                  Qn = 0;
              end

                 else begin
                     Q = 1'bx;
                     Qn = 1'bx;
                 end
           end

        else begin
            Q = Q;
            Qn = Qn;
        end
    end
endmodule
