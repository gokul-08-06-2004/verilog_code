module custom_logic_tb;
reg x,y,z;
wire f;

custom_logic dut(.x(x),.y(y),.z(z),.f(f));

initial begin 

$monitor("a=%b b=%b c=%b f=%f",x,y,z,f);

x=0; y=0; z=0; #10
x=0; y=0; z=1; #10
x=0; y=1; z=0; #10
x=0; y=1; z=1; #10
x=1; y=0; z=0; #10
x=1; y=0; z=1; #10
x=1; y=1; z=0; #10
x=1; y=1; y=1; #10

$finish;
end
endmodule


