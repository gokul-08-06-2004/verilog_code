module not_gate_tb;
reg a;
wire y;

not_gate dut(a,y);

initial begin

$monitor("Time=%0t a=%b y=%b",$time,a,y);
$dumpfile("add.vcd");
$dumpvars();

a=0;#10;
a=1;#10;

$finish;
end
endmodule
