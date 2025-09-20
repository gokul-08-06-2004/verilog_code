//57. Create a testbench that uses $display and $monitor together

module mux(input s,input [1:0]i,output y);

assign y= s?i[1]:i[0];

endmodule
