module ripplecarry_adder_tb;
reg [3:0] a,b;
reg c;
wire [3:0]sum;
wire c_out ;

ripple_carry_adder dut(a,b,c,sum,c_out);
initial begin

$monitor("Time=%0t a=%b b=%b c=%b sum=%b carry=%b",$time,a,b,c,sum,c_out);

a=0; b=0; c=0;#10
a=0; b=0; c=1;#10
a=0; b=1; c=0;#10
a=0; b=1; c=1;#10
a=1; b=0; c=0;#10
a=1; b=0; c=1;#10
a=1; b=1; c=0;#10
a=1; b=1; c=1;#10
$finish;
end
endmodule
