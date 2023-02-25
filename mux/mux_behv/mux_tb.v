module mux_tb;
reg a,c,sel;
wire b;

mux2_1 dut(a,c,sel,b);
initial
begin
$dumpfile("mux_wave.vcd");
$dumpvars;
end

initial begin
	a=1; c=0; sel=1;
	#10 a=0; c=1; sel=0;
	#10 a=1; c=0; sel=1;
#10 $finish;
 
 end

endmodule

