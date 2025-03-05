module syn_counter(input clk,rst,output reg[3:0] count);
  always@(posedge clk) begin
    
    if(rst)
      count <= 4'hf;
    else
      count <= count-1;
  end
endmodule
  
