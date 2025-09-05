module tristate_tb;
reg i0,i1,s;
wire x;

tristate_2x1_mux dut(i0,i1,s,x);

initial begin

$monitor("i0=%b i1=%b s=%b x=%b",i0,i1,s,x);
$dumpfile("tristate.vcd");
$dumpvars();

i0=0; i1=0; s=0;#10
i0=0; i1=1; s=0;#10
i0=1; i1=0; s=1;#10
i0=1; i1=1; s=1;#10

$finish;
end
endmodule
