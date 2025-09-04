//7. Floating-Point Handling
//Use real delta; and assign values like 4e10, 2.18.
//Observe behavior when assigned to an integer.


module floating_point;

real delta;
integer i;

initial begin 

delta =4e10;
$display("delta=%0f:",delta);#10
i=delta;
$display("i=%d",i);#10

delta =2.18;
$display("delta=%0f",delta);#10
i=delta;
$display("i=%d",i);

#10
$finish;
end
endmodule




