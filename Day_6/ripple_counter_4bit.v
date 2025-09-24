module t_ff(input clk,rst,t,output reg q,output qbar);

always@(negedge clk or posedge rst)begin

if(rst)
q<=0;
else if (t)
q<=~q;
else
q=0;
end
assign qbar=~q;
endmodule 

module ripple_downcounter_4bit(input clk,rst,input [3:0]t,output [3:0]q,qbar);

genvar i;
t_ff t1(clk,rst,t[0],q[0],qbar[0]);
generate
for(i=1;i<4;i=i+1)begin
t_ff t2(qbar[i-1],rst,t[i],q[i],qbar[i]);
end
endgenerate
endmodule
