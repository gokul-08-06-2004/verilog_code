module siso_tb();

reg clk,rst,din;
wire dout;

siso dut(clk,rst,din,dout);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("Time=%0t clk=%b rst=%b din=%b q1=%b q2=%b q3=%b dout=%b",$time,clk,rst,din,dut.q1,dut.q2,dut.q3,dout);


rst=1; din=0;
#10;
rst=0;

din=1;#10
din=1;#10
din=1;#10
din=1;#10
din=1;#10
din=0;#10


$finish;
end
endmodule
