module comparator_2bit_tb;

reg [1:0]a,b;
wire [2:0]y;

comparator_2bit dut(a,b,y);
initial begin
$monitor("a=%b | b=%b | gt=%b | eq=%b | lt=%b",a,b,y[0],y[1],y[2]);
$dumpfile("comparator.vcd");
$dumpvars();

a=2'b00; b=2'b00;#10
a=2'b01; b=2'b10;#10
a=2'b10; b=2'b10;#10
//a=2'b11; b=2'b11;#10

//$finish;
//end
//endmodule
