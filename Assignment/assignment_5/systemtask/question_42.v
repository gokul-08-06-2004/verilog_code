//42. Demonstrate $monitor to track signal changes in a clock and data signal.

module track;
reg data;
reg clk;

initial begin
$monitor("Time=%0t clk=%b data=%b",$time,clk,data);
clk=0;data=0;
#5 data=1;
#10 clk=1;
#10 data=0;
#10 clk=0;
#50 $finish;
end
endmodule
