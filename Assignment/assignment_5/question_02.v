//2. Create a task to perform subtraction of two 8-bit numbers.


module sub();
reg [7:0]a,b;
reg [8:0]diff;

task sub(input [7:0]a,b,output diff);
begin
diff=a-b;
end
endtask

initial begin
a=8'b10101010;
b=8'b10101010;

sub(a,b,diff);

$display("Time=%0t a=%b b=%b diff=%b",$time,a,b,diff);

end
endmodule 
