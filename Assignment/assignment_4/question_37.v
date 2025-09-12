//37. Implement a 2:1 multiplexer using if statement.

module mux_2x1(input sel,input [1:0]i,output reg y);

always@(*)begin

if(sel==0)
y=i[0];
else
y=i[1];
end
endmodule
