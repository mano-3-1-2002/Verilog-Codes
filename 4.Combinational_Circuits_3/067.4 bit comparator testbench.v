module tb;
  reg[3:0]a,b;
  wire a_grt_b,a_less_b,a_eql_b;
  comparator c(a,b,a_grt_b,a_less_b,a_eql_b);
  initial begin
    $monitor("%t:a=%b,b=%b,a_grt_b=%b,a_less_b=%b,a_eql_b=%b",$time,a,b,a_grt_b,a_less_b,a_eql_b);
    repeat(5)begin
      a=$random;b=$random;#3;
    end
  end
endmodule
  
