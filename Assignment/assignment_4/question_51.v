module full_adder(input a,b,c,output  sum,carry);

assign sum=a^b^c;
assign carry=(a&b)|(c&(a^b));

endmodule

module ripple_carry_adder(input [3:0]a,b,input c,output [3:0]sum,output c_out);
wire [4:0]carry;
assign carry[0]=c;
assign c_out=carry[4];
genvar i;
generate 
for(i=0; i<4; i=i+1)begin:fa_loop
full_adder fa_inst(.a(a[i]),.b(b[i]),.c(carry[i]),.sum(sum[i]),.carry(carry[i+1]));
end
endgenerate
endmodule 
