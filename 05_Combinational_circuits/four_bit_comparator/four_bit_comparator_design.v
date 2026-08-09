module comparator_4bit(input[3:0]A,[3:0]B,output reg A_LE_B,A_EQ_B,A_GR_B);

always @(*) begin

if (A<B) begin
A_LE_B = 1;
A_EQ_B = 0;
A_GR_B = 0;
end

else if (A==B) begin
A_LE_B = 0;
A_EQ_B = 1;
A_GR_B = 0;
end

else begin
A_LE_B = 0;
A_EQ_B = 0;


                                      33
A_GR_B = 1;
end

end
endmodule
