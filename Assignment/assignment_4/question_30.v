//30. Simulate a buffer that stores data every positive clock edge using repeat

module buffer ;
reg clk;
reg [7:0]a[0:7];
reg [7:0]data;
integer i;

initial begin 
clk=0;
forever #5 clk=~clk;
end

initial begin
i=0;
data=8'b00000000;
repeat(8)begin@(posedge clk)
a[i]=data;
$display("time=%0t clk=%b i=%0d a=%b ",$time,clk,i,a[i]);
data=data+1;
i=i+1;
end
#100 $finish;
end
endmodule
