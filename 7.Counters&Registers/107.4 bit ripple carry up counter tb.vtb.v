
module test;

  reg clk, reset;
  wire [3:0] q;
  
  // Instantiate the design
  ripple_carry_counter rcc (q, clk, reset);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
    
    // Initialize the clk
    clk = 1'b0;
    
    // Reset the counter
    reset = 1'b1;
    #10 reset = 1'b0;
    
    #200;
    reset = 1'b1;
    #10 reset = 1'b0;
    
    #50;
    $finish;
  end
  
  always #5 clk = ~clk;
   initial begin
        $monitor("Time: %0t | q = %b", $time, q);
    end

endmodule
