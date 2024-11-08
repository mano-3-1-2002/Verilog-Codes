module gray_to_binary(input [3:0]gray,output[3:0]binary);
  assign binary[3] = gray[3];
  genvar g;
  generate
    for (g=0;g<3;g=g+1)begin
      assign binary[g] = gray[g]^binary[g+1];
    end
  endgenerate
endmodule
      
