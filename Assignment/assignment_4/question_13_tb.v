module alu_tb();
reg [3:0]a,b;
reg [2:0]sel;
wire [7:0]y;

alu dut(a,b,sel,y);

initial begin
$monitor("a=%b b=%b sel=%b y=%b ",a,b,sel,y);
$dumpfile("alu.vcd");
$dumpvars();
a=5'b00011; b=5'b01010;
sel=3'b000;#10
sel=3'b001;#10
sel=3'b010;#10
sel=3'b011;#10
sel=3'b100;#10
sel=3'b101;#10
sel=3'b110;#10
sel=3'b111;#10

$finish;
end
endmodule
