//24. Simulate two flip-flops exchanging values with blocking and non-blocking assignments.

module dff;
reg clk;
reg a,b;

initial begin
clk=0;
forever #5 clk=~clk;
end


always@(posedge clk)begin
a<=b;
b<=a;
end

initial begin
a=1; b=0;
$monitor("clock=%b a=%b b=%b",clk, a,b);
#20 $finish;
end
endmodule
