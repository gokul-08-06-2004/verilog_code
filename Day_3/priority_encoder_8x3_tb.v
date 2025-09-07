module priority_encoder_8x3_tb;
reg [7:0]a;
wire [2:0]y;

priority_encoder dut(a,y);

initial begin
$monitor("a=%b | y=%b ",a,y);
$dumpfile("priority.vcd");
$dumpvars();

a=8'b00000001;#10
a=8'b0000001x;#10
a=8'b000001xx;#10
a=8'b00001xxx;#10
a=8'b0001xxxx;#10
a=8'b001xxxxx;#10
a=8'b01xxxxxx;#10
a=8'b1xxxxxxx;#10

$finish;
end
endmodule

