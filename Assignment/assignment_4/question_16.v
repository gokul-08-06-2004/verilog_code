//16. Write a code where incorrect usage of blocking assignment causes simulation mismatch.

module incorrect;

reg clock;
reg [3:0]din;
reg [3:0]q1;
reg [3:0]q2;

initial begin
clock=0;
forever #5 clock=~clock;
end

always@(posedge clock)begin
q1=4'b0001; q2=4'b1010;

q1=q2;
q2=q1;
end

initial begin
$monitor("din=%b q1=%b q2=%b  ",din,q1,q2);
end
endmodule
