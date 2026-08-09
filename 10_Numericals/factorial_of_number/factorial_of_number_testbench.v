module factorial_of_fun_TB;
reg [3:0] a;
wire [15:0]y;
factorial_of_num_fun dut (.a(a),.y(y));
initial
begin
a=4'b0101; #20
a=4'b0100; #20
$finish;
end
endmodule
