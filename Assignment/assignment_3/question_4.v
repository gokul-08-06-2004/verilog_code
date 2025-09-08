//4. Implement the following bitwise operations in a module and display the result:
//• ~x, x & y, x | y, x ^ y, x ^~ y

module bitwise(input x,y,output [4:0]z);

assign z[0]=~x;
assign z[1]=x&y;
assign z[2]=x|y;
assign z[3]=x^y;
assign z[4]=x^~y;

endmodule
