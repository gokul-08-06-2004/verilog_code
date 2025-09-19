//22. Create a function that returns the XOR of all bits of an input (odd parity).

module example;
reg [7:0]a;
reg odd;

function odd_parity(input [7:0]a);
integer i;
begin
odd_parity=0;
for(i=0;i<8;i=i+1)begin
odd_parity=odd_parity^a[i];
end
end
endfunction

initial begin

a=8'b01111010;

odd=odd_parity(a);

$display("a=%b oddno=%b",a,odd);
end
endmodule
