module bitwise_tb;
reg x,y;
wire [4:0]z;

bitwise dut(x,y,z);

initial begin
$monitor("Time=%0t x=%b y=%b z[0]=%b z[1]=%b z[2]=%b z[3]=%b z[4]=%b ",$time, x,y,z[0],z[1],z[2],z[3],z[4]);

x=0; y=0;#10
x=0; y=1;#10
x=1; y=0; #10
x=1; y=1; #10

$finish;
end
endmodule
           
