//8. Simulate two always blocks modifying different signals—observe timing.

module signals();

reg x,y;

always
begin
x=0;
#8 x=1;
end

always
begin
y=1;
#4 y=0;
end

initial begin
$monitor("time=%0t x=%b y=%b",$time,x,y);

end
endmodule 
