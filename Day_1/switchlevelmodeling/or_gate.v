module or_gate(input a,b,output y);

wire n1,n2;

supply1 vdd;
supply0 gnd;

pmos(n1,vdd,a);
pmos(n2,n1,b);

nmos(n2,gnd,a);
nmos(n2,gnd,b);

pmos(y,vdd,n2);
nmos(y,gnd,n2);

endmodule
