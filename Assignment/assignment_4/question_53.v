module greytobinary #(parameter N=4)(input [N-1:0]g,output [N-1:0]b);

assign b[N-1]=g[N-1];

genvar i;
generate
for(i=N-2;i>=0;i=i-1)begin:gen_loop
assign b[i]=b[i+1]^g[i];
end
endgenerate
endmodule
