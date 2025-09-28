module moore_nonoverlap_1010_tb;
reg clk,rst,in;
wire out;

moore_nonoverlap_1010 dut(clk,rst,in,out);

initial begin
clk=0;
forever #5 clk=~clk;
end

always@(posedge clk)
$display("Time=%0t clk=%b rst=%b in=%b out=%b",$time,clk,rst,in,out);
initial begin
$dumpfile("moore_overalp_1010.vcd");
$dumpvars();

rst=1;in=0;#10
rst=0;
in=0;#10
in=1;#10
in=0;#10
in=1;#10
in=0;#10
in=1;#10
in=0;#10
in=1;#10
in=0;#10
in=1;#10
in=0;#10
in=1;#10
in=0;#10
in=1;#10
in=0;#10
in=1;#10
in=0;#10
$finish;
end
endmodule
