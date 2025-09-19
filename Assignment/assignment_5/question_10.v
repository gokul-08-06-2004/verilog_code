//10. Create a task that accepts 4 inputs and returns the maximum among them.

module example();
reg [7:0]a,b,c,d;
reg [7:0]max;

task maxi(input [7:0]a,b,c,d ,output [7:0]max);
begin
max=a;
if(b>max)
max=b;
 if(c>max)
max=c;
 if(d>max)
max=d;

end
endtask

initial begin

a=4;
b=10;
c=19;
d=1;

maxi(a,b,c,d,max);

$display("a=%0d b=%0d c=%0d d=%0d max_no=%0d",a,b,c,d,max);

end
endmodule

