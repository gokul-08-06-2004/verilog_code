module basic_gates_tb();
reg a,b;
wire [5:0]y;

basic_gates dut(a,b,y);

initial begin

$monitor("a=%b b=%b and=%b or=%b nand=%b nor=%b xor=%b xnor=%b",a,b,y[0],y[1],y[2],y[3],y[4],y[5]);

a=0; b=0; #10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10

$finish;
end
endmodule 



