//27. Create a function that returns the minimum of two 8-bit values.

module example;
reg [7:0]a,b;
reg [7:0]out;

function [7:0]minimum(input [7:0]a,b);
begin
if(a<b)
minimum=a;
if (b<a)
minimum=b;

end
endfunction

initial begin
a=1;
b=9;

out=minimum(a,b);
$display("a=%0d b=%0d out=%0d",a,b,out);
end
endmodule
