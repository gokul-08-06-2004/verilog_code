module half_sub_tb;
reg a,b;
wire diff,barrow;

full_sub dut(a,b,diff,barrow);
initial begin
$monitor("a=%b b=%b diff=%b barrow=%b",a,b,diff,barrow);
$dumpfile("half_sub");
$dumpvars();

a=0; b=0;  #10
a=0; b=0; #10
a=0; b=1;  #10
a=0; b=1;  #10
a=1; b=0;  #10
a=1; b=0; #10
a=1; b=1; #10
a=1; b=1; #10
$finish;
end
endmodule
