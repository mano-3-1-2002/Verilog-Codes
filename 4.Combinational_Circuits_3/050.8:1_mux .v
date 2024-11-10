module mux_8_1(input i1,i2,i3,i4,i5,i6,i7,i8,s1,s2,s3,output reg y);
  always@(*)begin
    case({s1,s2,s3})
      3'h0:y=i1;
      3'h1:y=i2;
      3'h2:y=i3;
      3'h3:y=i4;
      3'h4:y=i5;
      3'h5:y=i6;
      3'h6:y=i7;
      3'h7:y=i8;
      default:$display("enter valid sel");
     
    endcase
  end
endmodule
