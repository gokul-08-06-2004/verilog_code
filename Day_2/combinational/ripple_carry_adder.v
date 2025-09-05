module full_adder(input a,b,c,output s,carry);

assign s=a^b^c;
assign carry=a&b|b&c|a&c;

endmodule

module 	ripplecarry_adder(input [3:0]a,b,input c, output [3:0]s,carry);

full_adder fa1(.a(a[0]),.b(b[0]),.c(c),.s(s[0]),.carry(carry[0]));
full_adder fa2(.a(a[1]),.b(b[1]),.c(carry[0]),.s(s[1]),.carry(carry[1]));
full_adder fa3(.a(a[2]),.b(b[2]),.c(carry[1]),.s(s[2]),.carry(carry[2]));
full_adder fa4(.a(a[3]),.b(b[3]),.c(carry[2]),.s(s[3]),.carry(carry[3]));

endmodule


