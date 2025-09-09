module xor_operation();
reg [2:0]a;
reg [2:0]c;

initial begin
a=3'd4;
c=^a;
$display("c=%b ",c);

end
endmodule
