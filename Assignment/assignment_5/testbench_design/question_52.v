//52. Write a testbench for a D Flip-Flop with asynchronous reset.

module d_ff(input clk,rst,d,output reg q,output qbar);

always@(posedge clk or posedge rst)begin
if(rst)
q<=0;
else
q<=d;
end
assign qbar=~q;
endmodule
