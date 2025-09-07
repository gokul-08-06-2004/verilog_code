module comparator_3bit_tb();
reg [2:0]a,b;
wire lt,eq,gt;

comparator_3bit dut(a,b,lt,eq,gt);
initial begin
$monitor("a=%b | b=%b lessthan=%b | equal=%b | greaterthan=%b ",a,b,lt,eq,gt);
$dumpfile("comparator.vcd");
$dumpvars();

a=3'b000; b=3'b000;#10
a=3'b000; b=3'b001;#10
a=3'b000; b=3'b010;#10
a=3'b000; b=3'b011;#10
a=3'b000; b=3'b100;#10
a=3'b000; b=3'b101;#10
a=3'b000; b=3'b110;#10
a=3'b000; b=3'b111;#10
a=3'b001; b=3'b000;#10
a=3'b001; b=3'b001;#10
a=3'b001; b=3'b010;#10
a=3'b001; b=3'b011;#10
a=3'b001; b=3'b100;#10

$finish;
end
endmodule
