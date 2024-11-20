module moore_1010(input clk,rst,i,output y);
  parameter a = 4'h1;
  parameter b = 4'h2;
  parameter c = 4'h3;
  parameter d = 4'h4;
  parameter e = 4'h5;
  
  reg[3:0] state,next_state;
  always@(posedge clk or negedge rst)begin
    if(!rst)
      state<=a;
    else
      state<=next_state;
  end
  always@(state or i)begin
    case(state)
      a:begin
        if(i==0)
          next_state<=a;
        else
          next_state<=b;
      end
      b:begin
        if(i==0)
          next_state<=c;
        else
          next_state<=b;
      end
      c:begin
        if(i==0)
          next_state<=a;
        else
          next_state<=d;
      end
      d:begin
        if(i==0)
          next_state<=e;
        else
          next_state<=b;
      end
      e:begin
        if(i==0)
          next_state<=a;
        else
          next_state<=b;
      end
      default:next_state<=a;
    endcase
  end
  assign y = (state==e)?1:0;
endmodule
  
  
  
  
