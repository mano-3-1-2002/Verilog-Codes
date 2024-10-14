module full_subtractor(input a,b,bin,output dif,borrow);
  assign {borrow,dif} = a-b-bin;
endmodule
