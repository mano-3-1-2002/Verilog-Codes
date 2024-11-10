module encoder_4_2(input i1,i2,i3,i4,output y1,y2);
  assign y1 = i4|i2;
  assign y2 = i4|i3;
endmodule
