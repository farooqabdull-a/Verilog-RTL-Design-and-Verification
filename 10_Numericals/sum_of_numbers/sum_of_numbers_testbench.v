module sum_of_number_TB;
reg [2:0]a,b;
wire [3:0]y;

sum_of_number uut (.a(a),.b(b),.y(y));
initial
begin
$monitor ("Time =%0t, a=%d(%b),b=%d(%b),y=%d(%b)",$time ,a,a,b,b,y,y);
a = 3'd0; b = 3'd0; #10;
a = 3'd1; b = 3'd2; #10;
a = 3'd3; b = 3'd4; #10;
a = 3'd5; b = 3'd2; #10;
a = 3'd7; b = 3'd7; #10;
$finish;
end
endmodule
