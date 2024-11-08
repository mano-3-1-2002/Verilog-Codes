module tb;
  reg [3:0]gray;
  wire[3:0]binary;
  gray_to_binary gb(gray,binary);
  initial begin
    $monitor("%t:gray=%b,binary=%b",$time,gray,binary);
    gray = 4'b1110;
    #3 gray = 4'b1111;#3;
    $finish;
  end
endmodule
  
