module PISO_TB;

  reg clk,reset,load,[3:0] parallel_in;
  wire serial_out;

  PISO uut
(.clk(clk),.reset(reset),.load(load),.parallel_in(parallel_in),.serial_out(seri
al_out));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  initial begin

    reset = 1; load = 0; parallel_in = 4'b0000; #10;
    reset = 0; #10;

    load = 1; parallel_in = 4'b1101; #10; load = 0;
    #10; #10; #10; #10;

    load = 1; parallel_in = 4'b0011; #10; load = 0;
    #10; #10; #10; #10;

    load = 1; parallel_in = 4'b1000; #10; load = 0;
    #10; #10; #10; #10;

    load = 1; parallel_in = 4'b0110; #10; load = 0;
    #10; #10; #10; #10;
    $display
("Time=%0t,reset=%b,parallel_in=%b,serial_out=%b,load=%b",$time,reset,load,para
llel_in,serial_out);
    $finish;
  end
endmodule
