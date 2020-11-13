///driver
class driver;
  mailbox mbx =new();
  transaction trans=new();
  
  function new(mailbox mbx);
    this.mbx=mbx;
  endfunction
  
  task run();
    mbx.get(trans);
    $display("---------------------------------");
    $display("Reception Successful");
    $display("Value received : %0d %0d %0d", trans.a,trans.b,trans.sum);
     $display("---------------------------------");
    endtask
endclass
