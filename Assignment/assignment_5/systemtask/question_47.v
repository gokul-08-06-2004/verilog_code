//47. Create a testbench that ends simulation after 50 time units using $finish.

module test;

initial begin
#50 $finish;
end
endmodule
