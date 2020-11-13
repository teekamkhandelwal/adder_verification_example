module tb;
  
  mailbox mbx=new();
  generator g1=new(mbx);
  driver d1=new(mbx);
  initial begin
    repeat (10) begin
    g1.run();
    d1.run();
    end
  end

//initial begin
  //$dumpfile("tb.vcd");
  //$dumpvars(0,tb);
//end
endmodule  
 
    
  

    
    
