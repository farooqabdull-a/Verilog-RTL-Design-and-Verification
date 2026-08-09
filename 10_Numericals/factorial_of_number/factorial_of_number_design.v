module factorial_of_num_fun(a,y);
 input [3:0]a;
 output reg [15:0]y;
 function [15:0] factorial;
 input [3:0]n;
 integer i ;
 begin
 factorial=1;
 for (i=1;i<=n;i=i+1)
     factorial = factorial*i;
     end
     endfunction
 always @(*)
 begin
 y=factorial(a);
 end
 endmodule
