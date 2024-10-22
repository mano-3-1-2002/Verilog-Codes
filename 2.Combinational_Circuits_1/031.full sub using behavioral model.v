module full_subtractor(input a,b,bin,output reg dif,borrow);
  always @(*)
    begin
      dif = a^b^bin;
      borrow = ~a&b|~(a^b)&bin;
    end
  
endmodule
