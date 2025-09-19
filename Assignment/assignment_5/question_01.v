//1. Write a task to perform addition of two 8-bit numbers.

module addition;
reg [7:0]a,b;
reg [8:0]sum;



task add(input [7:0]a,b,output [8:0]sum );
begin
sum=a+b;
end
endtask

initial begin

a=8'b10101010;
b=8'b10101010;

add(a,b,sum);
$display("Time=%0t a=%b b=%b sum=%b ",$time,a,b,sum);

end
endmodule
