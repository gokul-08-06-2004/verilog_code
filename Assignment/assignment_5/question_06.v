//6. Implement a task that toggles a signal every 10 time units using # delay

module example();
reg clk;

task signal(inout clk);
begin
#10 clk=~clk;
end
endtask

initial begin
clk=0;
repeat(5)begin
signal(clk);
$display("Time=%0t clk=%b ",$time,clk);
end
end
endmodule  
