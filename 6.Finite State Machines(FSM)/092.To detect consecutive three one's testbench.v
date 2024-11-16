module tb;
  reg clk,rst,i;
  wire y;
  cons c1(clk,rst,i,y);
  initial begin
    clk = 0;
  forever #2 clk = ~clk;
  end
  initial begin
    i = 0;
    #1 rst = 0;
    
    
    #3 i = 1;
    #2 rst = 1;
    #4 i = 1;
    
    #4 i = 0;
    #4 i = 1;
    #4 i = 1;
    #4 i = 1;
    #4 i = 0;
    #4 i = 1;
    #4 i = 1;
    #4 i = 1;
    #4 i = 0;
    #4 i = 1;
    #4 i = 1;
    #4 i = 1;
    #4 i = 1;
    #10;
    $finish;
  end
  initial begin
    $monitor("%t,rst=%b,clk=%b,i=%b,y=%b",$time,rst,clk,i,y);
  end
  initial begin
    $dumpfile("cons.vcd");
    $dumpvars;
  end
endmodule
  
