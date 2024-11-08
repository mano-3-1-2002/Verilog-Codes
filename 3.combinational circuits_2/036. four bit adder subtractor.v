module full_adder(input a,b,cin,output sum,carry);
  assign{carry,sum} = a+b+cin;
endmodule
module adder_subtractor(input [3:0] a,b,input ctrl,output[3:0] sum,carry);
  reg [3:0] bc;
  genvar g;
  assign bc[0] = b[0] ^ ctrl;
  full_adder f1(a[0],bc[0],ctrl,sum[0],carry[0]);
  generate
    for(g=1;g<4;g++)begin
      assign bc[g] = b[g]^ctrl;
      full_adder f1(a[g],bc[g],carry[g-1],sum[g],carry[g]);
    end
  endgenerate
endmodule
      
  
  
