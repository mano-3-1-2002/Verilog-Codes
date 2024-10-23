module fulladder(input a,b,cin,output sum,carry);
  assign sum = a^b^cin;
  assign carry = (a&b)|(b&cin)|(a&cin);
endmodule

module ripple_carry(input [3:0] a,b,input cin,output [3:0] sum,carry);
  
  fulladder f1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.carry(carry[0]));
  fulladder f2(.a(a[1]),.b(b[1]),.cin(carry[0]),.sum(sum[1]),.carry(carry[1]));
  fulladder f3(.a(a[2]),.b(b[2]),.cin(carry[1]),.sum(sum[2]),.carry(carry[2]));
  fulladder f4(.a(a[3]),.b(b[3]),.cin(carry[2]),.sum(sum[3]),.carry(carry[3]));
endmodule
