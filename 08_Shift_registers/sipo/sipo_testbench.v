module SIPO_TB_beha;
 reg D,clk,reset;
 wire [3:0]Q;
 SIPO uut (.D(D),.clk(clk),.reset(reset),.Q(Q));

 always #5 clk=~clk;
 
initial begin
clk=0;
reset=1; D=0;
#10 reset =0;
#10 D =1;
#10 D=0;
#10 D=1;
#10 D =1;
#10 D=0;
#30 D=0;
#120 $finish;
end
endmodule
