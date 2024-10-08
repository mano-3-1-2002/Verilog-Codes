module ha_tb;
  reg a,b;
  wire sum,carry;
  ha h1(a,b,sum,carry);
  initial begin
    $monitor("a=%b,b=%b,sum=%d,carry=%d",a,b,sum,carry);
    a=0;b=1;#3
    a=1;b=1;#2
    
    
    #1 $finish;
  end
endmodule
