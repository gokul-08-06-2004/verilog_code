module compare_tb();

reg [3:0]a;
wire [1:0]y_case;
wire [1:0]y_casex;
wire [1:0]y_casez;

compare dut(a,y_case,y_casex,y_casez);

initial begin
$monitor("Time=%0t a=%b case=%b casex=%b casez=%b",$time,a,y_case,y_casex,y_casez);
$dumpfile("compare.vcd");
$dumpvars();

a=4'b0000;#10
a=4'b0001;#10
a=4'b001x;#10

$finish;
end
endmodule 
