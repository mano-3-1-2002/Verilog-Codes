module _tb;
  reg i,sel1,sel2;
  wire y1,y2,y3,y4;
  demux_1_4 d1(i,sel1,sel2,y1,y2,y3,y4);
  initial begin
    $monitor("%t:i=%b,sel1=%b,sel2=%b,y1=%b,y2=%b,y3=%b,y4=%b",$time,i,sel1,sel2,y1,y2,y3,y4);
    #3;
    i=1;sel1=0;sel2=0;#3
    i=1;sel1=0;sel2=1;#3
    i=1;sel1=1;sel2=0;#3
    i=1;sel1=1;sel2=1;#3
    $finish;
  end
endmodule
