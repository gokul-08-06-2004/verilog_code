module ripple_downcounter_4bit_tb;

reg clk,rst,t;
wire [3:0]q;

ripple_downcounter_4bit dut(clk,rst,t,q);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("Time =%0t clk=%b rst=%b t=%b q=%b ",$time,clk,rst,t,q);
$dumpfile("downcounter.vcd");
$dumpvars();

rst=1;#10
rst=0;
t=1;
#200;
$finish;
end
endmodule
