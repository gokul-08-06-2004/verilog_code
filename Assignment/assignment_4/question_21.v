//21. Explain the three-step process of non-blocking execution: Read, Evaluate, Schedule.

module three_step;

reg clock;
reg q1,q2;

initial begin
clock=0;
forever #5 clock=~clock;
end

always@(posedge clock)begin
q1<=1;//read
q2<=q1;//read and schedule
end

initial begin
$monitor("clock=%b q1=%b q2=%b ",clock,q1,q2);//evaluate 
#30 $finish;
end

endmodule
