//5. Create a 4-bit full adder using only assign statement:
//assign {c_out, sum} = a + b + c_in;

module full_adder_4bit(input [3:0]a,b,input cin,output [3:0]sum,output c_out);

assign {c_out,sum}=a+b+cin;

endmodule
