odule siso_tb;
  reg clk;
  reg rst;
  reg si;
  wire so;
  siso sr(.clk(clk),.rst(rst),.si(si),.so(so));
  always #2 clk = ~clk;
  initial begin
    $monitor("time=%t,so=%0b",$time,so);
    clk = 0;
    rst = 1;
    si = 0;
    #6 rst = 0;
    si = 1;#6
    si = 0;#6
    si = 1;#6
    si = 1;
    #10
    $finish;
  end
  initial begin
    $dumpfile("siso.vcd");
    $dumpvars;
  end
endmodule
