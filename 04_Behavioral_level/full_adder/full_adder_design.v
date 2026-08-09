module Full_adder(input a,b,cin,output reg sum,carry);
    always @(*) begin
        sum   = a ^ b ^ cin;
        carry = (a & b) | (b & cin) | (cin & a);
    end
endmodule
