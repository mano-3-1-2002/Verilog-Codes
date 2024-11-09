module tb;
  reg i1,i2,s;
  wire y;
  mux_2_1 m(i1,i2,s,y);
  initial begin
    $monitor("%t:i1=%b,i2=%b,s=%b,y=%b",$time,i1,i2,s,y);
    i1=0;
    i2=1;
    s=1;#3
    s=0;#3
    $finish;
  end
endmodule
