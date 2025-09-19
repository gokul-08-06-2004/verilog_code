//34. Create a function that performs a logical AND on all bits of a bus.

module example;
reg [7:0]num;
reg result;

function log_and(input [7:0]num);
integer i;

begin
log_and=1;
for(i=0; i<8; i=i+1)
begin
log_and=log_and & num[i];
end
end
endfunction

initial begin
num=8'b10100101;

result=log_and(num);
$display("num=%b result=%b ",num,result);
end
endmodule
