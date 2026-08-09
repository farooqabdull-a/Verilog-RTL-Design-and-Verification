module SR_latch (S,R,enable,reset,Q,Qn);
     input S,R,enable,reset;
     output reg Q, Qn;

     always @(*) begin
         if (reset) begin
             Q = 0;
             Qn = 1;
         end
         else if (enable) begin

             if   (S == 0 && R == 0) begin
                  Q = Q;
                  Qn = Qn;
             end
            else if (S == 0 && R == 1) begin
                 Q = 0;
                 Qn = 1;
             end
             else if (S == 1 && R == 0) begin
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
