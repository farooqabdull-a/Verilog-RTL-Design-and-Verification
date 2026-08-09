module square_number(input[2:0] A,output reg [15:0] Y);
function [15:0]squ_number (input [2:0]b);
begin
squ_number=b*b;
end
endfunction

always @(*)
Y=squ_number(A);
endmodule
