module full_adder_4bit_tb();

reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire c_out;

full_adder_4bit dut(a,b,cin,sum,c_out);
initial begin

$monitor("a=%b b=%b cin=%b sum=%b c_out=%b ",a,b,cin,sum,c_out);

a=4'b0000; b=4'b0001; cin=1;#10
a=4'b0010; b=4'b0101; cin=1;#10
a=4'b0010; b=4'b1101; cin=0;#10
a=4'b1000; b=4'b1001; cin=1;#10

$finish;
end
endmodule
