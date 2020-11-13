//generator
class generator;
 transaction trans;
  mailbox mbx=new();
  
  function new(mailbox mbx);
    this.mbx=mbx;
  endfunction
  
  task run();
    trans=new();
    trans.randomize();
    trans.sum=trans.a+trans.b;
    mbx.put(trans);
    $display("----------------------------------------------");
    $display("Data inside Mailbox : %0d %d %d", trans.a,trans.b,trans.sum);
    $display("----------------------------------------------");
  endtask
  
endclass
