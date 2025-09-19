//41. Use $display to print values of two registers and their sum.

module add;
reg [3:0]a,b;

initial  begin

a=4'b1010;
b=4'b1010;

$display("a=%b b=%b sum=%b",a,b,a+b);

end
endmodule
