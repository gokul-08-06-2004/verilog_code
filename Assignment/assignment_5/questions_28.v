//28. Implement a function to compute even parity using XOR.

module example;
reg [7:0]num;
reg out;
integer i;

function even_parity(input [7:0]num);
begin
even_parity=0;
for(i=0;i<8;i=i+1)begin
even_parity=even_parity^num[i];
end
end

endfunction


initial begin

num=8'b11110100;
out=even_parity(num);
$display("num=%b even_parity=%b",num,out);
end
endmodule

