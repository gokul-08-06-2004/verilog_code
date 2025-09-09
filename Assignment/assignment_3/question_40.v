module executing_code();
reg [3:0]x;
initial begin 
x=4'b0011;
fork
#5x=x+1;
#10x=x+2;
join
end
initial begin
$display ("x=%b",x);
end
endmodule 
