module tb_async_down_counter_3bit;

    reg clk;
    reg reset;
    wire [2:0] q;

    
    async_down_counter_3bit uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    
    initial clk = 0;
    always #5 clk = ~clk; 

    
    initial begin
        $dumpfile("async_up_counter_3bit.vcd");
      $dumpvars(0, tb_async_down_counter_3bit);

        reset = 1;  
        #10 reset = 0; 

        #200;       
        $finish;
    end

    
    initial begin
        $monitor("Time: %0t | q = %b", $time, q);
    end
endmodule
