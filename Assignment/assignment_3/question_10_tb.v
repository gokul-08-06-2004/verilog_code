module even_parity_9bit_tb();

reg [8:0]x;
wire eq,op;

even_parity_9bit dut(x,ep,op);

initial begin

$monitor("x=%b ep=%b op=%b ",x,ep,op);

x=9'b101010100;#10
x=9'b010101011;#10
$finish;
end
endmodule



