module SIPO(input clk,reset,D,output reg[3:0] Q);

 always @ (posedge clk)begin
 if (reset)
 begin
 Q<=0;
 end
 else
 begin
 Q[3]<=D;
 Q[2]<=Q[3];
 Q[1]<=Q[2];
 Q[0]<=Q[1];
 end
 end
 endmodule
