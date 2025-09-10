module decoder_3x8(input en,input [2:0]a,output reg [7:0]y);

always@(*)begin
if (en==0)
y=8'b00000000;
else begin
case(a)
      3'b000:y[7:0]=8'b00000001;
      3'b001:y[7:0]=8'b00000010;
      3'b010:y[7:0]=8'b00000100;
      3'b011:y[7:0]=8'b00001000;
      3'b100:y[7:0]=8'b00010000;
      3'b101:y[7:0]=8'b00100000;
      3'b110:y[7:0]=8'b01000000;
      3'b111:y[7:0]=8'b10000000;
      default:y[7:0]=8'b00000000;
endcase
end
end
endmodule
