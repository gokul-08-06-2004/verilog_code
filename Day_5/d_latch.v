module d_latch(input clk,rst,d,output reg q,output qbar);

always@(posedge clk,posedge rst )begin 
if(rst)
q<=0;
else begin 
case (d)
1'b0:q<=d;
1'b1:q<=d;
default:q<=1'b0;
endcase
end
end
assign qbar=~q;

endmodule 

