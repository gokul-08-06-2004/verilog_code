//12. Create a task to simulate a left circular shift of a register value.

module example;
reg [7:0]a;
reg [7:0]out;

task shift(input [7:0]a,input integer times,output [7:0]out);
reg [7:0]temp;
integer i;
begin
temp=a;
for(i=0; i<times;i=i+1)
begin
temp={temp[6:0],temp[7]};
end
out=temp;
end
endtask

initial begin

a=8'b10100000;

shift(a,3,out);

$display("orignal=%b shift=%b",a,out);

end
endmodule
