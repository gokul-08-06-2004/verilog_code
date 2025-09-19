//7. Write a task that calculates the factorial of a number using a loop (not recursion).

module example();
reg [7:0]a;
reg [15:0]fact;
integer i;
task factorial(input [7:0]a,output [15:0]fact);
begin
fact=1;
for(i=1;i<=a;i=i+1)begin
fact=fact*i;
end
end
endtask

initial begin

a=5;
factorial(a,fact);
$display("a=%0d fact=%0d",a,fact);

end
endmodule
