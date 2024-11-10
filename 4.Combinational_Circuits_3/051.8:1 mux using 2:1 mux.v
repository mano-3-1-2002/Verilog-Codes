module mux_2_1(input i1,i2,s,output y);
  assign y=s?i2:i1;
endmodule

module mux_8_1(input i1,i2,i3,i4,i5,i6,i7,i8,s1,s2,s3,output reg y);
  wire y1,y2,y3,y4,y5,y6;
  mux_2_1 m1(i1,i2,s3,y1);
  mux_2_1 m2(i3,i4,s3,y2);
  mux_2_1 m3(i5,i6,s3,y3);
  mux_2_1 m4(i7,i8,s3,y4);
  mux_2_1 m5(y1,y2,s2,y5);
  mux_2_1 m6(y3,y4,s2,y6);
  mux_2_1 m7(y5,y6,s3,y);
  
endmodule
