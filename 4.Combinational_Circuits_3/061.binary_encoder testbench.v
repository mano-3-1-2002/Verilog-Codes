module tb;
  reg[7:0]d;
  wire[2:0]y;
  int i;
  binary_encoder b(d,y);
  initial begin
    $monitor("d=%b,y=%b",d,y);
    d =8'b1;#3
    for(i=0;i<8;i++) begin
      d=d<<1;#3;
    end
  end
endmodule
    
