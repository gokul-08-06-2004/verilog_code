module encoder_4x2_tb;
reg [3:0]a;
wire [1:0]y;

encoder_4x2 dut(a,y);
initial begin
$monitor("a=%b y=%b ",a,y);
$dumpfile("encoder.vcd");
$dumpvars();

a=4'b0001;#10
a=4'b0010;#10
a=4'b0100;#10
a=4'b1000;#10

$finish;
end
endmodule


