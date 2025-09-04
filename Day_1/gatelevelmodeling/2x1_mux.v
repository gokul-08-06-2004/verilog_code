module mux_2x1(input i0,i1,s, output y);
wire n1,n2,n3; 

not (n1,s);
and (n2,i0,n1);
and (n3,i1,s);
or (y,n2,n3);

endmodule
