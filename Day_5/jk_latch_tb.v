module jk_latch_tb;

reg clk,rst,j,k;
wire q,qbar;

jk_latch dut(clk,rst,j,k,q,qbar);

initial begin
clk=0;
forever #5 clk=~clk;
end

task add_task(input [1:0]a );begin
@(posedge clk)
{j,k}=a;
#10;
$display("Time=%0t clk=%b  rst=%b  j=%b k=%b q=%b qbar=%b ",$time,clk,rst,j,k,q,qbar);
end
endtask

initial begin
rst=1;
#10;
rst=0;
$display("time=%0t rst=%b q=%b qbar=%b",$time,rst,q,qbar);

add_task(2'b00);
add_task(2'b01);
add_task(2'b10);
add_task(2'b11);

$finish;
end
endmodule
