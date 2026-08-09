module T_FF(input clk,reset,T,output reg q,output q_bar);

   always @(posedge clk) begin
      
        if (!reset)
        q<=1'b0;
        else if (T)
        q<=~q;
        else
       q<=q;
       end
   
assign q_bar = ~q;
 endmodule
