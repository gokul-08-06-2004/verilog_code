//1. Design a 2-bit comparator using basic gates (AND, OR, NOT) to compare two 2-bit
//numbers A and B. The output should indicate if A == B, A > B, or A < B.

module comparator_2bit(input a,b,output x,y,z);

wire w1,w2; 
not(w1,b);
not(w2,a);
xnor(x,a,b);
and(y,a,w1);
and(z,w2,b);

endmodule
