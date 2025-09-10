//11. Explain how = and <= affect simulation order with examples.


module assignment;
reg a,b,c;



initial begin
a=0; b=1; c=0;
a<= 1; 
 b<= a; 
c<= b; 
#6;
end

initial begin
$monitor("time=%0t a=%b b=%b c=%b",$time,a,b,c);
end
endmodule 
