 reg s,r,clk;
  wire q;
  sr_flip s1(.clk(clk),.s(s),.r(r),.q(q));
  always #3 clk=~clk;
 
  initial begin
    $monitor("%t:clk=%0d,s=%0d,r=%0d,q=%0d",$time,clk,s,r,q);
    end
  initial begin
    
    clk=0;
    #3 s=1 ; r=0;
     #6 s=0; r=1;
     #6 s=1 ; r=1;
      
    #6 s=1 ; r=0;
    #5 $finish;
  end
  initial begin
    $dumpfile("sr_flip.vcd");
    $dumpvars(1,tb);
  end
endmodule
