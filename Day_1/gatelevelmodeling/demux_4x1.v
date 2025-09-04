module demux_4x1(input s0,s1,i,output y0,y1,y2,y3);
wire n1,n2;

not (n1,s0);
not (n2,s1);

and (y0,n1,n2,i);
and (y1,n1,s1,i);
and (y2,s0,n2,i);
and (y3,s0,s1,i);

endmodule
