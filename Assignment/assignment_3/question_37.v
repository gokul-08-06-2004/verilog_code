module basic_gates(input  a,b,output [5:0]y);

assign y[0]=a?b:1'b0;//and 
assign y[1]=a?1'b1:b;//or
assign y[2]=~(a?b:1'b0);//nand
assign y[3]=~(a?1'b1:b);//nor
assign y[4]=a?~b:b;//xor
assign y[5]=a?b:~b;//xnor

endmodule


