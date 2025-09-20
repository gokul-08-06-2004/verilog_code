module mux_tb;

reg [1:0]s;
reg [3:0]i;
wire y;

mux dut(s,i,y);

initial begin
$monitor("s=%b i=%b y=%b",s,i,y);

s=2'b00;i=4'b0001;#10
s=2'b01;i=4'b0010;#10
s=2'b10;i=4'b0100;#10
s=2'b11;i=4'b1000;#10

$finish;
end
endmodule



