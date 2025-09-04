//3. Net Types Exploration
//Write a Verilog module using:
//• wand, wor, tri, triand
//• Drive them using assign and simulate with #delay and $monitor.


module net_types();

wand a;
wor b;
tri c;
triand d;

assign a=0;
assign #10 a=1;

assign b=1;
assign #10 b=0;

assign c=0;
assign #10 c=1;

assign d=0; 
assign #10 d=1;

initial begin 

$monitor("a=%b |b=%b | c=%b | d=%b",a,b,c,d);

#10
$finish;
end
endmodule
