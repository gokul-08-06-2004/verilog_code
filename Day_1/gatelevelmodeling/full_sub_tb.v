module full_sub_tb;

reg a,b,c;
wire diff,barrow;

full_sub dut(a,b,c,diff,barrow);

initial begin

$monitor("a=%b | b=%b | c=%b | diff=%b | barrow=%b",a,b,c,diff,barrow);
$dumpfile("full_sub.vcd");
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
