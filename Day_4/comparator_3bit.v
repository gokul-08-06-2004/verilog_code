module comparator_3bit(input [2:0]a,b,output reg [2:0]y);

always@(*)begin

if(a<b)begin
y[0]=1;
y[1]=0;
y[2]=0;
end
else if(a==b)begin
y[0]=0;
y[1]=1;
y[2]=0;
end
else begin
y[0]=0;
y[1]=0;
y[2]=1;
end
end
endmodule


