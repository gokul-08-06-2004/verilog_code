module sipo_tb;

reg clk,rst,din;
wire [3:0]dout;

sipo dut(clk,rst,din,dout);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("Time=%0t clk=%b rst=%b din=%b dout=%b ",$time,clk,rst,din,dout);
$dumpfile("sipo.vcd");
$dumpvars();

rst=1;din=0;#10
rst=0;
din=1;#10
din=1;#10
din=0;#10
din=1;#10
rst=1;#10
$finish;
end
endmodule
