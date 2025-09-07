module comparator_2bit_tb;
reg [1:0]a,b;
wire lt,eq,gt;
 
comparator_2bit dut(a,b,lt,eq,gt);

initial begin

$monitor("a[0]=%b a[1]=%b b[0]=%b b[1]=%b lessthan=%b equal=%b greaterthan=%b ",a[1],a[0],b[1],b[0],lt,eq,gt);
$dumpfile("comparator.vcd");
$dumpvars();

a=2'b00; b=2'b00;#10
a=2'b00; b=2'b01;#10
a=2'b00; b=2'b10;#10
a=2'b00; b=2'b11;#10
a=2'b01; b=2'b00;#10
a=2'b01; b=2'b01;#10
a=2'b01; b=2'b10;#10
a=2'b10; b=2'b00;#10
a=2'b10; b=2'b01;#10
a=2'b10; b=2'b10;#10
a=2'b10; b=2'b11;#10
a=2'b11; b=2'b00;#10
a=2'b11; b=2'b01;#10
a=2'b11; b=2'b10;#10
a=2'b11; b=2'b11;#10

$finish;
end
endmodule
