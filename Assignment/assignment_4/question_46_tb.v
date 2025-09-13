module case_staement_tb;
reg [3:0]a;
wire [1:0]y;
integer i;

casex_statement dut(a,y);
initial begin
$monitor("Time=%0t a=%b y=%b",$time,a,y);

for(i=0; i<4;i=i+1)begin
a=i;
#10;

a=4'b0001;#10;
a=4'b001x;#10;
a=4'b01xx;#10;
a=4'b1xxx;#10;
end
$finish;
end
endmodule
