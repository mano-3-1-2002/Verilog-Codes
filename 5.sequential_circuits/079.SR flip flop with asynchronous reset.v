module sr_flip(input clk,rst,s,r,output reg q);
  always @(posedge clk or negedge rst)begin
    if(~rst)
      q<=0;
    else begin
    case({s,r})
      2'b00:q<=q;
      2'b01:q<=0;
      2'b10:q<=1;
      2'b11:q<=1'bx;
      default:q<=q;
    endcase
    end
  end
endmodule
      
