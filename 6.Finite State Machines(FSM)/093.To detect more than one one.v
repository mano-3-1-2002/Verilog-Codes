module more_than_one_one(input clk,rst,i,output y);
  parameter a = 4'h1,b = 4'h2,c = 4'h3,d = 4'h4;
  reg[3:0] state,next_state;
  always @ (posedge clk or negedge rst)begin
    if(!rst)
      state<=a;
    else
      state<=next_state;
  end
  always @ (state or i)begin
    case(state)
      a:begin
        if(i==0)
          next_state = a;
        else
          next_state = b;
      end
      b:begin
        if(i==0)
          next_state = d;
        else
          next_state = c;
      end
      c:begin
        if(i==0)
          next_state = d;
        else
          next_state = c;
      end
      d:begin
        if(i==0)
          next_state = a;
        else
          next_state = b;
      end
      default next_state = a;
    endcase
  end
  assign y=((state==d)&&(i==1)||(state==c)||(state==b)&&(i==1))?1:0;
endmodule
