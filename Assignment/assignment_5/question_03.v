//3. Develop a task that performs both AND and OR operations on two inputs.

module operation;
reg [3:0]a,b;
reg [3:0]x,y;

task gates(input [3:0]a,b,output [3:0]x,y);
begin
x=a&b;
y=a|b;

end
endtask

initial begin

a=4'b1110;
b=4'b1010;

gates(a,b,x,y);

$display("Time=%0t a=%b b=%b and=%b or=%b ",$time,a,b,x,y);

end
endmodule
