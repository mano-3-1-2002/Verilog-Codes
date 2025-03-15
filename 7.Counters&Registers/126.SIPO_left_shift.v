
module sipo(input clk,rst,si,output reg [3:0] po);
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        po <= 4'b0000;
      else
        po <= {po[2:0],si};
    end
endmodule
      
