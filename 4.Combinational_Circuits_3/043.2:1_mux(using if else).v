module mux_2_1(input i1,i2,s,output reg y);
  always@(*)begin
    if(s)
      y = i2;
    else
      y = i1;
  end
endmodule
