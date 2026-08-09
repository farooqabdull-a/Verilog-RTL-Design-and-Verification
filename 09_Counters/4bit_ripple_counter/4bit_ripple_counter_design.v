module T_flipflop (input clk, input reset, input T, output reg Q);
   always @(posedge clk or posedge reset)
     if (reset)
       Q <= 1'b0;
     else
       if (T)
         Q <= ~Q;
       else
         Q <= Q;
 endmodule

module four_bit_ripple_counter (input clk,reset,t,output [3:0] q);
   wire q0,q1,q2,q3;
   T_flipflop tff0(.clk(clk),.reset(reset),.T(t),.Q(q0));
   T_flipflop tff1(.clk(~q0),.reset(reset),.T(t),.Q(q1));
   T_flipflop tff2(.clk(~q1),.reset(reset),.T(t),.Q(q2));
   T_flipflop tff3(.clk(~q2),.reset(reset),.T(t),.Q(q3));
   assign q = {q3,q2,q1,q0};
 endmodule
