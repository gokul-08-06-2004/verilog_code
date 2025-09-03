module basic_gates_tb;

reg a,b;
wire y1,y2,y3,y4,y5,y6,y7;

basic_gates dut(a,b,y1,y2,y3,y4,y5,y6,y7);

initial begin

$monitor("a=%b | b=%b | not=%b | and=%b | or=%b | nand=%b | nor=%b | xor=%b | xnor=%b",a,b,y1,y2,y3,y4,y5,y6,y7);
$dumpfile("basic_gates.vcd");
$dumpvars();


a=0; b=0; #10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10

$finish;
end
endmodule
