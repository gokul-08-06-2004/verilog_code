//20. Write a task to drive a global variable from within the task.

module example;
reg [7:0]a;

task var(input [7:0]x);
begin

a=x;

end
endtask

initial begin

a=8'b10100110;

var(a);

$display("a=%b",a );
end
endmodule
