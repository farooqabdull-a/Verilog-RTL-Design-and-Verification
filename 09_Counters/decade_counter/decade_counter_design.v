module Decade_counter(
input clk,
input reset,
output reg [3:0] count);

initial count = 4'b0000;

always @(posedge clk) begin
if (reset == 1'b1)
    count <= 4'b0000;
   else if (count == 4'b1001)
    count <= 4'b0000;
   else
     count <= count + 1;
    end

endmodule
