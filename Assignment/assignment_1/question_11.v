//11.Manipulate Vector Using Part Select
//Assign and modify specific bits using both busA[i]i= bus[i]; and busA = bus[3:0];

module vector_using_partselect;

reg [7:0]busA;
reg [7:0]bus;
integer i;
 
initial begin 

bus=8'b10001001;
$display("bus=%b",bus);

for(i=0;i<8;i=i+1)
begin 
     busA[i]=bus[i];
end
$display("busA=%b",busA);

busA[3:0]=bus[3:0];
$display("lower_nibble=%b:",busA);

busA[7:4]=4'b1111;
$display("upper_nibble=%b:",busA);

#10
$finish;
end
endmodule


