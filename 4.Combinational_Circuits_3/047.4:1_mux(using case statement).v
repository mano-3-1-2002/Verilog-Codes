module mux_4_1(input i1,i2,i3,i4,s1,s2,output reg y);
  always@(*)begin
    case({s1,s2})
      2'h0 :y=i1;
      2'h1 :y=i2;
      2'h2 :y=i3;
      2'h3 :y=i4;
    endcase
  end
      
endmodule
