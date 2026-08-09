module half_adder(input A,B,output reg S,C);
 always @(*) begin
 S<=A^B;
 C<=A&B;
 end
 endmodule

module Full_adder(input A,B,C,output Sum ,Carry);
 wire S1,C1,C2;
 half_adder H1(.A(A),.B(B),.S(S1),.C(C1));
 half_adder H2(.A(S1),.B(C),.S(Sum),.C(C2));
 assign Carry= C1|C2;
 endmodule

module Ripple_carry_adder(input [3:0]A,[3:0]B,Cin,output [3:0]S,Cout);
 wire [2:0]C;

 Full_adder FA1(.A(A[0]),.B(B[0]),.C(Cin),.Sum(S[0]),.Carry(C[0]));
 Full_adder FA2(.A(A[1]),.B(B[1]),.C(C[0]),.Sum(S[1]),.Carry(C[1]));
 Full_adder FA3(.A(A[2]),.B(B[2]),.C(C[1]),.Sum(S[2]),.Carry(C[2]));
 Full_adder FA4(.A(A[3]),.B(B[3]),.C(C[2]),.Sum(S[3]),.Carry(Cout));

 endmodule
