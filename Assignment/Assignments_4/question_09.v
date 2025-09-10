//9. Design a module that uses blocking assignments to assign two values in order.

module blocking_assign ;
reg a,b;

initial begin
$monitor("time=%0t a=%b b=%b",$time,a,b);
#10 a=1;
#3 b=a;
end
endmodule

