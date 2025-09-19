//14. Create a task to toggle a clock signal 10 times with a delay of 5 time units.

module example;
reg clk;

task signal(input integer count,input integer delay);
integer i;
begin
for(i=0; i<count;i=i+1)begin
#delay clk=~clk;
$display("Time=%0t clk=%b",$time,clk);
end
end
endtask

initial begin

clk=0;

signal(10,5);

end
endmodule

