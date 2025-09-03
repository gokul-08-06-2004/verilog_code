module xnor_gate(input a,b,output y);
supply1 vdd;
supply0 gnd;

wire n1,n2,n3,n4,n5,n6;

pmos (n1,vdd,a);
nmos (n1,gnd,a);

pmos (n2,vdd,b);
nmos (n2,gnd,b);

pmos (n3,vdd,a);
pmos (n3,vdd,b);
pmos (n6,n3,n1);
pmos (n6,n3,n2);

nmos (n5,gnd,b);
nmos (n4,gnd,n2);
nmos (n6,n5,a);
nmos (n6,n4,n1);

pmos (y,vdd,n6);
nmos (y,gnd,n6);

endmodule
