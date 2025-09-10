module mux_4x1_tb;
reg [1:0]s;
reg [3:0]i;
wire y;

mux_4x1 dut(s,i,y);

initial begin
$monitor("s=%b i=%b y=%b ",s,i,y);
$dumpfile("mux.vcd");
$dumpvars();

s=2'b00; i=1000; #10
s=2'b01;  i=0000;#10
s=2'b10; i=1001;#10
s=2'b11;  i=0110;#10

$finish;
end
endmodule
