module basic();
reg [3:0]a=4'b0100;
reg [3:0]b;
initial begin
b=a+1'bx;
$display("b=%b",b);
end
endmodule
