odule tb;
  reg clk,rst,si;
  wire [3:0] po;
  sipo sr(.clk(clk),.rst(rst),.si(si),.po(po));
  initial begin
    clk = 0;
    rst = 1;
    si = 0;
    #3 rst = 0;
    si = 1;#3;
    si = 1;
    #3 si = 1;
    #3 si = 1;
    #100 $finish;
  end
  always #2 clk = ~clk;
  initial begin
    $monitor("time=%t,po=%0b",$time,po);
  end
  initial begin
    $dumpfile("sipo.vcd");
    $dumpvars();
  end
endmodule
    
    
