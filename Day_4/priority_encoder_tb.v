module priority_encoder_tb;
reg [3:0]a;
wire [1:0]y;
integer i;

priority_encoder dut(a,y);

initial begin
$monitor("a=%b | y=%b",a,y);
$dumpfile("priority.vcd");
$dumpvars();

for(i=0;i<16;i=i+1)begin
a=i;
#10;

end

 $finish;
end
endmodule
