//43. Write a testbench that uses $random to generate test data.


module test_data;

integer i;
reg [7:0]rand_val;

initial begin
for(i=0; i<5; i=i+1)
begin
rand_val=$random;
$display("rand_val=%0d",rand_val);
rand_val=$random % 100;
$display("rand_val=%0d",rand_val);
#5;

end
end
endmodule
