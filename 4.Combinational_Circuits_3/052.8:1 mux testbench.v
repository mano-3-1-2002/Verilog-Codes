module tb;
  reg i1,i2,i3,i4,i5,i6,i7,i8,s1,s2,s3;
  wire y;
  mux_8_1 m(i1,i2,i3,i4,i5,i6,i7,i8,s1,s2,s3,y);
  initial begin
    $monitor("%t:i1=%b,i2=%b,i3=%b,i4=%b,i5=%b,i6=%b,i7=%b,i8=%b,s1=%b,s2=%b,s3=%b,y=%b",$time,i1,i2,i3,i4,i5,i6,i7,i8,s1,s2,s3,y);
   
    i1=1;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;i8=1;
    s1=1;s2=1;s3=1;#10
    i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=1;i8=0;
    s1=1;s2=1;s3=1;#3
    $finish;
  end
endmodule
    
    
