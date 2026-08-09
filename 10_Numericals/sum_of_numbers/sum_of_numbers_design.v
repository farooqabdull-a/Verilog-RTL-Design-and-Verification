module sum_of_number(input[2:0]a,input [2:0]b,output reg[3:0] y);
function [3:0]sum_fun;
 input[2:0] a,b;
begin
sum_fun = a+b;
end
endfunction
always @(*)begin
y = sum_fun(a,b);
end
endmodule
