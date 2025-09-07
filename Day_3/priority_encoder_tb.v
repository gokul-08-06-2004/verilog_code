module priority_encoder_tb;
reg [3:0]a;
wire [1:0]y;

priority_encoder dut(a,y);

initial begin
$monitor("a=%b | y=%b ",a,y);
$dumpfile("priority.vcd");
$dumpvars();

a=4'b0001;#10
a=4'b001x;#10
a=4'b01xx;#10
a=4'b1xxx;#10

$finish;
end
endmodule

