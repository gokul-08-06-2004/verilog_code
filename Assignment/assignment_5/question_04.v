//4. Write a task to calculate the square of an 8-bit input number.

module example;
reg [7:0]a;
reg [7:0]ans;

task square(input [7:0]a,output [7:0]y);
begin
y=a*a;
end
endtask

initial begin

a=8'b00001000;
square(a,ans);
$display(" input=%b square=%b",a,ans);
end
endmodule
