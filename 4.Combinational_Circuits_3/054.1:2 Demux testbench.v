module _tb;
  reg i,sel;
  wire y1,y2;
  demux_1_2 d1(i,sel,y1,y2);
  initial begin
    $monitor("%t:i=%b,sel=%b,y1=%b,y2=%b",$time,i,sel,y1,y2);
    #3;
    i=1;sel=0;#3
    i=0;sel=1;#3
    i=0;sel=0;#3
    i=1;sel=1;#3
    $finish;
  end
endmodule
