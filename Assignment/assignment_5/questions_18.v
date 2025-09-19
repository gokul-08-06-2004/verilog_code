//18. Write a task that checks whether two 8-bit inputs are equal and sets a flag.

module example;

reg [7:0]a,b;
reg flag;

task equality(input [7:0]a,b,output flag);
begin
if(a==b)
flag=1;
else
flag=0;
end
endtask

initial begin

a=8'b11110000;
b=8'b10101010;

equality(a,b,flag);

$display("a=%b b=%b eqaul=%b ",a,b,flag);

a=8'b10101010;
b=8'b10101010;
equality(a,b,flag);
$display("a=%b b=%b equal=%b ",a,b,flag);
end
endmodule
