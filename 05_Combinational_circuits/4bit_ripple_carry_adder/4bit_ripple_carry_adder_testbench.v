module Ripple_carry_adder_TB;
reg [3:0]A;
reg [3:0]B;
reg Cin;
wire [3:0]S;
wire Cout;

Ripple_carry_adder uut (.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));

initial begin

A=4'b0000; B=4'b0001; Cin=0; // 0+1+0=1
#10 A=4'b0010; B=4'b0011; Cin=1;// 2+3+1=6
#10 A=4'b0100; B=4'b0101; Cin=0;// 4+5+0=9
#10 A=4'b0110; B=4'b0111; Cin=1;// 6+7+1=14
#10 A=4'b1000; B=4'b1001; Cin=0;// 8+9+0=17
#10 A=4'b1010; B=4'b1011; Cin=1;// 10+11+1=22
#10 A=4'b1100; B=4'b1101; Cin=0;// 12+13+0=25
#10 A=4'b1110; B=4'b1111; Cin=1;// 14+15+1=30

end
initial begin
$display ("Time=%0t,A=%b,B=%b,Cin=%b,S=%t,Cout=%t",$time,A,B,Cin,S,Cout);
end

endmodule
