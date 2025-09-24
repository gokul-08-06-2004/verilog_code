module mod_5counter_tb;

reg clk,rst;
reg [2:0]t;
wire [2:0]q,qbar;

mod_5counter dut(clk,rst,t,q,qbar);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("Time=%0t clk=%b rst=%b t=%b q=%b qbar=%b",$time,clk,rst,t,q,qbar);
$dumpfile("mod_5");
$dumpvars();

rst=1;#10
rst=0;t=3'b111;#100;

$finish;
end
endmodule
