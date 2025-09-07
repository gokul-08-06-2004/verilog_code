module greytobinary_tb;
reg [3:0]g;
wire [3:0]b;

graytobinary dut(g,b);

initial begin
$monitor("gray=%b | binary=%b ",g,b);
$dumpfile("graytobinary.vcd");
$dumpvars();
g=4'b0000;#10
g=4'b0001;#10
g=4'b0010;#10
g=4'b0011;#10
g=4'b0100;#10
g=4'b0101;#10
g=4'b0110;#10
g=4'b0111;#10
g=4'b1000;#10
g=4'b1001;#10
g=4'b1010;#10
g=4'b1011;#10
g=4'b1100;#10
g=4'b1101;#10
g=4'b1110;#10
g=4'b1111;#10

$finish;
end
endmodule
