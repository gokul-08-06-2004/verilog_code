//19. Demonstrate a race condition using two always blocks assigning to the same variable.

module race_condition;
reg clock;
reg q1,q2;

initial begin
clock=0;
forever #10 clock=~clock;
end

always@(posedge clock)begin
q1=0;
q2=q1;
end

initial begin
$monitor("clock=%b q=%b",clock,q);
#60 $finish;
end
endmodule

