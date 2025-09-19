//25. Create a function that returns the difference of two inputs.

module example();
reg [7:0]a,b;
reg [8:0]diff;

function sub(input [7:0]a,b);
begin
sub=a-b;
end
endfunction

initial begin
a=8'b10100100;
b=8'b11111111;

diff=sub(a,b);
$display("a=%b b=%b out=%b",a,b,diff);

end
endmodule

