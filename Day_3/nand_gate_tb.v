module nand_gate_tb;
reg a,b;
wire y;

nand_gate dut(a,b,y);

initial begin
$monitor("a=%b b=%b y=%b ",a,b,y);
$dumpfile("nand_gate.vcd");
$dumpvars();

a=0; b=0;#10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10

$finish;
end
endmodule
