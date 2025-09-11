module repeatloop_tb();
reg clk,rst;
wire [3:0]q;

repeatloop dut(clk,rst,q);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("time=%0t clk=%b rst=%b q=%b",$time,clk,rst,q);
$dumpfile("repeat.vcd");
$dumpvars();
rst=1;#12;
rst=0;
repeat(8)@(posedge clk);
$finish;

end
endmodule

