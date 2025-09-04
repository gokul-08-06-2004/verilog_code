module demux_4x1_tb;
reg s0,s1,i;
wire y0,y1,y2,y3;

demux_4x1 dut(s0,s1,i,y0,y1,y2,y3);

initial begin

$monitor("s0=%b | s1=%b | i=%b | y0=%b | y1=%b | y2=%b | y3=%b",s0,s1,i,y0,y1,y2,y3);

$dumpfile("demux.vcd");
$dumpvars();

s0=0; s1=0; i=1;#10
s0=0; s1=1; i=1;#10
s0=1; s1=0; i=1;#10
s0=1; s1=1; i=1;#10

$finish;
end 
endmodule
