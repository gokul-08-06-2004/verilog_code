//21. Write a function that returns the sum of two 8-bit inputs.

module example;
reg [7:0]a,b;
reg [8:0]sum;

function [8:0]add(input [7:0]a,b);
begin
add=a+b;
end
endfunction

initial begin

a=8'b10101010;
b=8'b10101010;

sum=add(a,b);
$display("a=%b b=%b sum=%b",a,b,sum);
end
endmodule
