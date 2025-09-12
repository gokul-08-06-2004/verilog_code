module flags(input [2:0]flag,output reg [2:0]q);

always@(*)begin
if (flag[0])
q=3'b001;
else if(flag[1])
q=3'b010;
else if(flag[2])
q=3'b100;

else
q=3'b000;
end
endmodule
