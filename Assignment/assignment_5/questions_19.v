//19. Develop a task to perform serial addition (bit-by-bit) for two 4-bit numbers.

module example;
reg [3:0]a,b;
reg [4:0]sum;
integer i;
task addition(input [3:0]a,b,output [4:0]sum);
reg carry;
begin
carry=0;
for(i=0;i<4;i=i+1)begin
sum[i]=a[i]^b[i]^carry;
carry=(a[i]&b[i])|(b[i]&carry)|(a[i]&carry);

end
sum[4]=carry;
end
endtask

initial begin

a=4'b1001;
b=4'b1111;

addition(a,b,sum);
$display("a=%b b=%b sum=%b",a,b,sum);
$finish;
end
endmodule 
