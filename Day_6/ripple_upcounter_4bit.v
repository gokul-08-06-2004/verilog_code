module t_ff(input clk,rst,t,output reg q);

always@(negedge clk or posedge rst)begin
if(rst)
q<=0;
else if(t)
q<=~q;

end
endmodule

module ripple_upcounter_4bit(input clk,rst,input [3:0]t,output [3:0]q); 
genvar i;

t_ff t1(clk,rst,t[0],q[0]);
generate
for(i=1; i<4; i=i+1)
begin
t_ff t2(q[i-1],rst,t[i],q[i]);
end
endgenerate
endmodule

