module half_substractor_tb();
reg a,b;
wire diff,barrow;

half_substractor dut(a,b,diff,barrow);

initial begin 
$monitor("a=%b | b=%b | diff=%b | barrow=%b",a,b,diff,barrow);
$dumpfile("half_sub.vcd");
$dumpvars();

a=0; b=0; #10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10

$finish;
end
endmodule
