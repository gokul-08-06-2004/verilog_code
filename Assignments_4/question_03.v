//3. Use multiple always blocks in a module and simulate how they execute in parallel.

module blocks;
reg a,b,c;

always begin
#10 a=0;
#20 a=1;
$display("a=%b ",a);
end
always begin
#3 b=0;
#2 b=1;
$display("b=%b",b);
end

always begin
#2 c=0;
#1 c=1;
$display("c=%b",c);
end 
endmodule
