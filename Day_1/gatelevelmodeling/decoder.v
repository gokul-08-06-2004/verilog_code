module decoder(input a,b, output y0,y1,y2,y3);
wire n1,n2;

not (n1,a);
not (n2,b);

and (y0,n1,n2);
and (y1,n1,b);
and (y2,a,n2);
and (y3,a,b);

endmodule
