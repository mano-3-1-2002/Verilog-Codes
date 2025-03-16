odule pipo(input clk,rst,[3:0]pi,output reg [3:0]po);
  always@(posedge clk or posedge rst)begin
    if(rst)
      po <= 4'b0000;
    else
      po <= pi;
  end
endmodule
