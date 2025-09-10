module full_sub__tb;
  reg a,b,bin;
  wire d,bout;
  full_sub uut(.a(a),.b(b),.bin(bin),.d(d),.bout(bout));
  initial begin
  $monitor("a=%b b=%b c=%b diff=%b barrow=%b ",a,b,bin,d,bout);
  $dumpfile("full_sub.vcd");
  $dumpvars();

    a=0;b=0;bin=0;#5;
    a=0;b=0;bin=1;#5;
    a=0;b=1;bin=0;#5;
    a=0;b=1;bin=1;#5;
    a=1;b=0;bin=0;#5;
    a=1;b=0;bin=1;#5;
    a=1;b=1;bin=0;#5;
    a=1;b=1;bin=1;#5;
    $finish;
  end
  endmodule
