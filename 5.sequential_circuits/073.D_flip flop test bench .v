module tb;
  reg d,clk,rst;
  wire q;
  d_flip d1(d,clk,rst,q);
  always begin #1 clk=~clk;
    #1 rst = ~rst;
  end
 
  initial begin
    $monitor("%t:clk=%0d,rst=%0d,d=%0d,q=%0d",$time,clk,rst,d,q);
    clk=0;rst=0;d=0;#3;
    rst=1;
    repeat(3)begin
      d=$urandom_range(0,1);#3;
      rst=$urandom_range(0,1);#3;
    end
    $finish;#4;
  end
  initial begin
    $dumpfile("d_flip.vcd");
    $dumpvars;
  end
endmodule
