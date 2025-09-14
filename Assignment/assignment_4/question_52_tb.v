module full_adder_tb;
reg [3:0]a,b,c;
wire [3:0]sum,carry;

ripple_carry_adder dut(a,b,c,sum,carry);

initial begin
#monitor("Time=%0t a=%b b=%b c=%b sum=%b carry=%b ",$time,a,b,c,sum,carry);


