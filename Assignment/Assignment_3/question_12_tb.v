module comparator_tb;
reg a,b;
wire ceq,clt,cgt;

comparator dut(a,b,ceq,clt,cgt);
initial begin

$monitor("a=%b b=%b ceq=%b clt=%b cgt=%b ",a,b,ceq,clt,cgt);

a=0; b=0; #10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10

$finish;
end
endmodule
