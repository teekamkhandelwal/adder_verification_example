// Code your testbench here
// or browse Examples
//teekam chand khandelwal 
//this file is used with adderdut.sv
class driver;
  virtual port p1;
  task run ();
    p1.data1=$random;
    p1.data2=$random;
    $display("///-------------------------- ///");
    $display("data 1 is %0d ", p1.data1);
    $display("data 2 is %0d ", p1.data2);
  endtask
  task run1 ();
    p1.data1=8'hff;
    p1.data2=8'hff;
    $display("///-------------------------- ///");
    $display("data 1 is %0d ", p1.data1);
    $display("data 2 is %0d ", p1.data2);
  endtask
endclass

interface port;
  logic [7:0] data1;
  logic [7:0] data2;
endinterface

module tb;
  port p2 ();
  driver d1=new();
  reg [7:0] sum;
  reg carry;
  adder a1 (.a(p2.data1),.b(p2.data2),.s(sum),.c(carry));
  initial begin
    
    d1.p1=p2;
    repeat(5) begin
    d1.run();
       
      $display("sum is %0d ", sum);
      $display("carry is %0d ", carry);
      $display("///-------------------------- ///");
    end
    d1.run1();
    $display("sum is %0d ", sum);
    $display("carry is %0d ", carry);
      $display("///-------------------------- ///");
  end
endmodule
  
