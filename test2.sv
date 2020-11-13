// Code your testbench here
// or browse Examples
module test_bench ();
  logic [7:0] tb_a;
  logic [7:0] tb_b;
  logic tb_c_in;
  logic [7:0] tb_sum;
  logic tb_c_out;
  //top module instanciation
  adder adder1 (.a(tb_a), .b(tb_b), .c_in(tb_c_in), .sum(tb_sum), .c_out(tb_c_out));
  
  //functional part of tb
  initial begin
    #1;
    tb_a=1;
    tb_b=2;
    tb_c_in=1;
    
    #1;
    tb_a=10;
    tb_b=20;
    tb_c_in=0;
    
    #1;
    tb_a=55;
    tb_b=66;
    tb_c_in=1;
    
    #1;
    tb_a=0;
    $finish();
    
  end
  
  // to dump signals to waveforms
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule : test_bench
