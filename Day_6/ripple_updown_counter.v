module t_ff(input clk,rst,t,output reg q,output qbar);

always@(negedge clk or posedge  rst)
begin

if(rst)
q<=0;
else if(t)
q<=~q;
end
assign qbar=~q;
endmodule

module ripple_updown_counter(input clk,rst,t,updown,output [3:0]q,qbar);

genvar i;
 
t_ff t1(clk,rst,t,q[0],qbar[0]);
generate
for(i=1; i<4; i=i+1)begin
t_ff ti((updown?q[i-1]:qbar[i-1]),rst,t,q[i],qbar[i]);
end
endgenerate
endmodule
