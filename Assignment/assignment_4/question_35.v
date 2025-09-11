//36. Explain why forever loops are not synthesizable and how to work around them.

module work_around(input clk,rst,output reg q);

always@(posedge clk or posedge rst)begin
if(rst)
q=0;
else
q=1;
end
endmodule

