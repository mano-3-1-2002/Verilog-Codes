module half_sub(input a,b,output diff,borrow);
  wire x;
  xor(diff,a,b);
  not(x,a);
  and(borrow,x,b);
endmodule
