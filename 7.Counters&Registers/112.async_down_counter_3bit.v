
module async_down_counter_3bit (
    input wire clk,   
    input wire reset,  
    output reg [2:0] q 
);

    
    always @(negedge clk or posedge reset) begin
        if (reset) 
            q[0] <= 1'b0; 
        else 
            q[0] <= ~q[0]; 
    end


  always @(negedge ~q[0] or posedge reset) begin
        if (reset)
            q[1] <= 1'b0;
        else
            q[1] <= ~q[1]; 
    end

  always @(negedge ~q[1] or posedge reset) begin
        if (reset)
            q[2] <= 1'b0; 
        else
            q[2] <= ~q[2]; 
    end
endmodule
