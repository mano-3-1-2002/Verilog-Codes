module tb;
  reg t,clk,rst;
  wire q;
  t_flip t1(t,clk,rst,q);
  always begin #6 clk=~clk;
  end
  initial begin
    $monitor("%t:clk=%0b,rst=%0b,t=%0b,q=%0b",$time,clk,rst,t,q);
    clk=0;rst=0;#3;
    rst=1;#3;
    t=0;#6;
    t=1;#6;
    t=0;#6;
    t=1;#10;
    rst=0;#3
    t=0;#10;
    t=1;#10;
    t=0;#10;
    t=1;#10;
    $finish;
  end
  initial begin
    $dumpfile("t_flip.vcd");
    $dumpvars(1,tb);
  end
endmodule
    
