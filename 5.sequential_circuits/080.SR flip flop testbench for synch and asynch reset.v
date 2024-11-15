module tb;
  reg s,r,clk,rst;
  wire q;
  sr_flip s1(.clk(clk),.s(s),.r(r),.q(q),.rst(rst));
  always begin #3 clk=~clk;
    #2 rst=~rst;
  end
 
  initial begin
    $monitor("%t:clk=%0d,rst=%0d,s=%0d,r=%0d,q=%0d",$time,clk,rst,s,r,q);
    end
  initial begin
    
    clk=0;rst=0;
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
