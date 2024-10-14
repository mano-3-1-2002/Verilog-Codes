module full_subtractor(input a,b,bin,output dif,borrow);
  assign dif = a^b^bin;
  assign borrow = (~a&b)|~(a^b)&bin;
endmodule
