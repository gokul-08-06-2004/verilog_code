//38. Create a function that counts trailing zeros in a binary number.

module example;
reg [7:0]num;
reg [15:0]result;
integer i;
 
function [15:0]counts(input [7:0]num);
begin
counts=0;
for(i=0; i<8; i=i+1)
begin
if(num[i]==0)
counts=counts+1;
else 
i=8;
end
end
endfunction

initial begin

num=8'b10010000;
result=counts(num);
$display("num=%b result=%0d",num,result);

num=8'b10000011;
result=counts(num);
$display("num=%b result=%0d",num,result);

end
endmodule

