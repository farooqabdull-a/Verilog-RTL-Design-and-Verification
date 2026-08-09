module comparator_4bit_TB;
reg [3:0]A,B ;
wire A_LE_B,A_EQ_B,A_GR_B;

comparator_4bit uut
(.A(A),.B(B),.A_LE_B(A_LE_B),.A_EQ_B(A_EQ_B),.A_GR_B(A_GR_B));

initial begin
A=4'b0000;B=4'b1110; #10
A=4'b1111;B=4'b0001; #10
A=4'b0010;B=4'b0010; #10
A=4'b1101;B=4'b0011; #10
A=4'b0100;B=4'b1010; #10
A=4'b1011;B=4'b0101; #10
A=4'b0110;B=4'b0110; #10
A=4'b1001;B=4'b0111; #10

$finish;
$display("TIme=0%t,A=%b,B=%b,A_LE_B=%b,A_EQ_B=%b,A_GR_B=%b",$time,A,B,A_LE_B,A_
EQ_B,A_GR_B);
end
endmodule
