module tb;
  reg s,r;
  wire q,qbar;
  sr_latch sr(s,r,q,qbar);
  initial begin
    $monitor("s=%0b,r=%0b,q=%0b,qbar=%0b",s,r,q,qbar);
    s=0;r=0;#3;
    s=0;r=1;#3;
    s=1;r=0;#3;
    s=0;r=0;#3;
    s=1;r=1;#3;
   
    $finish;
  end
endmodule
