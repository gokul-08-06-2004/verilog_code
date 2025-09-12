module mux_2x1_tb;

reg sel;
reg [1:0]i;
wire y;
integer a;
mux_2x1 dut(.sel(sel),.i(i),.y(y));

initial begin
$monitor("Time=%0t sel=%b i[1]=%b i[0]=%b y=%b ",$time,sel,i[1],i[0],y);
$dumpfile("mux_vcd");
$dumpvars();
sel=0;
i=0;
for(a=0;a<8;a=a+1)begin
{sel,i}=a;
#10;
end
 $finish;
end
endmodule


