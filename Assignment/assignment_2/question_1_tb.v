module comparator2bit_tb;
reg a,b; 
wire x,y,z;

comparator_2bit dut(.a(a),.b(b),.x(x),.y(y),.z(z));


initial begin 

$monitor("a=%b b=%b a=b=%b a>b=%b a<b=%b",a,b,x,y,z);
$dumpfile("comparator.vcd");
$dumpvars();

a=0; b=0; #10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10

$finish;
end 
endmodule

