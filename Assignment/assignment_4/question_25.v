//25. Write a forever loop to generate a square wave on a signal.

module foreverloop;
reg clock;

initial begin
clock=0;
forever #4 clock=~clock;
end

initial begin
$monitor("time=%0t clock=%b",$time,clock);
$dumpfile("forloop.vcd");
$dumpvars();
#100 $finish;
end
endmodule


