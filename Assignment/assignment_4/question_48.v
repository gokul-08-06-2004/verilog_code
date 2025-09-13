module compare(input [3:0]a,output reg [1:0]y_case,output reg [1:0]y_casex,output reg [1:0]y_casez);

always@(*)begin
case(a)
4'b0001:y_case=2'b01;
4'b001x:y_case=2'b10;
default:y_case=2'b00;
endcase
end

always@(*)begin
casex(a)
4'b0001:y_casex=2'b01;
4'b001x:y_casex=2'b10;
default:y_casex=2'b00;
endcase
end


always@(*)begin
casez(a)
4'b0001:y_casez=2'b01;
4'b001x:y_casez=2'b10;
default:y_casez=2'b00;
endcase
end

endmodule
