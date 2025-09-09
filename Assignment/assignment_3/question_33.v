module concatenation_operator();
reg [3:0]a;
reg [6:0]b;
initial begin
a=4'd10;
b={a,1'b1};
$display("b=%b ",b);
end
endmodule 
