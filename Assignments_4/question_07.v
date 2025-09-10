//   7. What happens if you use multiple initial blocks in the same module? Demonstrate.

module intial ;
reg x,y,z;
initial 
$monitor("time=%0t x=%b y=%b z=%b",$time,x,y,z);
initial begin
#10 x=0;
#10 x=0;
end 

initial begin
#5 y=0;
#5 y=1;
end 

initial begin
#3 z=0;
end



endmodule 

