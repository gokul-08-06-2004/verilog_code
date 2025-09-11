//29. Initialize a 16-byte memory with repeat loop.

module memory();
reg [7:0]mem[15:0]; 
reg clk;
integer i;

initial begin 
clk=0;
forever #5 clk=~clk;
end

initial begin
i=0;
repeat(16)begin @(posedge clk)
mem[i]=16'h1;
$display("time=%0t clk=%b mem[%0d]=%h", $time, clk, i, mem[i]);
i=i+1;
end


/*initial begin
$monitor("time=%0t clk=%b mem[0]=%b mem[1]=%b mem[2]=%b mem[3]=%b  ",$time,clk,mem[0],mem[1],mem[2],mem[3]);
$dumpfile("mem.vcd");
$dumpvars();
for(i=0;i<16)*/

#200 $finish;
end
endmodule 
