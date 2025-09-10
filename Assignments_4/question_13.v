//13. Create a simple ALU module using only blocking assignments.

module alu(input [3:0]a,b,input [2:0]sel,output reg [7:0]y);

always@(*)
begin
case(sel)
        3'b000:y=a+b;
        3'b001:y=a-b;
        3'b010:y=a&b;
        3'b011:y=a|b;
        3'b100:y=a^b;
        3'b101:y=~a;
        3'b110:y=a<<b;
        3'b111:y=a>>b;
default:y=5'b00000;
endcase
end
endmodule
        

