module unknown (p,a,b,c);
output p;
input a,b,c;
wire q,r;

assign q=!((!a)&&b&&(!c));
assign r=!(a&&(!b)&&(!c));
and g1(p,q,r);

endmodule 
