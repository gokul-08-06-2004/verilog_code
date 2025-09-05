module mux_8x1(input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,output y);

assign y=(s0)?((s1)?((s2)?i7:i6):((s2)?i5:i4)):((s1)?((s2)?i3:i2):((s2)?i1:i0));

endmodule
