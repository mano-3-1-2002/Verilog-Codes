module mux2_1(input i1,i2,s,output y);
  assign y = s?i2:i1;
endmodule
module mux4_1(input i1,i2,i3,i4,s1,s2,output y);
  wire y0,y1;
  mux2_1 m1(i1,i2,s2,y0);
  mux2_1 m2(i3,i4,s2,y1);
  mux2_1 m3(y0,y1,s1,y);
endmodule
