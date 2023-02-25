module dff_mux1_tb;
  reg enable,d,clock;
  wire q;
  dff_mux1 dut(enable,d,clock,q);
  initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  always #5 clock=~clock;
   
  initial
    begin
    clock=0;
    enable=0;
    #5;
    enable=1;
  end
  
  initial
  begin
    d=0;
    #10 d=1;
    #10 d=0;
    #10 d=1;
    #100 $finish;
  end
endmodule
