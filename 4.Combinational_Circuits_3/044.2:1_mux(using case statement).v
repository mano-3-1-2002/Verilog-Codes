module mux_2_1(input i1,i2,s,output reg y);
  always@(*)begin
    case(s)
      0:y=i1;
      1:y=i2;
  
    endcase
  end
endmodule
