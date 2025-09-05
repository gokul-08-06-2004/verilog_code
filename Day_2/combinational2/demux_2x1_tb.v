module demux_2x1_tb;
reg i,sel;
wire [1:0]y;

demux_2x1 dut(.i(i),.sel(sel),.y(y));

initial begin
$monitor("i=%b | sel=%b | y[0]=%b | y[1]=%b",i,sel,y[0],y[1]);
$dumpfile("demux.vcd");
$dumpvars();

i=1; 
sel=0;#10
i=1;
sel=1;#10

$finish;
end
endmodule
