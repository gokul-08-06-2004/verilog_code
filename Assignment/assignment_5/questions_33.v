//33. Write a function that multiplies two numbers without using *.

module example;
reg [3:0]a,b;
reg [7:0]result;

function [7:0]mul(input [3:0]a,b);
integer i;
begin
mul=0;
for(i=0;i<b;i=i+1)
begin
mul=mul+a;
end
end
endfunction

initial begin
a=4'h4;
b=4'h4;

result=mul(a,b);
$display("a=%0d b=%0d result=%0d",a,b,result);
end
endmodule
