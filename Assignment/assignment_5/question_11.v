//11. Write a task that implements a simple delay-based blinking LED simulation.

module example();
reg led;

task light(input integer times,input integer delay);
integer i;
begin
for(i=0;i<times;i=i+1)begin
led=1;
$display("Time=%0t led=1",$time);
#delay;
led=0;
$display("Time=%0t led=0",$time);
#delay;
end
end
endtask

initial begin
led=0;

light(5,10);


end
endmodule
