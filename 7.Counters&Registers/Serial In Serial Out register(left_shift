module siso(input clk,rst,si,output so);
  reg [3:0] register;
  always@(posedge clk or posedge rst) begin
    if(rst)
      register <= 4'b0000;
    else
      register <= {si,register[3:1]};
  end
  assign so = register[0];
endmodule
  
