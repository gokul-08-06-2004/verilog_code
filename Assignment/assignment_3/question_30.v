module or_operation();
reg[2:0] a,b;
reg [2:0]x;
initial begin
a=3'd5;
b=3'b111;
x=a|b;
$display("x=%b ",x);

end
endmodule
