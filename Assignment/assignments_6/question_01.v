/*Design a FSM that has an input x and output y.the output should be asserted whenever x=1 or x=0 for three consecutive clock pulse .in other words,the FSM should detect the sequences 111 or 000.overlaping seq are allowed ,so a seq of four or five 0s or 1s should also output 1.*/

module three_consecutive_clock(input clk,rst,x,output reg y);
reg [1:0]p_state,nxt_state;
parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;

always@(posedge clk or posedge rst)begin
if(rst)
p_state<=s0;
else
p_state<=nxt_state;
end

always@(p_state or x)begin
y=0;
case(p_state)
s0:nxt_state=x?s1:s0;
s1:nxt_state=x?s2:s0;
s2:begin
if(x)begin
nxt_state=s2;
y=1;
end
else begin
nxt_state=s0;
y=0;
end
default:begin
nxt_state=s0;
y=0;
end
end
endcase
end
endmodule

//TestBench:

module three_consecutive_clock_tb;
reg clk,rst,x;
wire y;

three_consecutive_clock dut(clk,rst,x,y);

initial begin
clk=0;
forever #5 clk=~clk;
end

always@(posedge clk)
$display("Time=%0t rst=%b x=%b y=%b",$time,rst,x,y);
initial begin
$dumpfile("three_consecutive_clock.vcd");
$dumpvars();

rst=1;x=0;#10
rst=0;
x=1;#10
x=1;#10
x=1;#10
x=1;#10
x=1;#10
x=1;#10
x=1;#10
x=1;#10
x=1;#10
x=1;#10
$finish;
end
endmodule

