module johnson_conuter_tb;

reg clk,clr;
wire [3:0]q;

johnson_counter dut(clk,clr,q);

initial begin
clk=0;
forever #5 clk=~clk;
end

always@(negedge clk)begin
$display("Time=%0t clk=%b clr=%b q=%b",$time,clk,clr,q);
end
initial begin
$dumpfile("johnson_counter.vcd");
$dumpvars();

clr=0;#10;
clr=1;#100;

$finish;
end
endmodule
