//12. Write a testbench for a blocking-assigned flip-flop—verify its output.

module dff(input clk,d,output reg q);

always@(posedge clk )
begin 
q=d;
end
endmodule	
