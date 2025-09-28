module mealy_nonoverlap_1011(input clk,rst,in,output reg out);
reg [1:0]pre_state,nxt_state;
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;

always@(posedge clk or posedge rst)begin
if(rst)
pre_state<=s0;
else
pre_state<=nxt_state;
end

always@(*)begin
out=0;
case(pre_state)
s0:nxt_state=in?s1:s0;
s1:nxt_state=in?s1:s2;
s2:nxt_state=in?s3:s0;
s3:begin
if(in)begin
nxt_state=s0;
out=1;
end
else
nxt_state=s0;
end
default:nxt_state=s0;
endcase
end
endmodule
