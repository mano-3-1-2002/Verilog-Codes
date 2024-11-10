module demux_1_4(input i,sel1,sel2,output reg y1,y2,y3,y4);
  always@(*) begin
    case({sel1,sel2})
      2'h0:{y1,y2,y3,y4} = {i,3'b0};
      2'h1:{y1,y2,y3,y4} = {1'b0,i,2'b0};
      2'h2:{y1,y2,y3,y4} = {2'b0,i,1'b0};
      2'h3:{y1,y2,y3,y4} = {3'b0,i};
    endcase
  end
endmodule
