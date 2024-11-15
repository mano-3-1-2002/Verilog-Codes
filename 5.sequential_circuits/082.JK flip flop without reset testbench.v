module tb;
  reg j,k,clk;
  wire q;
  jk_flip j1(.clk(clk),.j(j),.k(k),.q(q));
  always begin #3 clk=~clk;
  end
 
  initial begin
    $monitor("%t:clk=%0d,s=%0d,r=%0d,q=%0d",$time,clk,j,k,q);
    end
  initial begin
    
    clk=0;
    #3 j=1 ; k=0;
     #6 j=0; k=1;
     #6 j=1 ; k=1;
      
    #6 j=1 ; k=0;
    #5 $finish;
  end
  initial begin
    $dumpfile("jk_flip.vcd");
    $dumpvars(1,tb);
  end
endmodule
