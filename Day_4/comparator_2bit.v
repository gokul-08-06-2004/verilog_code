module comparator_2bit(input [1:0]a,b,output reg [2:0]y);

always@(*)begin
y=3'b000;

if (a>b)
y[0]=1;

else if(a==b)
y[1]=1;

else 
y[2]=1;


end
endmodule
