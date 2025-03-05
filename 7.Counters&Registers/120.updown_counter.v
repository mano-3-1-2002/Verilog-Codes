module syn_counter(input clk,rst,up,output reg[3:0] count);
  always@(posedge clk) begin
    
    if(rst)
      count <= 0;
    else
      case(up)
        1'b0:count <= count-1;
        1'b1:count <= count+1;
      endcase
  end
endmodule
  
