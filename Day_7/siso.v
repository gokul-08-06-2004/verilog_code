/*module siso(input clk,rst,din,output dout);
reg [3:0]q;

always@(negedge clk or posedge rst)
begin
if(rst)
q<=4'b0000;
else
q<={q[2:0],din};
end
assign dout=q[3];
endmodule*/

module d_ff(input clk,rst,d,output reg q);

always@(negedge clk or posedge rst)
begin
if(rst)
q<=0;
else 
q<=d;
end
endmodule

module siso(input clk,rst,din,output [3:0]dout,output out);
wire [3:0]q;
assign dout =q;
assign out =q[3];
genvar i;
generate
d_ff d0(clk,rst,din,q[0]);
for(i=1; i<4; i=i+1)
begin
d_ff di(clk,rst,q[i-1],q[i]);
end
endgenerate
endmodule  

