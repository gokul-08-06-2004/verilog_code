//44. Implement $strobe to display values at the end of simulation timestep.

module timestep;
reg [3:0]a,b;

initial begin
a=8;
b=2;
#5;
b<=b+2;

$display("a=%0d b=%0d ",a,b);
$strobe("a=%0d b=%0d",a,b);

end
endmodule
