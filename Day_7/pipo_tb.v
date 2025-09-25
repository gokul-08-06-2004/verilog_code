module pipo_tb;
reg clk,rst;
reg [3:0]din;
wire [3:0]q;

pipo dut(clk,rst,din,q);

initial begin
clk=0;
forever #5 clk=~clk;
end

always@(negedge clk)
$display("Time=%0t clk=%b rst=%b din=%b q=%b",$time,clk,rst,din,q);
initial begin
$dumpfile("pipo.vcd");
$dumpvars();

rst=1;#10
rst=0;
din=4'b1111;#10
din=4'b0110;#10

$finish;
end
endmodule
