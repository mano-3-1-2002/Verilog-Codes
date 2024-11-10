module tb;
  reg i1,i2,i3,i4;
  wire y1,y2;
  encoder_4_2 e1(i1,i2,i3,i4,y1,y2);
  initial begin
    $monitor("%t:i1=%b,i2=%b,i3=%b,i4=%b,y1=%b,y2=%b",$time,i1,i2,i3,i4,y1,y2);
    i1=1;i2=0;i3=0;i4=0;#3
    i1=0;i2=1;i3=0;i4=0;#3
    i1=0;i2=0;i3=1;i4=0;#3
    $finish;
  end
endmodule
