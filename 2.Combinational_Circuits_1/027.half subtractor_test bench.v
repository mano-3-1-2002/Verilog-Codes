module half_sub_tb;
  reg a,b;
  wire diff,borrow;
  half_sub h1(a,b,diff,borrow);
  initial begin
    
    a=0;b=0;
   #3 a=0;b=1;#3;
    a=1;b=0;#3;
    a=1;b=1;#3;
  end
    initial begin
    $monitor("time =%0d, a=%b;b=%b;diff=%b;borrow=%b",$time ,a,b,diff,borrow);
    
  end
endmodule
