module half_substractor(input a,b,output diff,barrow);
wire n1;
xor (diff,a,b);
not (n1,a);
and (barrow,n1,b);

endmodule
