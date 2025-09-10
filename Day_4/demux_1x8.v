module demux_1x8(input [2:0]s,input i,output reg [7:0]y);


always@(s or i)begin
y[7:0]=8'b00000000;
case(s)
      3'b000:y[0]=i;//00000001
      3'b001:y[1]=i;//00000010
      3'b010:y[2]=i;
      3'b011:y[3]=i;
      3'b100:y[4]=i;
      3'b101:y[5]=i;
      3'b110:y[6]=i;
      3'b111:y[7]=i;
default:y[7:0]=8'b00000000;
endcase
end
endmodule

