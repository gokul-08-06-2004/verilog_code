//35. Write a function that checks if the input is power of 2.

module example;
reg [7:0]num;
reg result;

function power(input [7:0]num);
begin
if(num>0 && (num & (num-1))==0)
power = 1;
else
power =0;

end
endfunction

initial begin
num=8'd10;

result=power(num);
$display("num=%b result=%b",num,result);

num=8'd16;
result=power(num);
$display("num=%b result=%b",num,result);
end
endmodule


