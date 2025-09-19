//26. Write a function that calculates the square of a number.

module example;
reg  [7:0]num;
reg  [15:0]square_nu;

function [15:0]square(input [7:0]num);
begin
square=num*num;
end
endfunction

initial begin

num=20;
square_nu=square(num);
$display("num=%0d square_value=%0d",num,square_nu);
end
endmodule
