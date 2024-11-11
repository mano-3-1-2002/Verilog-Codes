 wire[2:0]y;
  priority_encoder p1(d,y);
  initial begin
    $monitor("%t:d=%b,y=%b",$time,d,y);
    repeat(5)begin
      d=$random;#3;
    end
  end
endmodule
    
