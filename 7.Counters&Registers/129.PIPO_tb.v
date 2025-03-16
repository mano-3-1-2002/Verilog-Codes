module tb;
  reg clk,rst;
  reg [3:0]pi;
  wire[3:0] po;
  pipo pireg(.clk(clk),.rst(rst),.pi(pi),.po(po));
  
  initial begin
    $monitor("time=%0t,po=%0b",$time,po);
    clk=0;
    rst = 1;
    pi = 4'b0000;
    #5rst = 0;
    pi = 4'b1111;
    #6 pi = 4'b1010;
    #10 pi = 4'b1100;
    #100 $finish;
  end
  always #2 clk = ~clk;
  initial begin
    $dumpfile("pipo.vcd");
    $dumpvars();
  end
endmodule
