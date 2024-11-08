module binary_to_gray(input [3:0]binary,output[3:0]gray);
  assign gray[3] = binary[3];
  genvar g;
  generate
    for (g=0;g<3;g++)begin
      assign gray[g] = binary[g]^binary[g+1];
    end
  endgenerate
endmodule
      
