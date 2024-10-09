module half_sub(input a,b,output diff,borrow);
  assign {borrow,diff} = a-b;
  
endmodule
