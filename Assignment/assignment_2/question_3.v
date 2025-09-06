//4. Multiplexer (8 to 1 mux)
//a. Implement 8 to 1 mux using 4 to 1 mux
//b. Write testbench to check design behaviour

module mux_4x1(input s0,s1,i0,i1,i2,i3,output y);

wire w1,w2,w3,w4,w5,w6;

not (w1,s0);
not (w2,s1);

and (w3,w1,w2,i0);
and (w4,w1,s1,i1);
and (w5,s0,w2,i2);
and (w6,s0,s1,i3);

or (y,w3,w4,w5,w6);
endmodule

module mux_2x1(input s,i0,i1,output y);

wire w1,w2,w3;

not (w1,s);

and (w2,w1,i0);
and (w3,s,i1);

or (y,w2,w3);

endmodule

module mux_8x1(input s0,s1,s2,input i0,i1,i2,i3,i4,i5,i6,i7,output y);

wire w1,w2;

mux_4x1 m1(.s0(s0),.s1(s1),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.y(w1));
mux_4x1 m2(.s0(s0),.s1(s1),.i0(i4),.i1(i5),.i2(i6),.i3(i7),.y(w2));

mux_2x1 m3(.s(s2),.i0(w1),.i1(w2),.y(y));

endmodule
