module mux_8x1_tb;

reg s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7;
wire y;

mux_8x1 dut (.s0(s0),.s1(s1),.s2(s2),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6),.i7(i7),.y(y));

initial begin

$monitor("s0=%b | s1=%b | s2=%b | i0=%b | i1=%b | i2=%b | i3=%b | i4=%b | i5=%b | i6=%b | i7=%b | y=%b",s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7,y);
$dumpfile("mux.vcd");
$dumpvars();

{i7,i6,i5,i4,i3,i2,i1,i0}=8'b10101010;

s0=0; s1=0; s2=0; #10
s0=0; s1=0; s2=1; #10
s0=0; s1=1; s2=0; #10
s0=0; s1=1; s2=1; #10
s0=1; s1=0; s2=0; #10
s0=1; s1=0; s2=1; #10
s0=1; s1=1; s2=0; #10
s0=1; s1=1; s2=1; #10

$finish;
end
endmodule
