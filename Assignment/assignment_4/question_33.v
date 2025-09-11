//34. Count down from 10 to 0 using a while loop and show each value with $display.

module count;

integer i;
initial begin
i=10;
while(i>=0)begin
$display("i=%0d ",i);
i=i-1;
end
#20 $finish;
end
endmodule
