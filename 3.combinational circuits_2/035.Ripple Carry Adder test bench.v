module rca_tb;
  reg [3:0] a,b;
  reg cin;
  wire [3:0] sum,carry;
  ripple_carry r1(a,b,cin,sum,carry);
  initial
    begin
      $monitor("time=%0t,a=%b,b=%b,cin=%b,sum=%d,cary=%d",$time,a,b,cin,sum,carry);
      a = 2;b= 4;cin=0;#3
      a = 3;b= 4;cin=15;#3
      a = 4;b= 12;cin=2;
    end
endmodule
