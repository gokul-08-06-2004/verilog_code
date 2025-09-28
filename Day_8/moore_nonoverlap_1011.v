module moore_nonoverlap_1011(input clk,rst,in,output reg out);
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
out=0;
case(p_state)
s0:nxt_state=in?s1:s0;
s1:nxt_state=in?s1:s2;
s2:nxt_state=in?s3:s0;
s3:nxt_state=in?s4:s2;
s4:begin
if(in)begin
nxt_state=s0;
out=1;
end
else begin
nxt_state=s0;
out=1;
end
end
endcase
end
endmodule


