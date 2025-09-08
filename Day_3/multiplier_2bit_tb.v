module multiplier_2bit_tb;
reg [1:0]a,b;
wire [3:0]s;

multiplier_2bit dut(a,b,s);

initial begin
$monitor("a=%b | b=%b s=%b ",a,b,s);
$dumpfile("multiplier.vcd");
$dumpvars();

a=2'b00; b=2'b00;#10
a=2'b01; b=2'b01;#10
a=2'b10; b=2'b10;#10
a=2'b11; b=2'b11;#10
a=2'b00; b=2'b00;#10

$finish;
end
endmodule
