//16.Tristate 2:1 MUX
//Use bufif0 and bufif1 to design and test.


module tristate_2x1_mux(input i0,i1,s,output x);

bufif1 (x,i0,~s);

bufif1 (x,i1,s);



endmodule

