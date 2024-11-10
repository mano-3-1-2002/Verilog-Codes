module demux_1_2(input i,sel,y1,y2);
  assign {y1,y2} = sel?{1'b0,i}:{i,1'b0};
endmodule
module demux_1_4(input i,sel1,sel2,output y1,y2,y3,y4);
  wire a,b;
  demux_1_2 d1(i,sel1,a,b);
  demux_1_2 d2(a,sel2,y1,y2);
  demux_1_2 d3(b,sel2,y3,y4);
  
endmodule
