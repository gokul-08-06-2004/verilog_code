


module mux_2x1_tb;
reg i0,i1,s;
wire y;

mux_2x1 dut(i0,i1,s,y);

initial begin

$monitor("s=%b | i0=%b | i1=%b | output=%b",s,i0,i1,y);
$dumpfile("mux.vcd");
$dumpvars();

i0=0; i1=0; s=0;#10
i0=0; i1=1; s=0;#10
i0=1; i1=0; s=1;#10
i0=1; i1=1; s=1;#10

$finish;
end
endmodule
