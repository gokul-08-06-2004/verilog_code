module t_latch(input wire clk,rst,t,output reg q,output wire q_bar);
  always@(posedge clk)
    begin
      if(rst)
        q<=1'b0;
      else 
begin        case(t)
        1'b0:q<=q;
        1'b1:q<=~q;
        default:q<=1'b0;
       endcase
    end
end
 assign q_bar=~q;
endmodule
