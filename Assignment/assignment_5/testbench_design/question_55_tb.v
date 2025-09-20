module full_adder_4bit_tb;

reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;

full_adder_4bit dut(a,b,cin,sum,carry);


task task_add(input [3:0]a_in,b_in,input cin_in);
begin
a=a_in;
b=b_in;
cin=cin_in;
#10;
$display("a=%b b=%b c=%b sum=%b carry=%b",a,b,cin,sum,carry);

end
endtask

initial begin
task_add(4'b0000,4'b1010,0);
task_add(4'b1100,4'b1010,1);
task_add(4'b0001,4'b1100,0);

$finish;
end
endmodule
