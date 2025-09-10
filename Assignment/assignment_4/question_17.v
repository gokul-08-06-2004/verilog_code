//17. Modify a race-prone code using = into a race-free one using <=.

module race;
reg clock;
reg [2:0]din;
reg [2:0]q1;
reg [2:0]q2;

initial begin
$monitor("time=%0t clock=%b din=%b q1=%b q2=%b ",$time,clock,din,q1,q2);

clock=0;
forever #5 clock=~clock;
end

always@(posedge clock)begin
q1=3'b001; q2=3'b111;

q1<=q2;
q2<=q1;

end
initial 
#100 $finish;
endmodule
