module decoder_2x4_tb;
reg [1:0]a;
wire [3:0]y;

decoder_2x4 dut(.a(a),.y(y));
initial begin 
$monitor("a[0]=%b a[1]=%b y[0]=%b y[1]=%b y[2]=%b y[3]=%b",a[0],a[1],y[0],y[1],y[2],y[3]);
$dumpfile("decoder.vcd");
$dumpvars();

a[0]=0; a[1]=0;#10
a[0]=0; a[1]=1;#10
a[0]=1; a[1]=0;#10
a[0]=1; a[1]=1;#10

$finish;
end
endmodule 
