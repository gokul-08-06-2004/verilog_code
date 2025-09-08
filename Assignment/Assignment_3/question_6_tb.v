module twocomplement_tb;

reg [3:0]x,y;
reg cin;
wire [3:0]sum;
wire c_out;

twocomplement dut(x,y,cin,sum,c_out);
initial begin

$monitor("a=%b b=%b cin=%b sum=%b c_out=%b ",x,y,cin,sum,c_out);

x=4'b0000; y=4'b0001; cin=1;#10
x=4'b0010; y=4'b0101; cin=1;#10
x=4'b0010; y=4'b1101; cin=0;#10
x=4'b1000; y=4'b1001; cin=1;#10

$finish;
end
endmodule
