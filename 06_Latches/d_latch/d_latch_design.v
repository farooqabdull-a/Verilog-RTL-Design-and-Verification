module D_latch (input D,enable,reset,output reg Q,output Q_bar);

 always @(*) begin
     if (reset)
         Q = 1'b0;
     else if (enable)
         Q = D;
 end
 assign Q_bar=~Q;
 endmodule
