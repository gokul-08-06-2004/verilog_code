//50. Demonstrate difference between $write and $display.

module diff;
reg a,b;

initial begin

a=5; b=3;

$display("a=%b b=%b ",a,b);
$write("a=%b b=%b",a,b);
$display("a=%b b=%b ",a,b);

end
endmodule
