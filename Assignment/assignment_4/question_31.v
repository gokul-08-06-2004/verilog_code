//31. Write a module using forever loop and disable it after a time limit.


module timelimit();
reg clk;

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("time=%0t clk=%b",$time,clk);
#20 $finish;
end

endmodule
