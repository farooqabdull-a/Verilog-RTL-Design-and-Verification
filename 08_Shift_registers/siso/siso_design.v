module SISO_beha(input clk,reset,D,output reg Q);

 reg [3:0]temp;

 always @ (posedge clk)begin
  if (reset)
   begin
   temp =4'b0000;
   Q<=0;
   end
 else
  begin
   Q<=temp[0];
   temp<=temp>>1;
   temp[3]<=D;
  end
 end
endmodule
