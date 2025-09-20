//54. Generate a clock in a testbench using reg clk and always #5 clk = ~clk.

module clock;

reg clk;

always #5 clk=~clk;

initial begin
clk=0;
$monitor("clk=%b",clk);
#50;
$finish;
end
endmodule
