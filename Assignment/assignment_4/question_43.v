module multiple_input (input en,input [3:0]a,output y);

always@(*)beign 
if(!en)
y=2'b00;
else if(a[3])
y=2'b11;
else if(a[2])
y=2'b10;
else if(a[1])
y=2'b01;
else if(a[0])
y=2'b00;
else
y=2'b00;
end
endmodule
