module siso_tb;
reg clk,rst,din;
wire [3:0]dout;
wire out;
siso dut(clk,rst,din,dout,out);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
//always@(negedge clk)begin
$monitor("Time=%0t clk=%b rst=%b din=%b dout=%b out=%b",$time,clk,rst,din,dout,out);
//end

$dumpfile("siso.vcd");
$dumpvars();

rst=1;#10
rst=0;
din=1;#10
din=1;#10
din=1;#10
din=1;#10
rst=1;#10

$finish;
end
endmodule
