//3. Design a full adder using a half adder.

module full_adder(input a,b,c ,output sum,carry);

wire w1;

xor(w1,a,b);
xor(sum,w1,c);

and(w2,w1,c);
and(w3,a,b);

or(carry,w2,w3);

endmodule
