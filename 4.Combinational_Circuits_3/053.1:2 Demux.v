module demux_1_2(input i,sel,output y1,y2);
  assign {y1,y2} = sel?{1'b0,i}:{i,1'b0};
endmodule
