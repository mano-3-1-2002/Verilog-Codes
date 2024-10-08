module tb;
  reg a;
  wire y;
  not_gate n1(a,y);
  initial begin
    $monitor("a=%d,y=%d",a,y);
    a=0;#3;
    a=1;#3;
    $finish;
  end
endmodule
