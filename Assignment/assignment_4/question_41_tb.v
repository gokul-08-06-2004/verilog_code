module encoder_tb();

reg [1:0]a;
wire [3:0]y;
integer i;

encoder dut(a,y);

initial begin

$monitor("TIme=%0t a=%b y=%b",$time,a,y);
$dumpfile("encoder.vcd");
$dumpvars();

for(i=0; i<4; i=i+1)begin
a=i;
#10;
end
$finish;
end
endmodule
