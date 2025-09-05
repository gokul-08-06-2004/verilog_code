//19.Combinational UDP for AND
//Write and simulate a UDP for 2-input AND gate.

primitive and_udp( y,a,b);
output y;
input a,b;
table

a b : y
0 0 : 0;
0 1 : 0;
1 0 : 0;
1 1 : 1;

endtable	
endprimitive

