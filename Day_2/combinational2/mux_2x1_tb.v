module mux_2x1_tb;

reg sel,i0,i1;
wire y;

mux_2x1 dut(.sel(sel),.i0(i0),.i1(i1),.y(y));

initial begin 

$monitor("sel=%b | i0=%b | i1=%b | y=%b",sel,i0,i1,y);
$dumpfile("mux.vcd");
$dumpvars();

i0=0; i1=0; sel=0;#10
i0=0; i1=1; sel=0;#10
i0=1; i1=0; sel=1;#10
i0=1; i1=1; sel=1;#10

$finish;
end
endmodule
