module PIPO(input clk,reset,load,[3:0] parallel_in,output reg [3:0] parallel_out);

     always @(posedge clk or posedge reset) begin
         if (reset)
             parallel_out <= 4'b0000;
         else if (load)
             parallel_out <= parallel_in;
     end
 endmodule
