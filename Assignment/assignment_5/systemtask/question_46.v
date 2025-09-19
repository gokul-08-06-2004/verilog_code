//46. Write a simulation that pauses at time 20 using $stop.


module pause;
reg [3:0]a,b;


initial begin
$monitor("Time=%0t a=%b b=%b ",$time,a,b);

a=0; b=0;#10
a=0; b=1;#10
a=1; b=0;#10
a=1; b=1;#10

$stop;
end
endmodule
