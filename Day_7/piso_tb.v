module piso_tb;
reg clk,rst,load;
reg [3:0]din;
wire dout;

piso dut(clk,rst,load,din,dout);

initial begin
clk=0;
forever #5 clk=~clk;
end
always@(negedge clk)
$display("Time=%0t clk=%b rst=%b load=%b din=%b dout=%b",$time,clk,rst,load,din,dout);
initial begin
$dumpfile("piso.vcd");
$dumpvars();

rst=1;load=0;din=4'b0000;#10
rst=0;load=1;din=4'b1010;#10
load=0;#40

rst=0;load=1;din=4'b1100;#10
load=0;#20
$finish;
end
endmodule

