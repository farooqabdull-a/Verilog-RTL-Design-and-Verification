module SR_FF( input clk,reset,S,R,output reg q, output q_bar);

 always @(posedge clk)begin
 if (!reset) q<=0;
     else begin
       case({S,R})
        2'b00 : q<=q;
        2'b01 : q<=0;
        2'b10 : q<=1;
        2'b11 : q<=1'bx;
        endcase
     end
   end
   assign q_bar=~q;
 endmodule
