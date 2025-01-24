module tff (q, clk, reset);
    output q;
    input clk, reset;
    reg q;

    always @(posedge reset or posedge clk) begin
        if (reset)
            q <= 1'b0;
        else
            q <= ~q; 
    end
endmodule


module ripple_carry_down_counter (q, clk, reset);
    output [3:0] q;    
    input clk, reset;  

   
    tff tff0(q[0], clk, reset);    
    tff tff1(q[1], q[0], reset); 
    tff tff2(q[2], q[1], reset); 
    tff tff3(q[3], q[2], reset); 
    
endmodule
