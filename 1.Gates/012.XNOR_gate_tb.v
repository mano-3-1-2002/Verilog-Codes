module xnor_tb;
  reg a,b;
  wire y;
  xnor_gate x1(a,b,y);
  initial begin
    $monitor("a=%d,b=%d,y=%d",a,b,y);
    a=0;b=0;#3;
    a=0;b=1;#3;
    a=1;b=0;#3;
    a=1;b=1;#3;
    $finish;
  end
endmodule
