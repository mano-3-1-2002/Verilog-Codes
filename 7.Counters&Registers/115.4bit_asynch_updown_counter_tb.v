module tb;
  reg clk,rst,t,up;
  wire [3:0] q,qb;
  asynch_updown a(.clk(clk),.rst(rst),.t(t),.up(up),.q(q),.qb(qb));
  initial begin
    $monitor("time = %0d,up = %0d,q=%0d",$time,up,q);
    clk = 0;
    rst = 1;
    #5rst = 0;
    t = 1;
    up= 1;
    #170 up = 0;
    #350 $finish;
  end
  always #5 clk = ~clk;
  initial begin
    $dumpfile("asynch_updown.vcd");
    $dumpvars;
  end
endmodule
    
