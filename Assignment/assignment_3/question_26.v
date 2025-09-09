module test (output [32:0]b);
real a=14.5;
assign b=a;
initial begin
$display("b=%b",b);
end
endmodule
