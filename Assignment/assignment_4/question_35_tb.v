module work_tb;
reg clk,rst;
wire q;
integer i;

work_around dut(clk,rst,q);

initial begin
clk=0;
forever #5 clk=~clk;
#50 $finish;
end
endmodule 

