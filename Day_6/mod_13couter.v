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

module mod_13counter(input clk,rst,input [3:0]t,output [3:0]q,qbar);
wire clr=rst | (q[3]&q[2]&~q[1]&q[0]);
genvar i;
generate
t_ff t1(clk,clr,t[0],q[0],qbar[0]);
for(i=1; i<4; i=i+1)
begin
t_ff ti(q[i-1],clr,t[i],q[i],qbar[i]);
end
endgenerate
endmodule 
