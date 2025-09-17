module d_latch_tb;

reg clk,rst,d;
wire q,qbar;

d_latch dut(clk,rst,d,q,qbar);

initial begin
clk=0;
forever #5 clk= ~clk;
end

task add_task(input a);begin
@(posedge clk);
d=a;
#10;
$display("time=%0t clk=%b rst=%b d=%b q=%b qbar=%b",$time,clk,rst,d,q,qbar);
end
endtask

initial begin

rst=1;
#10;
rst=0;
$display("time =%0t rst=%b q=%b qbar=%b ",$time,rst,q,qbar);

add_task(1'b0);
add_task(1'b1);
$finish;
end

endmodule  
