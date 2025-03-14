module siso(input clk,rst,si,output so);
  reg [3:0] register;
  always@(posedge clk or posedge rst) begin
    if(rst)
      register <= 4'b0000;
    else
      register <= {register[2:0],si};
  end
  assign so = register[3];
endmodule
  
