module equality_operator();
reg [3:0]a;
reg [1:0]x;
initial begin 
a=4'd10;
x=(a>>1);
$display("x=%b",x);

end
endmodule

