module sr_latch_tb();

reg clk,rst,s,r;
wire q;
wire qbar;
integer i;

sr_latch dut(clk,rst,s,r,q,qbar);

initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
$monitor("Time=%0t clk=%b rst=%b s=%b r=%b q=%b qbar=%b",$time,clk,rst,s,r,q,qbar);
$dumpfile("srlatch.vcd");
$dumpvars();

rst=1;
#15;

rst=0;

for(i=0; i<4;i=i+1)begin
{s,r}=i;
#10;
end
$finish;
end
endmodule
