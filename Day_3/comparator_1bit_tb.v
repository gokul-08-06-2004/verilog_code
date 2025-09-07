module comparator_1bit_tb;
reg [1:0]a;
wire [2:0]y;

comparator_1bit dut(a,y);
initial begin
$monitor("a=%b | y=%b",a,y);
$dumpfile("comparator.vcd");
$dumpvars();

a[0]=0; a[1]=0;#10
a[0]=0; a[1]=1;#10
a[0]=1; a[1]=0;#10
a[0]=1; a[1]=1;#10

$finish;
end
endmodule

