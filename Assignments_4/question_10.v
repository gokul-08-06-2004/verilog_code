//10. Modify the above to use non-blocking assignments and compare the outputs.

module non_blocking;
reg a,b,c;
initial begin
$monitor("time=%0t a=%b b=%b c=%b",$time,a,b,c);
end

always begin
#10 a<=1;
#2  b<=a;
#4  c<=b;
end
endmodule
