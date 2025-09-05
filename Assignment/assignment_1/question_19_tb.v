module and_udp_tb;

reg a,b;
wire y;

and_udp dut(.a(a),.b(b),.y(y));

initial begin

$mointor("a=%b | b=%b | y=%b",a,b,y);
$dumpfile(and.vcd);
$dumpvars();

a=0; b=0; #10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10

$finish;
end 
endmodule
