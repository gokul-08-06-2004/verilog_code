module nand_gate_tb;
reg a,b;
wire y;

nand_gate dut(.a(a),.b(b),.y(y));

initial begin

$monitor("a=%b | b=%b | output=%b",a,b,y);
$dumpfile("nand_gate.vcd");
$dumpvars();

a=1'b0; b=1'b0; #10
a=1'b0; b=1'b1; #10
a=1'b1; b=1'b0; #10
a=1'b1; b=1'b1; #10

$finish;

end 
endmodule
