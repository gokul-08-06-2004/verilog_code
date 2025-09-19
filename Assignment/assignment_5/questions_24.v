//24. Implement a function to return 1 if input is a prime number, else 0.

module example;
reg [7:0]a;
reg out;
integer i;
function prime(input [7:0]a);
begin
if(a<2)
prime=0;
else begin
prime=1;
for(i=2;i<=a/2;i=i+1)begin
if(a%i==0)begin
prime=0;

end
end
end
end
endfunction

initial begin

a=7;
out=prime(a);
$display("a=%0d prime=%0d",a,out);
a=10;
out=prime(a);
$display("a=%0d prime=%0d",a,out);

end
endmodule
