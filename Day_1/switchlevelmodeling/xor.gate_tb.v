module xor_gate_tb;
reg a,b;
wire y;

xor_gate dut(a,b,y);

initial begin

$monitor("a=%b | b=%b | output=%b",a,b,y );
$dumpfile("xor_gate.vcd");
$dumpvars();



a=0; b=0; #10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10

$finish;
end 
endmodule
