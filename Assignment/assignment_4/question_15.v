//15. Demonstrate how non-blocking assignments allow concurrent updates.

module assignment;
reg a,b;
reg clk;

initial begin

clk =0;
forever #5 clk=~clk;
end


always @(posedge clk)
begin 
a=0; b=1;
a<=b;
b<=a;

end

initial begin 
$monitor("clk=%b a=%b b=%b ",clk,a,b);
#100 $finish;
end
endmodule
