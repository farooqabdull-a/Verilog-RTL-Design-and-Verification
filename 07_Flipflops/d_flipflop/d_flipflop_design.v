module D_FF(input clk,reset,D,output reg q,output q_bar);
  always @(posedge clk) begin
        if (!reset)
            q<=1'b0;
        else
            q<=D;
        end
 assign q_bar=~q;
 endmodule
