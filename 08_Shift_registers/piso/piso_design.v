module PISO(input clk,reset,load,[3:0] parallel_in,output reg serial_out);

     reg [3:0] shift_reg;

     always @(posedge clk or posedge reset) begin
         if (reset) begin
             shift_reg <= 4'b0000;
             serial_out <= 1'b0;
         end else if (load) begin
             shift_reg <= parallel_in;
             serial_out <= parallel_in[3];
         end else begin
             shift_reg <= {shift_reg[2:0], 1'b0};
              serial_out <= shift_reg[2];
        end
    end
endmodule
