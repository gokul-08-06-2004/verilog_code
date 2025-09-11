//35. Show a waveform that differentiates for, repeat, and forever behaviors.


module behavior();
reg clk;
reg [3:0]f,r,e;
integer i;

initial  begin
clk=0;
forever #5 clk=~clk;
end

initial begin 
r=0;
repeat(4)begin @(posedge clk)
r=r+1;
end
end
initial begin
f=0;
for(i=0;i<4;i=i+1)begin
f=i;

end
end

initial begin
e=0;
forever begin@(posedge clk)
e=e+1;
end
end

initial begin
$monitor("time=%0t clk=%b repeat=%b for=%b forever=%b ",$time,clk,r,f,e);
$dumpfile("beaviour.vcd");
$dumpvars();
#50 $finish;
	
end
endmodule

