//31. Write a function to compute the absolute value of a signed input.


module example;
reg signed [7:0]num;
reg signed [7:0]out;

function [7:0]abs_val(input signed[7:0]num);
begin

if(num<0)
abs_val=-num;
if(num>0)
abs_val=num;

end
endfunction

initial begin

num=-19;
out=abs_val(num);
$display("num=%0d out=%0d",num,out);
num=20;
out=abs_val(num);
$display("num=%0d out=%0d",num,out);
end
endmodule
