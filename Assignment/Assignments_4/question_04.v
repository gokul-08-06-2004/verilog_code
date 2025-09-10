//4. Explain the functional difference between initial and always with simulation output.


module inandal;
reg clock,x,y,z;

initial begin
$monitor("x=%b y=%b z=%b ",x,y,z);
$dumpfile("clockedge.vcd");
$dumpvars();
clock=0;
end

always #5 clock=~clock;

always begin
#5 x=0;
#1 x=1; 
end

always begin
#4 y=1;
#6 y=1;
end

always begin
#5 z=1;
#4 z=0;
end 


endmodule
