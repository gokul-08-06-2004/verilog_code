module d_ff(input clk,rst,d,output reg q);

always@(negedge clk or posedge rst)
begin
if(rst)
q<=0;
else
q<=d;
end
endmodule


module sipo(input clk,rst,din,output [3:0]dout);
wire [3:0]q;
assign dout=q;

genvar i;
d_ff d0(clk,rst,din,q[0]);
generate
for(i=1; i<4; i=i+1)
begin
d_ff di(clk,rst,q[i-1],q[i]);
end
endgenerate
endmodule
