module mux_2_1(input i1,i2,s,output y);
  assign y = s?i1:i2;
endmodule
