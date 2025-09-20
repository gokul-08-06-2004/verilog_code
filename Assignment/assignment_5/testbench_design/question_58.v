//58. Simulate a register that updates on the rising edge of the clock.
module register #(parameter WIDTH=8)(input clk,rst,input [WIDTH-1:0]d,output reg [WIDTH-1:0]q,output [WIDTH-1:0]qbar);

always@(posedge clk or posedge rst)begin

if(rst)
q<=0;
else
q<=d;
end
assign qbar=~q;
endmodule
