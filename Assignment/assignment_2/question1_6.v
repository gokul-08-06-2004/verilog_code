module nor_gate(input a,b,output y);

supply1 vdd;
supply0 gnd;

wire n1;

pmos (n1,vdd,a);
pmos (y,n1,b);

nmos (y,gnd,a);
nmos (y,gnd,b);

endmodule
