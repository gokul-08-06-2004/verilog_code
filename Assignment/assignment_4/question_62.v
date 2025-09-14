module mux_8x1(input sel,input [7:0]a,output reg y);
integer i;
always@(*)begin
for(i=0; i<8; i=i+1)begin
if(sel==i)
y=a[i];
end
end
endmodule
