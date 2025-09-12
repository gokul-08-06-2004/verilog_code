module encoder_4x2(input [3:0]a,output reg [1:0]y);

always@(*)begin

case(a)
      4'b0001:y=00;
      4'b0010:y=01;
      4'b0100:y=10;
      4'b1000:y=11;
      
      default:y[1:0]=2'b00;
endcase

end
endmodule
