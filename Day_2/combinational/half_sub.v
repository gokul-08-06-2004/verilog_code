module half_sub(input a,b,output diff,barrow);

assign diff=a^b;
assign barrow=~a&b;

endmodule



