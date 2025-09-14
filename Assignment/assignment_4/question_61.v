module siso(input clk,rst,din,output  dout);
reg q1,q2,q3;

always@(posedge clk or posedge rst)begin

if(rst)begin
q1<=0;
q2<=0;
q3<=0;
end
else begin
q1 <= din;
q2 <= q1;
q3 <= q2;
end
end
assign dout = q3;
endmodule 
