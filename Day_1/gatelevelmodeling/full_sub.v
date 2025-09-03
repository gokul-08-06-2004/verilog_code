module full_sub(input a,b,c ,output diff,barrow);

xor (diff,a,b,c);

not (n1,a);
and (n2,n1,c);
and (n3,n1,b);
and (n4,b,c);
or (barrow,n2,n3,n4);

endmodule
