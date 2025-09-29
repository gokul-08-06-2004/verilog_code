//2.to design a state diagram and implement a circuit that output a "1"if the aggregate serial binary input is divisable by 5,we first need to understaand the problem and then translate it into verilog code.

module divide_by_5(input clk,rst,x,output reg y);
reg [2:0]p_state,nxt_state;
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;

always@(posedge clk or posedge rst)begin
if(rst)
p_state<=s0;
else
p_state<=nxt_state;
end

always@(*)begin
case(p_state)
s0:nxt_state=x?s1:s0;
s1:nxt_state=x?s3:s2;
s2:nxt_state=x?s0:s4;
s3:nxt_state=x?s2:s1;
s4:nxt_state=x?s4:s3;
default:begin
nxt_state=s0;
end
endcase
end
always@(*)begin
if(p_state==0)
y=1;
else
y=0;
end
endmodule






