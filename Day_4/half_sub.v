module half_sub(input a,b,output reg diff,barrow);

always@(a or b )begin
diff = a^b;
barrow = ^a&b;

end
endmodule
