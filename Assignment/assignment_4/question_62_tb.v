module mux_8x1_tb;
reg sel;
reg [7:0]a;
wire y;
integer i;
mux_8x1 dut(sel,a,y);

initial begin
$monitor("Time=%0t sel=%b a=%b y=%b ",$time,sel,a,y);
$dumpfile("mux.vcd");
$dumpvars();

a=8'b01010101;

for(i=0; i<8 ;i=i+1)begin
sel=i;
#10;
end
$finish;
end
endmodule
