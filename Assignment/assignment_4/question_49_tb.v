module bus_tb;

reg [2:0]s;
wire [7:0]y;
integer a;

bus dut(s,y);
initial begin
$monitor("Time=%0t s=%b y=%b",$time,s,y);
$dumpfile("bus.vcd");
$dumpvars();



for(a=0;a<8;a=a+1)begin
s=a[2:0];
#10;
end
$finish;
end
endmodule
