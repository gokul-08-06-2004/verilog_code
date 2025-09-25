module d_ff (input clk,clr,d,output reg q);

always@(negedge clk or negedge clr)
begin
if(!clr)
q<=0;

else 
q<=d;
end
endmodule

module johnson_counter(input clk,clr,output [3:0]q );
wire [3:0]d;

assign d[0]=~q[3];
assign d[1]=q[0];
assign d[2]=q[1];
assign d[3]=q[2];

genvar i;
generate
for(i=0; i<4; i=i+1)
begin
d_ff di(.clk(clk),.clr(clr),.d(d[i]),.q(q[i]));
end
endgenerate
endmodule
