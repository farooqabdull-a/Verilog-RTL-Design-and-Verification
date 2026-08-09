module Full_Substractor(input a,b,cin,output reg d,bo);
    always @(*) begin
        d   = a ^ b ^ cin;
        bo = (~a & b) | (b & cin) | (cin & ~a);
    end
endmodule
