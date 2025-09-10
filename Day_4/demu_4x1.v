module demux(input [1:0]s,input i,output reg [3:0]y);

always@(s or i)
begin
y[3:0]=4'b0000;
case(s)
       2'b00:y[0]=i;
       2'b01:y[1]=i;
       2'b10:y[2]=i;
       2'b11:y[3]=i;
       default:y=4'b0000;
       endcase
end
endmodule
