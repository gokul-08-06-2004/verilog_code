//26. Design a counter using a repeat loop and simulate 8 cycles.

module repeatloop(input clk,rst,output reg [3:0]q);

always@(posedge clk or posedge rst)
begin
if(rst)
q<=0;
else 
q<=q+1;
end
endmodule
