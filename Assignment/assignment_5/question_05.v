//5. Create a task that performs both addition and subtraction and returns two outputs.

module example;
reg [7:0]a,b;
reg [8:0]add,sub;

task add_sub(input [7:0]a,b,output [8:0]add,sub);
begin
add=a+b;
sub=a-b;
end
endtask

initial begin

a=8'b10101010;
b=8'b10101011;

add_sub(a,b,add,sub);

$display("add=%b  \n sub=%b",add,sub);
end
endmodule
