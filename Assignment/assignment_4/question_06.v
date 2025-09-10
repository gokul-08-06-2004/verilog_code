//6. Implement a module that uses initial for setup and always for functional updates.

module functional_update();
reg clock;
reg [2:0]x;

initial begin
$monitor("clock=%b x=%b",clock,x);

clock=0;
x=3'b000;	

end

always 
#10 clock=~clock;
always @(posedge clock)
begin
x=x+1;
end
endmodule
