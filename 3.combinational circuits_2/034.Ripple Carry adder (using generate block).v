module fulladder(input a,b,cin,output sum,carry);
  assign sum = a^b^cin;
  assign carry = (a&b)|(b&cin)|(a&cin);
endmodule

module ripple_carry(input [3:0] a,b,input cin,output [3:0] sum,carry);
  
  fulladder f1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.carry(carry[0]));
  
  genvar i;
  generate
    for(i=1;i<4;i++)begin
      fulladder f1(.a(a[i]),.b(b[i]),.cin(carry[i-1]),.sum(sum[i]),.carry(carry[i]));
    end
  endgenerate
endmodule
