module full_ad_tb;
  reg a,b,cin;
  wire sum,carry;
  full_ad f1(a,b,cin,sum,carry);
  initial begin
    $monitor("%0t:a=%b,b=%b,cin=%b,sum=%b,carry=%b",$time,a,b,cin,sum,carry);
    a=0;b=0;cin=0;#3;
    a=0;b=0;cin=1;#3;
    a=0;b=1;cin=0;#3;
    a=0;b=1;cin=1;#3;
    a=1;b=0;cin=0;#3;
    a=1;b=0;cin=1;#3;
    a=1;b=1;cin=0;#3;
    a=1;b=1;cin=1;#3;
    $finish;
  end
endmodule
  
