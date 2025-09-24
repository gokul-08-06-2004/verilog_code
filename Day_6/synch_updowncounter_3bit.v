module t_ff(input clk,rst,t,output reg q,output qbar);

always@(negedge clk or posedge rst)
begin
if(rst)
q<=0;
else if(t)
q<=~q;
end
assign qbar=~q;
endmodule


module synch_updowncounter_3bit(input clk,rst,updown,output [2:0]q,qbar);

wire [2:0]t;

assign t[0]=1'b1;
assign t[1]=updown? q[0] : ~q[0];
assign t[2]=updown? q[0]&q[1] : ~q[0]&~q[1];

genvar i;
generate
for(i=1; i<4;i=i+1)
begin
t_ff ti(clk,rst,t[i-1],q[i-1],qbar[i-1]);
end
endgenerate
endmodule
