module xor_gate(input a,b,output y);
supply1 vdd;
supply0 gnd;

wire n1,n2,n3,n4,n5;

pmos (n1,vdd,a);
nmos (n1,gnd,a);

pmos (n2,vdd,b);
nmos (n2,gnd,b);

pmos (n3,vdd,a);
pmos (n3,vdd,b);
pmos (y,n3,n1);
pmos (y,n3,n2);

nmos (n5,gnd,b);
nmos (n4,gnd,n2);
nmos (y,n5,a);
nmos (y,n4,n1);

endmodule
