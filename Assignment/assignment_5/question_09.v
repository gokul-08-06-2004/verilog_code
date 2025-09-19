//9. Demonstrate a task calling another task (e.g., double_add_task calling add_task).

module example();
reg [7:0]a,b;
reg [8:0]sum,result;

task add_task(input [7:0]a,b,output [8:0]sum);
begin
sum=a+b;
end
endtask

task double_add_task(input [7:0]a,b,output [8:0]result);
reg [8:0]temp_sum;
begin
add_task(a,b,temp_sum);
result=temp_sum*2;
end
endtask

initial begin

a=8'b00001111;
b=8'b11110000;

add_task(a,b,sum);
$display("a=%b b=%b sum=%b ",a,b,sum);

double_add_task(a,b,result);
$display("a=%b b=%b result=%b ",a,b,result);
$finish;
end
endmodule




