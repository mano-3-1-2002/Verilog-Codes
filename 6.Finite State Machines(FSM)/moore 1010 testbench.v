module tb;
  reg i,clk,rst;
  wire y;
  moore_1010 f1(.i(i),.clk(clk),.rst(rst),.y(y));
  always #2 clk = ~clk;
  initial begin
    $monitor("%t:clk=%0b,rst=%0b,i=%0b,y=%0b",$time,clk,rst,i,y);
    clk=0;
    i=0;#1;
    rst=0;#2;
 
    rst=1;#3;
    i=1;#4;
    i=1;#4;
    i=0;#4;
    i=1;#4;
    i=0;#4;
    i=1;#4;
    i=0;#4;
    i=1;#4;
    i=1;#4;
    i=1;#4;
    i=0;#4;
    i=1;#4;
    i=0;#4;
    i=1;#4;
    i=0;#10;
    $finish;
  end
  initial begin
    $dumpfile("moore_1010.vcd");
    $dumpvars;
  end
endmodule
