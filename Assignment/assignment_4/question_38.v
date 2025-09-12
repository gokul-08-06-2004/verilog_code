//38. Extend the above to 4:1 mux using nested if...else.

module mux_4x1(input [1:0]s,input [3:0]i,output reg y);

always@(*)begin

if(s==2'b00)
y=i[0];
else if(s==2'b01)
y=i[1];
else if(s==2'b10)
y=i[2];
else 
y=i[3];
end
endmodule 
