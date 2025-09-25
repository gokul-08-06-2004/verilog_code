module d_ff(input clk,rst,d,output reg q);
always@(negedge clk or posedge rst)
begin
if(rst)
q<=0;
else
q<=d;
end
endmodule

module piso(input clk,rst,load,input [3:0]din,output dout);
wire [3:0]q;
wire [3:0]d;
assign d[0]=load?din[0]:1'b0;
assign d[1]=load?din[1]:q[0];
assign d[2]=load?din[2]:q[1];
assign d[3]=load?din[3]:q[2];
assign dout=q[3];
genvar i;
generate 
for(i=0; i<4; i=i+1)
begin
d_ff di(clk,rst,d[i],q[i]);
end
endgenerate
endmodule
