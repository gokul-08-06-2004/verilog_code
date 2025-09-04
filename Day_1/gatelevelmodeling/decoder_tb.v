module decoder_tb;
reg a,b;
wire y0,y1,y2,y3;

decoder dut(a,b,y0,y1,y2,y3);

initial begin
$monitor("a=%b | b=%b | y0=%b | y1=%b | y2=%b | y3=%b",a,b,y0,y1,y2,y3);
$dumpfile("decoder.vcd");
$dumpvars();

a=0; b=0; #10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10

$finish;
end 
endmodule

