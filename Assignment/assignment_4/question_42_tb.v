module priority_tb;

reg en;
reg [3:0]a;
wire [1:0]y;
integer i;

priority dut(en,a,y);

initial begin
$monitor("Time=%0t en=%b a=%b y=%b",$time,en,a,y);
$dumpfile("priority.vcd");
$dumpvars();
en=0;#10;
en=1;
for(i=0; i<16; i=i+1)
begin
a=i;
#10;
end
$finish;
end
endmodule

