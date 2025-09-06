module encoder_4x2_tb;
reg [3:0]a;
wire [1:0]y;

encoder dut(.a(a),.y(y));

initial begin
$monitor("a[0]=%b | a[1]=%b | a[2]=%b | a[3]=%b | y[0]=%b | y[1]=%b ",a[0],a[1],a[2],a[3],y[0],y[1]);
$dumpfile("encoder.vcd");
$dumpvars();

a=4'b0001;#10
a=4'b0010;#10
a=4'b0100;#10
a=4'b1000;#10

$finish;
end
endmodule
