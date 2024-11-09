module tb;
  reg s1,s2;
  reg i1,i2,i3,i4;
  wire y;
  
  mux_4_1 mux(i1,i2,i3,i4,s1,s2,y);
  
  initial begin
    $monitor("s1=%b,s2 = %b, i4 = %0b, i3 = %0b ,i2 = %0b, i1 = %0b, y = %0b", s1,s2,i4,i3,i2,i1, y);
   i1=0;i2=1;i3=0;i4=0;
   s1=0;s2=0;#3
   s1=0;s2=1;#3;
   i1=1;i2=0;i3=1;i4=0;
   s1=1;s2=0;#3
   s1=1;s2=1;#3;
   
    
  end
endmodule
