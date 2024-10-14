module full_subtractor(input a,b,bin,output dif,borrow);
  wire x,y,z;
  xor(x,a,b);
  xor(dif,x,bin);
  and(y,~a,b);
  and(z,~x,bin);
  or(borrow,y,z);
endmodule
  
  
  
