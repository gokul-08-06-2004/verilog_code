module decoder_3x8_tb;
reg en;
reg [2:0]a;
wire [7:0]y;

decoder_3x8 dut(en,a,y);
initial begin
$monitor("en=%b a=%b y=%b ",en,a,y);
$dumpfile("decoder.vcd");
$dumpvars();

en=0; a=101;#10

en=1; a=000; #10
en=1; a=001; #10
en=1; a=010; #10
en=1; a=011; #10
en=1; a=100; #10
en=1; a=101; #10
en=1; a=110; #10
en=1; a=111; #10
$finish;
end 
endmodule
