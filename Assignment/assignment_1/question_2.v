module wire_assign();
wire a,b;

assign a=1;
assign b=a;

initial begin

$display("a=%b | b=%b ",a,b);

$finish;
end
endmodule




