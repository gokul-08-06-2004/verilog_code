module synch_upcounter_3bit_tb;

reg clk,rst;
wire [2:0]q,qbar;
synch_upcounter_3bit dut(clk,rst,q,qbar);;

initial begin
clk=0;
forever #5 clk=~clk;
end


initial begin
$monitor("Time=%0t clk=%b rst=%b  q=%b qbar=%b",$time,clk,rst,q,qbar);
$dumpfile("upcounter.vcd");
$dumpvars();

rst=1;#10

rst=0;#155;

$finish;
end
endmodule
