module mux_4x1_tb;
reg i0,i1,i2,i3,s0,s1;
wire y;

mux_4x1 dut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(y));

initial begin

$monitor("i0=%b i1=%b i2=%b i3=%b s1=%b s2=%b output=%b",i0,i1,i2,i3,s0,s1,y);
$dumpfile("mux.vcd");
$dumpvars();
i0=1; i1=1; i2=1; i3=1;
s0=0; s1=0;#10 
s0=0; s1=1;#10
s0=1; s1=0;#10
s1=1; s1=1;#10

$finish;
end
endmodule

