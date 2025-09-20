module mux_2x1_tb;

reg s;
reg [1:0]i;
wire y;

mux dut(s,i,y);

initial begin

$monitor("s=%b i=%b y=%b",s,i,y);

s=0; i=2'b01;#10
s=1; i=2'b10;#10

$display("s=%b i=%b y=%b",s,i,y);
$finish;
end
endmodule
