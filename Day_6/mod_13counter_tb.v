module mod_13counter_tb;

reg clk,rst;
reg [3:0]t;
wire [3:0]q,qbar;

mod_13counter dut(clk,rst,t,q,qbar);

initial begin
clk=0;
forever #5 clk=~clk;
end
always@(negedge clk)begin
$display("Time=%0t clk=%b rst=%b t=%b q=%b qbar=%b  ",$time,clk,rst,t,q,qbar);
end
initial begin
$dumpfile("mod13counter.vcd");
$dumpvars();

rst=1;#10
rst=0;t=4'b1111;
#200;

$finish;
end
endmodule 
