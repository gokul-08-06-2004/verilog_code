module dff_tb();

reg clk,d;
wire q;
dff dut(clk,d,q);
initial begin
$monitor("time=%0t clk=%b d=%b y=%b",$time,clk,d,q);
$dumpfile("dff.vcd");
$dumpvars();

clk=0;
forever #5 clk=~clk;
end

initial begin
d=0;
#10 d=1;
#20 d=0;
#10 d=1;
#40 $finish;

end
endmodule


