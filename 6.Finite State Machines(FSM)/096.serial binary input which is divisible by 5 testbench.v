module tb;
  reg clk,rst,i;
  wire y;
  divisible_by_5 d1(clk,rst,i,y);
  initial begin
    clk = 0;
  forever #5 clk = ~clk;
  end
  initial begin
    i = 0;
    rst = 0;
    #15 rst = 1;
    
    #15 i = 1;
    #15 i = 1;
    #15 i = 0;
    #15 i = 0;
    #15 i = 1;
    #15 i = 1;
    #15 i = 1;
    #15 i = 0;
    #15 i = 1;
    #15 i = 0;
    #15 i = 1;
   
    $finish;
  end
  initial begin
    $monitor("%t,rst=%b,clk=%b,i=%b,y=%b",$time,rst,clk,i,y);
  end
  initial begin
    $dumpfile("divisible_by_5.vcd");
    $dumpvars;
  end
endmodule
