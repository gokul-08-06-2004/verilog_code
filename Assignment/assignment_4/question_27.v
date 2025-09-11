//27. Use a while loop to count the number of 1s in a 4-bit vector.

module vector_4bit();

reg [3:0]a;
integer i;
integer count;

initial begin
a=4'b1101;
i=0;
count=0;

while(i<4)begin
if(a[i]==1)
count = count+1;
i=i+1;
end
$display("time=%0t a=%b count=%0d ",$time,a,count);
$finish;
end
endmodule
