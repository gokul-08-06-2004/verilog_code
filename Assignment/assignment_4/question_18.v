//18. Mix = and <= in one block and explain simulation output.

module one_block();

reg q1,q2;
reg clock;
initial begin
$monitor("clock=%0t q1=%b q2=%b",clock,q1,q2);
forever #5 clock=~clock;
end

always@ (posedge clock)
begin
q1=0;
q2<=q1; 
q2=1;

q1<=1;
q2<=q1;

end
initial 
#10 $finish;
endmodule

