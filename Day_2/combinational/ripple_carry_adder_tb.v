module ripplecarry_adder_tb;
reg [3:0]a,b;
reg c;
wire [3:0]s,carry;

ripplecarry_adder dut(a,b,c,s,carry);

initial begin
$monitor("a=%b | b=%b | cin=%b | s=%b |c=%b",a,b,c,s,carry);
$dumpfile("full_adder.vcd");
$dumpvars();
a=0; b=0; c=0; #10
a=0; b=0; c=1; #10
a=0; b=1; c=0; #10
a=0; b=1; c=1; #10
a=1; b=0; c=0; #10
a=1; b=0; c=1; #10
a=1; b=1; c=0; #10
a=1; b=1; c=1; #10

$finish;
end
endmodule

