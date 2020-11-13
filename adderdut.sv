// Code your design here
//teekam chand khandelwal
module adder (
  input [7:0] a,
  input [7:0] b,
  output [7:0] s,
  output c
);
  
  assign {c,s} = a + b;
 
  
endmodule
