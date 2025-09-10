module demux_1x8_tb;
reg [2:0]s;
reg i;
wire [7:0]y;

demux_1x8 dut(s,i,y);
initial begin
$monitor("s=%b | i=%b | y=%b",s,i,y);
$dumpfile("demux.vcd");
$dumpvars();

i=1'b1;
s=3'b000;#10
s=3'b001;#10
s=3'b010;#10
s=3'b011;#10
s=3'b100;#10
s=3'b101;#10
s=3'b110;#10
s=3'b111;#10

$finish;
end 
endmodule

