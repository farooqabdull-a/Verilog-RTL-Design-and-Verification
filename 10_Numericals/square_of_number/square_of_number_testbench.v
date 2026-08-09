module square_of_number_TB;
reg [2:0]A;
wire [15:0]Y;
square_number dut (.A(A),.Y(Y));
initial
begin
A=2;
#10 A=4;
#10 $finish;
end
endmodule
