module not_gate_tb();

reg a;
wire b;

not_gate dut (.a(a),.b(b));

initial begin

$monitor ("in=%d | out=%d",a,b);
$dumpfile("not_wave.vcd");
$dumpvars(0,not_gate_tb);
a=0;#10
a=1;#10

$finish;
end
endmodule	
