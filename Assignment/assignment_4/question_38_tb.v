module mux_4x1_tb();
reg [1:0]s;
reg [3:0]i;
wire y;
integer a;

mux_4x1 dut(.s(s),.i(i),.y(y));

initial begin
$monitor("TIme=%0t sel=%b i=%b y=%b",$time,s,i,y);
$dumpfile("mux.vcd");
$dumpvars();

for(a=0; a<64;a=a+1)begin
{s,i}=a;
#10;
end
$finish;
end
endmodule
