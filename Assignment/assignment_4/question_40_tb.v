module flags_tb;

reg [2:0]flag;
wire [2:0]q;
integer i;
flags dut(flag,q);

initial begin
$monitor("Time=%0t f[2]=%b f[1]=%b f[0]=%b q=%b ",$time,flag[2],flag[1],flag[0],q);
$dumpfile("flag.vcd");
$dumpvars();

for(i=0; i<8;i=i+1)begin
{flag[2],flag[1],flag[0]}=i;
#10;
end
$finish;
end
endmodule
