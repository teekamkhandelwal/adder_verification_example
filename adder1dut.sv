// Code your design here
module adder (a, b,c_in,sum,c_out);
  input logic [7:0] a;
  input logic [7:0] b;
  input logic c_in;
  output logic [7:0] sum;
  output logic c_out;
  
  logic [8:0] result;
  
  assign result =a+b+c_in;
  assign sum = result[7:0];
  assign c_out = result[8];
  
endmodule : adder
