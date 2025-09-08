module conti_tb;
reg a,b;
wire out;

conti dut(a,b,out);

initial begin 

$monitor("a=%b b=%b out=%b",a,b,out);

a=0; b=0;#10
a=1; b=1;#10

$finish;
end
endmodule
