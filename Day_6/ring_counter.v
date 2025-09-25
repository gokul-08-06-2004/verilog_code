module d_ff(input clk,clr,preset,d,output reg q);

always@(negedge clk or negedge clr or negedge preset)
begin
if(!clr)
q<=0;
else if(!preset)
q<=1;
else
q<=d;
end
endmodule

module ring_counter(input clk,input preset,output [3:0]q);
wire [3:0]d;

assign d[0]=q[3];
assign d[1]=q[0];
assign d[2]=q[1];
assign d[3]=q[2];


genvar i;
d_ff d1(clk,1'b1,preset,d[0],q[0]);
generate
for(i=1;i<4;i=i+1)begin
d_ff di(clk,preset,1'b1,d[i],q[i]);
end
endgenerate
endmodule
