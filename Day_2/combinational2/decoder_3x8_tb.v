module decoder_8x3_tb();
reg [2:0]a;
wire [7:0]y;

decoder_3x8 dut(.a(a),.y(y));

initial begin

$monitor("a[0]=%b | a[1]=%b | a[2]=%b | y[0]=%b | y[1]=%b | y[2]=%b | y[3]=%b | y[4]=%b | y[5]=%b | y[6]=%b | y[7]=%b",a[0],a[1],a[2],y[0],y[1],y[2],y[3],y[4],y[5],y[6],y[7]);

$dumpfile("decoder.vcd");
$dumpvars();

a=3'b000;#10
a=3'b001;#10
a=3'b010;#10
a=3'b011;#10
a=3'b100;#10
a=3'b101;#10
a=3'b110;#10
a=3'b111;#10
$finish;
end
endmodule
