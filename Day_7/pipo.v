module d_ff(input clk,rst,d,output reg q);

always@(negedge clk or posedge rst)
begin
if(rst)
q<=0;
else
q<=d;
end
endmodule

module pipo(input clk,rst,input [3:0]din,output [3:0]q);

genvar i;
generate
for(i=0;i<4;i=i+1)
begin
d_ff di(clk,rst,din[i],q[i]);
end
endgenerate
endmodule
