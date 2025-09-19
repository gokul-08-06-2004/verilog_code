//45. Use $time and $realtime to print simulation time during execution.


module times;
real t;

initial begin

$display("Time=%0t ",$time);

#5
t=$realtime;
$display("Realtime=%0f",t);

end
endmodule

