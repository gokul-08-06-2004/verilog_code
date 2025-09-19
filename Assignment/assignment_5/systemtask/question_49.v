//49. Show usage of $monitoron and $monitoroff to control monitoring.


module control;
reg clk;
initial clk = 0;

always #5 clk = ~clk;

initial begin
$monitor("Time=%0t clk=%b", $time, clk);
    #15 $monitoroff; 
    #15 $monitoron;  
    #30 $finish;
  end
endmodule
