//2. Simulate a 16-bit register being initialized and incremented inside an always block.

module register;
reg [15:0]a;

initial begin

a=16'h0000;
$monitor("a=%b | (a=%h)",a,a);
end
always
#10 a=a+1;


 
endmodule
