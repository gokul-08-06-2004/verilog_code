module sr_latch(input clk,rst,s,r,output reg q,output qbar);

always@(posedge clk or posedge rst )begin
if(rst)
q<=0;
else
case({s,r})
2'b00:q<=q;
2'b01:q<=1'b0;
2'b10:q<=1'b1;
2'b11:q<=1'bx;
default:q=1'b0;
endcase
end
assign qbar=~q;

endmodule
