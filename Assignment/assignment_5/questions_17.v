//17. Create a task that performs multiplication and outputs the result using $display.

module example;
integer a,b;
integer mul;

task multi(input integer a,b,output integer mul);
begin
mul=a*b;
end
endtask

initial begin

a=8;
b=10;

multi(a,b,mul);

$display("a=%0d b=%0d mul=%0d",a,b,mul);
end
endmodule
