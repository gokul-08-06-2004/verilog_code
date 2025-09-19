//40. Implement a function that calculates a^b using loop (a to the power b).


module example;
reg [7:0]a,b;
reg [15:0]result;
integer i;
function [15:0]power(input [7:0]a,b);
begin
power=1;
for(i=0;i<b;i=i+1)
begin
power = power * a;
end
end
endfunction

initial begin

a=8'd5;
b=8'd2;

result=power(a,b);
$display("a=%0d b=%0d result=%0d",a,b,result);

end
endmodule 
