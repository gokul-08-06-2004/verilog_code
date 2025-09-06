module encoder_8x3_tb;
reg [7:0]a;
wire [2:0]y;

encoder_8x3 dut(.a(a),.y(y));

initial begin
$monitor("a[7]=%b a[6]=%b a[5]=%b a[4]=%b a[3]=%b a[2]=%b a[1]=%b a[0]=%b y[2]=%b y[1]=%b y[0]=%b ",a[7],a[6],a[5],a[4],a[3],a[2],a[1],a[0],y[2],y[1],y[0]);
$dumpfile("encoder.vcd");
$dumpvars();

a=8'b00000001;#10
a=8'b00000010;#10
a=8'b00000100;#10
a=8'b00001000;#10
a=8'b00010000;#10
a=8'b00100000;#10
a=8'b01000000;#10
a=8'b10000000;#10

$finish;
end
endmodule

