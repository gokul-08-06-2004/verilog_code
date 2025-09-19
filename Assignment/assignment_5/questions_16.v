//16. Write a task that counts the number of 1s in an 8-bit input.

module example;
reg [7:0]a;
integer  out;
integer i;

task counter(input [7:0]a,output integer out);
begin
out=0;
for(i=0; i<8; i=i+1)
begin
if(a[i]==1)
out=out+1;
end
end
endtask

initial begin

a=8'b10101010;

counter(a,out);

$display("a=%b no of count=%0d",a,out);

end
endmodule
