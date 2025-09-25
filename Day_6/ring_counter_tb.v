module ring_counter_tb;

reg clk,preset;
wire [3:0]q;

ring_counter dut(clk,preset,q);

initial begin
clk=0;
forever #5 clk=~clk;
end

always@(negedge clk)begin
$display("Time=%0t clk=%b preset=%b q=%b",$time,clk,preset,q);
end
initial begin
$dumpfile("ringcounter.vcd");
$dumpvars();

preset=1'b0;#10;
preset=1'b1;#50;

$finish;
end
endmodule
