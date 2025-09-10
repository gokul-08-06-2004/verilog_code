//1. Write a module that toggles a 1-bit signal using initial and always blocks.


module signal;
reg b;
initial begin 
b=0;
end
always
#10 b=~b;

endmodule	
