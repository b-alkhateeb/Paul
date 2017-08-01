// Code your testbench here
// or browse Examples
module tb();
  reg d,clk,q,qc;
  
  dff f(d,clk,q,qc);
  
  always begin
    #1 clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor(d, clk, q, qc);
    
    clk = 0;
    d = 0;
    #4
    d = 1;
    #4
    d = 0;
    #4
    $finish;
  end
endmodule