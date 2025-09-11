//33. Use for loop to compute parity of an 8-bit signal.

module parity;

reg clk;
reg [7:0]a;
reg parity;
integer i;

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
a=8'b10100101;
parity=0;
for(i=0;i<8;i=i+1)begin
parity=parity^a[i];
end

$display("time=%0t a=%b parity=%b ",$time,a,parity);
#100 $finish;
end
endmodule


