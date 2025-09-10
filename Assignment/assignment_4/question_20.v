//20. Show how race condition is resolved using non-blocking assignments.

module reslove;
reg clock;
reg q;

initial begin
clock=0;
forever #5 clock=~clock;
end

always@(posedge clock)begin
q<=1;
end
always@(posedge clock)begin
q<=0;
end



initial begin
$monitor("time=%0t clock=%b q=%b",$time,clock,q);
#20 $finish;
end
endmodule
