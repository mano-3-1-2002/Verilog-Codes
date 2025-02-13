module asynch_updown(input clk,rst,t,up,output [3:0] q,output [3:0] qb);
  genvar i;
  t_ff t1(.clk(clk),.rst(rst),.t(t),.q(q[0]),.qb(qb[0]));
  generate
    for(i=1;i<4;i++) begin
        t_ff t2(.clk(up?q[i-1]:qb[i-1]),.rst(rst),.t(t),.q(q[i]),.qb(qb[i]));
    end
  endgenerate     
endmodule
module t_ff(input clk,rst,t,output reg q,output qb);
  always@(negedge clk or posedge rst)
    begin
      if(rst)
        q<=1'b0;
      else if(t==0)
        q<=q;
      else
        q<=~q;
    end
  assign qb = ~q;
endmodule
  
