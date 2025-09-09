module console();
reg [13*8:1]s;
initial begin
s="hellow world";
$display("Value of s=%s",s[104:65]);
end
endmodule
