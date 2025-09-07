module comparator_3bit(input [2:0]a,b,output lt,eq,gt);

assign lt=a<b;
assign eq=a==b;
assign gt=a>b;

endmodule
