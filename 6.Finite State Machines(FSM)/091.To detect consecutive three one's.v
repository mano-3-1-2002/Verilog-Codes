module cons(input clk,rst,i,output y);
parameter a = 4'h1;
parameter b = 4'h2;
parameter c = 4'h3;

reg[3:0]state,next_state;
always @(posedge clk or negedge rst) begin
  if(!rst)
    state <= a;
  else
    state <= next_state;
end
always@(state or i) begin
  case(state)
    a:begin
      if (i == 1)
        next_state = b;
      else
        next_state = a;
    end
    b:begin
      if(i==1)
        next_state = c;
      else
        next_state = a;
    end
    c:begin
      if(i==1)
        next_state = c;
      else
        next_state = a;
    end
    default:next_state = a;
  endcase
end
assign y = (i==1)&&(state==c)?1:0;
endmodule

