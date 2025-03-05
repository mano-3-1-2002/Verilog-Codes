module tb;
  reg clk,rst,up;
  wire [3:0] count;
  syn_counter s(.clk(clk),.rst(rst),.up(up),.count(count));
  initial begin
    $monitor("count = %0d",count);
    clk = 0;
    rst = 1;
    #6 rst = 0;
    up = 0;
    #80 up = 1;
    #150 $finish;
  end
  always #2 clk = ~ clk;
  initial begin
    $dumpfile("syn_counter.vcd");
    $dumpvars();
  end
endmodule
    
