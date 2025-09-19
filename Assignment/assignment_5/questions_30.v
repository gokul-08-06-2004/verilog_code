//30. Write a function to compare two inputs and return 1 if equal.

module example;
reg [3:0]a,b;
reg out;

function equal(input [3:0]a,b);
begin
if(a==b)
equal=1;
if(a!=b)
equal=0;
end
endfunction

initial begin
a=4'b1010;
b=4'b1100;

out=equal(a,b);
$display("a=%b b=%b out=%b",a,b,out);


a=4'b1100;
b=4'b1100;

out=equal(a,b);
$display("a=%b b=%b out=%b",a,b,out);

end
endmodule

