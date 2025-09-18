module t_ff(input clk,rst,t,output reg q);

always@(posedge clk or posedge rst)begin

if(rst)
q<=0;
else  
q<=~q;
end

endmodule 

module ripple_downcounter_4bit(input clk,rst,t,output [3:0]q);

t_ff t1(clk,rst,t,q[0]);
t_ff t2(q[0],rst,t,q[1]);
t_ff t3(q[1],rst,t,q[2]);
t_ff t4(q[2],rst,t,q[3]);
endmodule
