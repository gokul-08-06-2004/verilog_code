module and_gate_tb;

reg a,b;
wire x;

and_gate dut(.a(a),.b(b),.x(x));

initial begin
$monitor("a=%d | b=%d | output=%d",a,b,x);
$dumpfile("and_gate.vcd");
$dumpvars();

a=0; b=0;#10
a=0; b=1;#10
a=1; b=0;#10
a=1; b=1;#10

$finish;
end
endmodule
