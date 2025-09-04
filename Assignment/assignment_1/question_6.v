//6. Time Simulation Variable
//Create a time t; variable
//Store and display $time at different events using delays.

module time_demo;
time t;

initial begin

	t=$time;
	
$display("time=%0t time=%0t:",$time,t);#10

t=$time;

$display("time=%0t time=%0t:",$time,t);#10


$finish;
end 
endmodule
