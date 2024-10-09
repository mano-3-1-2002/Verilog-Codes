module full_ad(input a,b,cin,output sum,carry);
  assign {carry,sum} = a+b+cin;
endmodule
    
