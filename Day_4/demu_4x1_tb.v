module demux_1x4_tb;
reg [1:0]s;
reg i;
wire [3:0]y; 

demux dut(.s(s),.i(i),.y(y));
initial begin
$monitor("s=%b i=%b y=%b",s,i,y);
$dumpfile("demux.vcd");
$dumpvars();

i=1'b1;

s=2'b00;#10
s=2'b01;#10
s=2'b10;#10
s=2'b11;#10
$finish;
end
endmodule

