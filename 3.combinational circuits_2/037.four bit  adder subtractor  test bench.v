module tb;
  reg [3:0]a,b;
  reg ctrl;
  wire [3:0] sum,carry;
  adder_subtractor as(a,b,ctrl,sum,carry);
  initial
    begin
      $monitor("%t:a=%b,b=%b,ctrl=%b,sum=%b,carry=%b",$time,a,b,ctrl,sum,carry);
      ctrl = 0;
    a = 1; b = 0;
    #3 a = 2; b = 4;
    #3 a = 4'hb; b = 4'h6;
    #3 a = 5; b = 3;
    ctrl = 1;
    a = 1; b = 0;
    #3 a = 2; b = 4;
    #3 a = 4'hb; b = 4'h6;
    #3 a = 5; b = 3;
    #3 $finish;
  end
  
  initial begin
    $dumpfile("adder_subtractor.vcd");
    $dumpvars;
  end
endmodule
  
