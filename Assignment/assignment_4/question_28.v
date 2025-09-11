//27. Use a while loop to count the number of 1s in a 4-bit vector.
//28. Implement the above logic using a for loop instead of while.

module forloop;
reg [3:0]a;
integer i;
integer count;

initial begin
a=4'b0011;
count=0;

for(i=0;i<4;i=i+1)begin
if(a[i]==1)

count=count+1;
end
$display("time=%0t a=%b count=%b count=%0d",$time,a,count,count);
$finish;
end
endmodule
