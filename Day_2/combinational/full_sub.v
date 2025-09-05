module full_sub(input a,b,c,output diff,barrow);

assign diff=a^b^c;
assign barrow=(~a&b)|(~a&c)|(b&c);

endmodule
