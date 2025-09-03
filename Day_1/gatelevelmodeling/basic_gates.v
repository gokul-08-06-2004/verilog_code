module basic_gates(input a,b, output y1,y2,y3,y4,y5,y6,y7);

not (y1,a);
and (y2,a,b);
or (y3,a,b);
nand (y4,a,b);
nor (y5,a,b);
xor (y6,a,b);
xnor (y7,a,b);

endmodule

