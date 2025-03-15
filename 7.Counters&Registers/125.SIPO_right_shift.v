
module sipo(input clk,rst,si,output reg [3:0] po);
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        po <= 4'b0000;
      else
        po <= {si,po[3:1]};
    end
endmodule
      
