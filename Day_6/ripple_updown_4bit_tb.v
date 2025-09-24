module t_ff_tb;

reg clk,rst,t;
reg updown;
wire [3:0]q,qbar;

ripple_updown_counter dut(clk,rst,t,updown,q,qbar);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("Time=%0t ck=%b rst=%b t=%b updown=%b q=%b qbar=%b",$time,clk,rst,t,updown,q,qbar);
$dumpfile("updown_counter.vcd");
$dumpvars();

rst=1;t=0;updown=1;#10;
$display("upcounting..");
rst=0;t=1;updown=1;#155;
$display("downcounting...");
t=1;updown=0;#200;

$finish;
end
endmodule
