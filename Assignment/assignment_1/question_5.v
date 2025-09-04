//5. Signed Integer Simulation
//Use integer i;
//Assign positive and negative values and simulate signed behavior.



module signed_integer();

integer i;

initial begin 

i=10;#10
$display("integer =%d",i);
i=-5;#10
$display("integer =%d",i);
#10
$finish;
end
endmodule




