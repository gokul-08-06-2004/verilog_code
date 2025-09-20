//53. Develop a testbench to test all input combinations of a full adder

module full_adder(input a,b,cin,output sum,carry);

assign sum=a^b^cin;
assign carry=a&b | b&cin | a&cin;

endmodule
