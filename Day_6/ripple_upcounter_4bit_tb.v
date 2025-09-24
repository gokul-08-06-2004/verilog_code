module ripple_counter_4bit_tb;

reg clk,rst;
reg [3:0]t;
wire [3:0]q;

ripple_upcounter_4bit dut(clk,rst,t,q);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("time=%0t clk=%b rst=%b t=%b q=%b",$time,clk,rst,t,q);
$dumpfile("upcounter.vcd");
$dumpvars();

rst=1;
#10;
rst=0;
t=4'b1111;
#200;
$finish;
end
endmodule
