module nand_gate(input a,b,output y);

supply1 vdd;
supply0 gnd;

pmos (y,vdd,a);
pmos (y,vdd,b);

nmos (y,w,a);
nmos (w,gnd,b);

endmodule
