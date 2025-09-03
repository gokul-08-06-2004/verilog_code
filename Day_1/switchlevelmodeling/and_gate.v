module and_gate(input a,b,output x);


supply1 vdd;
supply0 gnd;
wire w,y;

pmos(y,vdd,a);
pmos(y,vdd,b);
nmos(y,w,a);
nmos(w,gnd,b);
pmos(x,vdd,y);
nmos(x,gnd,y);

endmodule

