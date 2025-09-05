//17.CMOS Inverter with NMOS/PMOS
//Implement a CMOS inverter using supply1, supply0, nmos, pmos.

module inverter(input a,output y);
supply0 gnd;
supply1 vdd;

pmos(y,vdd,a);
nmos(y,gnd,a);

endmodule
