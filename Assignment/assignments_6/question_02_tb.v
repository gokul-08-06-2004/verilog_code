module divide_by_5_tb;
reg clk,rst,x;
wire y;

divide_by_5 dut(.clk(clk),.rst(rst),.x(x),.y(y));

initial begin
clk=0;
forever #5 clk=~clk;
end

integer i;
reg [9:0]a;
initial begin
//$monitor("Time=%0t rst=%b x=%b y=%b ",$time,rst,x,y);
$dumpfile("divide.vcd");
$dumpvars();
rst=1;x=0;#10
rst=0;
a=10'b1010010100;
for(i=9;i>=0;i=i-1)begin
x=a[i];
#10;
$display("Time=%0t rst=%b x=%b y=%b",$time,rst,x,y);
end

$finish;
end
endmodule
