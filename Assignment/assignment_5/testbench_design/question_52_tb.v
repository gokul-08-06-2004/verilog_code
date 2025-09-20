module d_ff_tb;
reg clk,rst,d;
wire q,qbar;

d_ff dut(clk,rst,d,q,qbar);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("time=%0t clk=%b rst=%b d=%b q=%b qbar=%b",$time,clk,rst,d,q,qbar);
$dumpfile("d_ff.vcd");
$dumpvars();
rst=1;d=0;#10;
rst=0;
d=0;#10
d=1;#10

$finish;
end
endmodule
