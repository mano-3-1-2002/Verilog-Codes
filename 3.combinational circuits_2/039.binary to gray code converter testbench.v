module tb;
  reg [3:0]binary;
  wire[3:0]gray;
  binary_to_gray bg(binary,gray);
  initial begin
    $monitor("%t:binary=%b,gray=%b",$time,binary,gray);
    binary = 4'b1110;
    #3 binary = 4'b1111;#3;
    $finish;
  end
endmodule
  
