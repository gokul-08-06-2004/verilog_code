//2. Demonstrate implicit net declaration by creating a module where undeclared out is
//assigned using assign out = a | b;

module implicit;
reg a,b;
assign out =a|b;

initial begin
	$monitor("a=%b b=%b out=%b",a,b,out);

	a=0; b=0;#10
	a=0; b=1;#10
	a=1; b=0;#10
	a=1; b=1;#10

	$finish;
end

endmodule
