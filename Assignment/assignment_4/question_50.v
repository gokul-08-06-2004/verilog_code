module reg_array;
reg [3:0]arr[0:3];

genvar i;
generate 
for(i=0; i<4; i=i+1)begin:
int_loop
initial begin 
arr[i]=i;
end
end
endgenerate
initial begin

$display("Time=%0t arr=%0d",$time,arr[0]);#10
$display("Time=%0t arr=%0d",$time,arr[1]);#10
$display("Time=%0t arr=%0d",$time,arr[2]);#10
$display("Time=%0t arr=%0d",$time,arr[3]);#10

$finish;
end
endmodule
