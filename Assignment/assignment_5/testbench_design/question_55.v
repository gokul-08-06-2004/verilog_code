//55. Design a testbench using a task to apply input patterns to a 4-bit adder.

module full_adder_4bit(input [3:0]a,b,input cin,output [3:0]sum,output carry);

assign {carry,sum}=a+b+cin;

endmodule
