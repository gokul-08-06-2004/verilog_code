//23. Write a recursive function to compute factorial using automatic.

module example;
reg [4:0]num;
reg [31:0]out;

function automatic [31:0]fact(input [4:0]num);
begin
if(num==0)
fact=1;
else
fact=num*fact(num-1);
end
endfunction

initial begin

num=5;
out=fact(num);
$display("num=%0d out=%0d ",num,out);
$finish;
end
endmodule
