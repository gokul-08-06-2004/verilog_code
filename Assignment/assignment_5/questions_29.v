//29. Create a function that returns the number of 1’s in an 8-bit input.

module exapmle;
reg [7:0]num;
reg [7:0]out;
integer i;

function [7:0]count_ones(input [7:0]num);

begin
count_ones=0;
for(i=0;i<8;i=i+1)
begin
count_ones=count_ones+num[i];
end
end
endfunction

initial begin

num=8'b10101010;
out=count_ones(num);
$display("num=%b ones=%0d",num,out);
end
endmodule
