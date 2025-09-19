//37. Implement a function that shifts input right by n bits

module example();
reg [7:0]num;
reg [1:0]times;
reg [7:0]out;

function [7:0]shifts(input [7:0]num,input [1:0]times);
begin
shifts=num>>times;
end
endfunction

initial begin
num=8'b10101111;
times=2'b11;

out=shifts(num,times);

$display("num=%b result=%b ",num,out);
end
endmodule

