module mux_4_1(input i1,i2,i3,i4,s1,s2,output y);
  assign y = s1?(s2?i4:i3):(s2?i2:i1);
endmodule
