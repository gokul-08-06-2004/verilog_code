//32. Create a function to reverse the bits of an input.

module example;
reg [7:0]num;
reg [7:0]result;
integer i;
function [7:0]rev(input [7:0]num);
begin
rev=0;
for(i=0; i<8;i=i+1)
begin
rev[i]=num[7-i];
end
end
endfunction

initial begin
num=8'b11110000;
result=rev(num);
$display("num=%b result=%b",num,result);
end
endmodule
