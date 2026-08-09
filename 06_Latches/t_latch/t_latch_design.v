module T_latch (input T,enable,reset,output reg Q,output Q_bar);

 always @(*) begin
     if (reset)
         Q = 1'b0;
     else if (enable) begin
         if (T)
              Q = ~Q;
         else
              Q = Q;
     end
     else
         Q = Q;
 end
 assign Q_bar=~Q;



                                       42
endmodule
