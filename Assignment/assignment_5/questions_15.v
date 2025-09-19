//15. Modify the given add_task to handle signed inputs.

module example;

reg signed [7:0]a,b;
reg signed [7:0]out;

task add_task(input signed [7:0]a,b,output signed [7:0]out);
begin

out = a+b;

end
endtask

initial begin

a=-46;
b=8;

add_task(a,b,out);

$display("a=%0d b=%0d out=%0d",a,b,out);

end
endmodule
