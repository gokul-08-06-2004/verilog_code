//22. Create a race condition intentionally using blocking statements—analyze results.

module three_step;

reg clock;
reg q1,q2;

initial begin
clock=0;
forever #5 clock=~clock;
end

always@(posedge clock)begin
q1=1;
q2=q1;
end

initial begin
$monitor("clock=%b q1=%b q2=%b ",clock,q1,q2);
#30 $finish;
end

endmodule

