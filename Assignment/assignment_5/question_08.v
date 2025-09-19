//8. Design a task that accepts an 8-bit input and outputs its binary reversed form.

module example;
reg [7:0]in;
reg [7:0]rev;
integer i;
task reverse(input [7:0]in, output [7:0]rev);
begin

for(i=0;i<8;i=i+1)
rev[7-i]=in[i];
end
endtask

initial begin

in=8'b00001111;
reverse(in,rev);
$display("in=%b reverse=%b",in,rev);

end
endmodule
