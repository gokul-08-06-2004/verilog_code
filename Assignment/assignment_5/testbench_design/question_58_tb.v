module d_ff_tb;

reg clk,rst;
reg [7:0]d;
wire [7:0]q;
wire [7:0]qbar;

register dut(clk,rst,d,q,qbar);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("Time=%0t clk=%b rst=%b d=%b q=%b qbar=%b",$time,clk,rst,d,q,qbar);
$dumpfile("regis.vcd");
$dumpvars();

rst=1; d=8'b00000000;
#10;

rst=0; d=8'b10101010;#10
d=8'b01010010;#10
d=8'b10100010;#10

rst=1;d=8'b00000000;
#10
$finish;
end
endmodule
