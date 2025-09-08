//6. Implement a 4-bit two’s complement adder using the expression:
//assign t = y ^ {4{c_in}}; assign {c_out, sum} = x + t + c_in;

module twocomplement(input [3:0]x,y,input cin,output [3:0]sum,output c_out);
wire [3:0]t;

assign t = y ^ {4{cin}};
assign {c_out, sum} = x + t + cin;

endmodule
