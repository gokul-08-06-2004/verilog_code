module mux_tb;
reg [1:0]s;
reg [3:0]i;
wire y;
integer a;

mux dut(s,i,y);
initial begin
$monitor("Time=%0t selection=%b i=%b y=%b",$time,s,i,y);
$dumpfile("mux.vcd");
$dumpvars();

i=4'b0101;
for(a=0;a<4;a=a+1)begin
s=a;
#10;
end
$finish;
end
endmodule
