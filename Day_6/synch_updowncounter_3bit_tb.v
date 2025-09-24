module synch_updowncounter_3bit_tb;

reg clk,rst,updown;
wire [2:0]q,qbar;

synch_updowncounter_3bit dut(clk,rst,updown,q,qbar);

initial begin
clk=0;
forever  #5 clk=~clk;
end

initial begin
$monitor("Time=%0t clk=%b rst=%b updown=%b q=%b qbar=%b",$time,clk,rst,updown,q,qbar);
$dumpfile("updown.vcd");
$dumpvars();

rst=1;updown=1;#10;
$display("upcounting.............................");
rst=0;updown=1;#100;
$display("douncounting.............................");
rst=0;updown=0;#150;

$finish;
end
endmodule
