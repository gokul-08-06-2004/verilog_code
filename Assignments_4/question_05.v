//5. Design a clock generator using initial and forever loop.

module clok;
reg clock;

initial begin
clock=0;
forever #5 clock=~clock;
end
endmodule
