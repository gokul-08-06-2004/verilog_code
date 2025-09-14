module mux_tb();

reg [7:0]a,b;
reg sel;
wire [7:0]y;

mux dut(a,b,sel,y);

initial begin 
$monitor("Time=%0t a=%b b=%b sel=%b y=%b",$time,a,b,sel,y);
a=8'b00110101; b=8'b11110000;
sel=0;#10
sel=1;#10
sel=0;#10
$finish;
end
endmodule
