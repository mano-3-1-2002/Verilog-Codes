module tb;
  reg[2:0]d;
  wire[7:0]y;
  decoder_3_1 p1(d,y);
  initial begin
    $monitor("%t:d=%b,y=%b",$time,d,y);
    repeat(5)begin
      d=$random;#3;
    end
  end
endmodule
    
