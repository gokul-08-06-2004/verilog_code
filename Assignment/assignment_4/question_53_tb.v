module greytobinary_tb();

reg [3:0]g;
wire [3:0]b;


greytobinary dut(g,b);

initial begin
$monitor("Time=%0t grey=%b binary=%b",$time,g,b);
$dumpfile("greytobinary.vcd");
$dumpvars();

g=4'b0101;#10
g=4'b1010;#10
g=4'b0111;#10

$finish;
end
endmodule
